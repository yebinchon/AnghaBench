; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_get_resync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_get_resync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_device = type { i64, i64, i32 }
%struct.myrb_hba = type { i32 }
%struct.myrb_rbld_progress = type { i64, i32, i32 }

@MYRB_STATUS_SUCCESS = common dso_local global i16 0, align 2
@myrb_raid_template = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @myrb_get_resync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrb_get_resync(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.myrb_hba*, align 8
  %5 = alloca %struct.myrb_rbld_progress, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call %struct.scsi_device* @to_scsi_device(%struct.device* %10)
  store %struct.scsi_device* %11, %struct.scsi_device** %3, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.myrb_hba* @shost_priv(i32 %14)
  store %struct.myrb_hba* %15, %struct.myrb_hba** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @myrb_logical_channel(i32 %21)
  %23 = icmp slt i64 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %64

25:                                               ; preds = %1
  %26 = load %struct.myrb_hba*, %struct.myrb_hba** %4, align 8
  %27 = call zeroext i16 @myrb_get_rbld_progress(%struct.myrb_hba* %26, %struct.myrb_rbld_progress* %5)
  store i16 %27, i16* %7, align 2
  %28 = load i16, i16* %7, align 2
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* @MYRB_STATUS_SUCCESS, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.myrb_rbld_progress, %struct.myrb_rbld_progress* %5, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.myrb_rbld_progress, %struct.myrb_rbld_progress* %5, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %8, align 4
  %43 = getelementptr inbounds %struct.myrb_rbld_progress, %struct.myrb_rbld_progress* %5, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %40, %33
  br label %46

46:                                               ; preds = %45, %25
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sub i32 %53, %54
  %56 = mul i32 %55, 100
  %57 = load i32, i32* %8, align 4
  %58 = udiv i32 %56, %57
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %52, %49, %46
  %60 = load i32, i32* @myrb_raid_template, align 4
  %61 = load %struct.device*, %struct.device** %2, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @raid_set_resync(i32 %60, %struct.device* %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %24
  ret void
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.myrb_hba* @shost_priv(i32) #1

declare dso_local i64 @myrb_logical_channel(i32) #1

declare dso_local zeroext i16 @myrb_get_rbld_progress(%struct.myrb_hba*, %struct.myrb_rbld_progress*) #1

declare dso_local i32 @raid_set_resync(i32, %struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
