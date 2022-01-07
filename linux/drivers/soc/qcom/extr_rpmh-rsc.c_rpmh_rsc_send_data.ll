; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c_rpmh_rsc_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c_rpmh_rsc_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsc_drv = type { i32 }
%struct.tcs_request = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_RPMH_PAYLOAD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"TCS Busy, retrying RPMH message send: addr=%#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpmh_rsc_send_data(%struct.rsc_drv* %0, %struct.tcs_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsc_drv*, align 8
  %5 = alloca %struct.tcs_request*, align 8
  %6 = alloca i32, align 4
  store %struct.rsc_drv* %0, %struct.rsc_drv** %4, align 8
  store %struct.tcs_request* %1, %struct.tcs_request** %5, align 8
  %7 = load %struct.tcs_request*, %struct.tcs_request** %5, align 8
  %8 = icmp ne %struct.tcs_request* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.tcs_request*, %struct.tcs_request** %5, align 8
  %11 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load %struct.tcs_request*, %struct.tcs_request** %5, align 8
  %16 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.tcs_request*, %struct.tcs_request** %5, align 8
  %21 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MAX_RPMH_PAYLOAD, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19, %14, %9, %2
  %26 = call i32 @WARN_ON(i32 1)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %55

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %48, %29
  %31 = load %struct.rsc_drv*, %struct.rsc_drv** %4, align 8
  %32 = load %struct.tcs_request*, %struct.tcs_request** %5, align 8
  %33 = call i32 @tcs_write(%struct.rsc_drv* %31, %struct.tcs_request* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %30
  %39 = load %struct.tcs_request*, %struct.tcs_request** %5, align 8
  %40 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = call i32 @udelay(i32 10)
  br label %47

47:                                               ; preds = %38, %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %30, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %25
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @tcs_write(%struct.rsc_drv*, %struct.tcs_request*) #1

declare dso_local i32 @pr_info_ratelimited(i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
