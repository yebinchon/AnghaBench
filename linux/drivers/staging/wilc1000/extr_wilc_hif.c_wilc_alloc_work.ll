; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_alloc_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_alloc_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_if_msg = type { void (%struct.work_struct*)*, i32, i32, %struct.wilc_vif* }
%struct.work_struct = type opaque
%struct.wilc_vif = type { i32 }
%struct.work_struct.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.host_if_msg* (%struct.wilc_vif*, void (%struct.work_struct.0*)*, i32)* @wilc_alloc_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.host_if_msg* @wilc_alloc_work(%struct.wilc_vif* %0, void (%struct.work_struct.0*)* %1, i32 %2) #0 {
  %4 = alloca %struct.host_if_msg*, align 8
  %5 = alloca %struct.wilc_vif*, align 8
  %6 = alloca void (%struct.work_struct.0*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.host_if_msg*, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %5, align 8
  store void (%struct.work_struct.0*)* %1, void (%struct.work_struct.0*)** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load void (%struct.work_struct.0*)*, void (%struct.work_struct.0*)** %6, align 8
  %10 = icmp ne void (%struct.work_struct.0*)* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.host_if_msg* @ERR_PTR(i32 %13)
  store %struct.host_if_msg* %14, %struct.host_if_msg** %4, align 8
  br label %43

15:                                               ; preds = %3
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.host_if_msg* @kzalloc(i32 24, i32 %16)
  store %struct.host_if_msg* %17, %struct.host_if_msg** %8, align 8
  %18 = load %struct.host_if_msg*, %struct.host_if_msg** %8, align 8
  %19 = icmp ne %struct.host_if_msg* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.host_if_msg* @ERR_PTR(i32 %22)
  store %struct.host_if_msg* %23, %struct.host_if_msg** %4, align 8
  br label %43

24:                                               ; preds = %15
  %25 = load void (%struct.work_struct.0*)*, void (%struct.work_struct.0*)** %6, align 8
  %26 = bitcast void (%struct.work_struct.0*)* %25 to void (%struct.work_struct*)*
  %27 = load %struct.host_if_msg*, %struct.host_if_msg** %8, align 8
  %28 = getelementptr inbounds %struct.host_if_msg, %struct.host_if_msg* %27, i32 0, i32 0
  store void (%struct.work_struct*)* %26, void (%struct.work_struct*)** %28, align 8
  %29 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %30 = load %struct.host_if_msg*, %struct.host_if_msg** %8, align 8
  %31 = getelementptr inbounds %struct.host_if_msg, %struct.host_if_msg* %30, i32 0, i32 3
  store %struct.wilc_vif* %29, %struct.wilc_vif** %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.host_if_msg*, %struct.host_if_msg** %8, align 8
  %34 = getelementptr inbounds %struct.host_if_msg, %struct.host_if_msg* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load %struct.host_if_msg*, %struct.host_if_msg** %8, align 8
  %39 = getelementptr inbounds %struct.host_if_msg, %struct.host_if_msg* %38, i32 0, i32 2
  %40 = call i32 @init_completion(i32* %39)
  br label %41

41:                                               ; preds = %37, %24
  %42 = load %struct.host_if_msg*, %struct.host_if_msg** %8, align 8
  store %struct.host_if_msg* %42, %struct.host_if_msg** %4, align 8
  br label %43

43:                                               ; preds = %41, %20, %11
  %44 = load %struct.host_if_msg*, %struct.host_if_msg** %4, align 8
  ret %struct.host_if_msg* %44
}

declare dso_local %struct.host_if_msg* @ERR_PTR(i32) #1

declare dso_local %struct.host_if_msg* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
