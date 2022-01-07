; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c_rpmh_rsc_write_ctrl_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c_rpmh_rsc_write_ctrl_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsc_drv = type { i32 }
%struct.tcs_request = type { i64, i64, i32 }

@MAX_RPMH_PAYLOAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Payload error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RPMH_ACTIVE_ONLY_STATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpmh_rsc_write_ctrl_data(%struct.rsc_drv* %0, %struct.tcs_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsc_drv*, align 8
  %5 = alloca %struct.tcs_request*, align 8
  store %struct.rsc_drv* %0, %struct.rsc_drv** %4, align 8
  store %struct.tcs_request* %1, %struct.tcs_request** %5, align 8
  %6 = load %struct.tcs_request*, %struct.tcs_request** %5, align 8
  %7 = icmp ne %struct.tcs_request* %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load %struct.tcs_request*, %struct.tcs_request** %5, align 8
  %10 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load %struct.tcs_request*, %struct.tcs_request** %5, align 8
  %15 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.tcs_request*, %struct.tcs_request** %5, align 8
  %20 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MAX_RPMH_PAYLOAD, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18, %13, %8, %2
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %41

28:                                               ; preds = %18
  %29 = load %struct.tcs_request*, %struct.tcs_request** %5, align 8
  %30 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RPMH_ACTIVE_ONLY_STATE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %28
  %38 = load %struct.rsc_drv*, %struct.rsc_drv** %4, align 8
  %39 = load %struct.tcs_request*, %struct.tcs_request** %5, align 8
  %40 = call i32 @tcs_ctrl_write(%struct.rsc_drv* %38, %struct.tcs_request* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %34, %24
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @tcs_ctrl_write(%struct.rsc_drv*, %struct.tcs_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
