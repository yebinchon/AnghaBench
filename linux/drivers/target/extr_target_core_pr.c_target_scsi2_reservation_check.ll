; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_target_scsi2_reservation_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_target_scsi2_reservation_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32*, %struct.se_session*, %struct.se_device* }
%struct.se_session = type { i64, i64 }
%struct.se_device = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TCM_RESERVATION_CONFLICT = common dso_local global i32 0, align 4
@DRF_SPC2_RESERVATIONS_WITH_ISID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @target_scsi2_reservation_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_scsi2_reservation_check(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca %struct.se_session*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %6 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %6, i32 0, i32 2
  %8 = load %struct.se_device*, %struct.se_device** %7, align 8
  store %struct.se_device* %8, %struct.se_device** %4, align 8
  %9 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %10 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %9, i32 0, i32 1
  %11 = load %struct.se_session*, %struct.se_session** %10, align 8
  store %struct.se_session* %11, %struct.se_session** %5, align 8
  %12 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %18 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %17
  ]

17:                                               ; preds = %1, %1, %1
  store i32 0, i32* %2, align 4
  br label %59

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.se_device*, %struct.se_device** %4, align 8
  %21 = getelementptr inbounds %struct.se_device, %struct.se_device* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.se_session*, %struct.se_session** %5, align 8
  %26 = icmp ne %struct.se_session* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %19
  store i32 0, i32* %2, align 4
  br label %59

28:                                               ; preds = %24
  %29 = load %struct.se_device*, %struct.se_device** %4, align 8
  %30 = getelementptr inbounds %struct.se_device, %struct.se_device* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.se_session*, %struct.se_session** %5, align 8
  %35 = getelementptr inbounds %struct.se_session, %struct.se_session* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @TCM_RESERVATION_CONFLICT, align 4
  store i32 %39, i32* %2, align 4
  br label %59

40:                                               ; preds = %28
  %41 = load %struct.se_device*, %struct.se_device** %4, align 8
  %42 = getelementptr inbounds %struct.se_device, %struct.se_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DRF_SPC2_RESERVATIONS_WITH_ISID, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load %struct.se_device*, %struct.se_device** %4, align 8
  %49 = getelementptr inbounds %struct.se_device, %struct.se_device* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.se_session*, %struct.se_session** %5, align 8
  %52 = getelementptr inbounds %struct.se_session, %struct.se_session* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @TCM_RESERVATION_CONFLICT, align 4
  store i32 %56, i32* %2, align 4
  br label %59

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %40
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %55, %38, %27, %17
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
