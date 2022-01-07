; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_get_resync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_get_resync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_device = type { i64, %struct.myrs_ldev_info*, i32 }
%struct.myrs_ldev_info = type { i16, i32, i32, i64 }
%struct.myrs_hba = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@myrs_raid_template = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @myrs_get_resync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrs_get_resync(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.myrs_hba*, align 8
  %5 = alloca %struct.myrs_ldev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.scsi_device* @to_scsi_device(%struct.device* %9)
  store %struct.scsi_device* %10, %struct.scsi_device** %3, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.myrs_hba* @shost_priv(i32 %13)
  store %struct.myrs_hba* %14, %struct.myrs_hba** %4, align 8
  %15 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %15, i32 0, i32 1
  %17 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %16, align 8
  store %struct.myrs_ldev_info* %17, %struct.myrs_ldev_info** %5, align 8
  store i32 0, i32* %6, align 4
  %18 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.myrs_hba*, %struct.myrs_hba** %4, align 8
  %22 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %20, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %5, align 8
  %29 = icmp ne %struct.myrs_ldev_info* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %1
  br label %58

31:                                               ; preds = %27
  %32 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %5, align 8
  %33 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %5, align 8
  %38 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %37, i32 0, i32 0
  %39 = load i16, i16* %38, align 8
  store i16 %39, i16* %8, align 2
  %40 = load %struct.myrs_hba*, %struct.myrs_hba** %4, align 8
  %41 = load i16, i16* %8, align 2
  %42 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %5, align 8
  %43 = call i32 @myrs_get_ldev_info(%struct.myrs_hba* %40, i16 zeroext %41, %struct.myrs_ldev_info* %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %5, align 8
  %45 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 100
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %5, align 8
  %50 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @do_div(i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %36, %31
  %54 = load i32, i32* @myrs_raid_template, align 4
  %55 = load %struct.device*, %struct.device** %2, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @raid_set_resync(i32 %54, %struct.device* %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %30
  ret void
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.myrs_hba* @shost_priv(i32) #1

declare dso_local i32 @myrs_get_ldev_info(%struct.myrs_hba*, i16 zeroext, %struct.myrs_ldev_info*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @raid_set_resync(i32, %struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
