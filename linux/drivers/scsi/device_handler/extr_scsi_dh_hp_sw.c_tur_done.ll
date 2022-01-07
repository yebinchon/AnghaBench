; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_tur_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_tur_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.hp_sw_dh_data = type { i32 }
%struct.scsi_sense_hdr = type { i32, i32, i32 }

@SCSI_DH_IO = common dso_local global i32 0, align 4
@SCSI_DH_IMM_RETRY = common dso_local global i32 0, align 4
@HP_SW_PATH_PASSIVE = common dso_local global i32 0, align 4
@SCSI_DH_OK = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: sending tur failed, sense %x/%x/%x\0A\00", align 1
@HP_SW_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.hp_sw_dh_data*, %struct.scsi_sense_hdr*)* @tur_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tur_done(%struct.scsi_device* %0, %struct.hp_sw_dh_data* %1, %struct.scsi_sense_hdr* %2) #0 {
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.hp_sw_dh_data*, align 8
  %6 = alloca %struct.scsi_sense_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.hp_sw_dh_data* %1, %struct.hp_sw_dh_data** %5, align 8
  store %struct.scsi_sense_hdr* %2, %struct.scsi_sense_hdr** %6, align 8
  %8 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %6, align 8
  %10 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %30 [
    i32 128, label %12
    i32 129, label %14
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @SCSI_DH_IMM_RETRY, align 4
  store i32 %13, i32* %7, align 4
  br label %44

14:                                               ; preds = %3
  %15 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %6, align 8
  %16 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %6, align 8
  %21 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* @HP_SW_PATH_PASSIVE, align 4
  %26 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %27 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %28, i32* %7, align 4
  br label %44

29:                                               ; preds = %19, %14
  br label %30

30:                                               ; preds = %3, %29
  %31 = load i32, i32* @KERN_WARNING, align 4
  %32 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %33 = load i32, i32* @HP_SW_NAME, align 4
  %34 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %6, align 8
  %35 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %6, align 8
  %38 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %6, align 8
  %41 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sdev_printk(i32 %31, %struct.scsi_device* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %30, %24, %12
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
