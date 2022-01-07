; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c_get_tcs_for_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c_get_tcs_for_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcs_group = type { i64 }
%struct.rsc_drv = type { i32 }
%struct.tcs_request = type { i32 }

@ACTIVE_TCS = common dso_local global i32 0, align 4
@WAKE_TCS = common dso_local global i32 0, align 4
@SLEEP_TCS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcs_group* (%struct.rsc_drv*, %struct.tcs_request*)* @get_tcs_for_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcs_group* @get_tcs_for_msg(%struct.rsc_drv* %0, %struct.tcs_request* %1) #0 {
  %3 = alloca %struct.tcs_group*, align 8
  %4 = alloca %struct.rsc_drv*, align 8
  %5 = alloca %struct.tcs_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcs_group*, align 8
  store %struct.rsc_drv* %0, %struct.rsc_drv** %4, align 8
  store %struct.tcs_request* %1, %struct.tcs_request** %5, align 8
  %9 = load %struct.tcs_request*, %struct.tcs_request** %5, align 8
  %10 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %18 [
    i32 130, label %12
    i32 128, label %14
    i32 129, label %16
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @ACTIVE_TCS, align 4
  store i32 %13, i32* %6, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load i32, i32* @WAKE_TCS, align 4
  store i32 %15, i32* %6, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @SLEEP_TCS, align 4
  store i32 %17, i32* %6, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.tcs_group* @ERR_PTR(i32 %20)
  store %struct.tcs_group* %21, %struct.tcs_group** %3, align 8
  br label %55

22:                                               ; preds = %16, %14, %12
  %23 = load %struct.rsc_drv*, %struct.rsc_drv** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.tcs_group* @get_tcs_of_type(%struct.rsc_drv* %23, i32 %24)
  store %struct.tcs_group* %25, %struct.tcs_group** %8, align 8
  %26 = load %struct.tcs_request*, %struct.tcs_request** %5, align 8
  %27 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 130
  br i1 %29, label %30, label %53

30:                                               ; preds = %22
  %31 = load %struct.tcs_group*, %struct.tcs_group** %8, align 8
  %32 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %30
  %36 = load %struct.rsc_drv*, %struct.rsc_drv** %4, align 8
  %37 = load i32, i32* @WAKE_TCS, align 4
  %38 = call %struct.tcs_group* @get_tcs_of_type(%struct.rsc_drv* %36, i32 %37)
  store %struct.tcs_group* %38, %struct.tcs_group** %8, align 8
  %39 = load %struct.tcs_group*, %struct.tcs_group** %8, align 8
  %40 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load %struct.rsc_drv*, %struct.rsc_drv** %4, align 8
  %45 = call i32 @rpmh_rsc_invalidate(%struct.rsc_drv* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = call %struct.tcs_group* @ERR_PTR(i32 %49)
  store %struct.tcs_group* %50, %struct.tcs_group** %3, align 8
  br label %55

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %35
  br label %53

53:                                               ; preds = %52, %30, %22
  %54 = load %struct.tcs_group*, %struct.tcs_group** %8, align 8
  store %struct.tcs_group* %54, %struct.tcs_group** %3, align 8
  br label %55

55:                                               ; preds = %53, %48, %18
  %56 = load %struct.tcs_group*, %struct.tcs_group** %3, align 8
  ret %struct.tcs_group* %56
}

declare dso_local %struct.tcs_group* @ERR_PTR(i32) #1

declare dso_local %struct.tcs_group* @get_tcs_of_type(%struct.rsc_drv*, i32) #1

declare dso_local i32 @rpmh_rsc_invalidate(%struct.rsc_drv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
