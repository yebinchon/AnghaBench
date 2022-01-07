; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_hp_sw_tur.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_hp_sw_tur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.hp_sw_dh_data = type { i32 }
%struct.scsi_sense_hdr = type { i32 }

@TEST_UNIT_READY = common dso_local global i8 0, align 1
@SCSI_DH_OK = common dso_local global i32 0, align 4
@REQ_FAILFAST_DEV = common dso_local global i32 0, align 4
@REQ_FAILFAST_TRANSPORT = common dso_local global i32 0, align 4
@REQ_FAILFAST_DRIVER = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@HP_SW_TIMEOUT = common dso_local global i32 0, align 4
@HP_SW_RETRIES = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: sending tur failed with %x\0A\00", align 1
@HP_SW_NAME = common dso_local global i32 0, align 4
@SCSI_DH_IO = common dso_local global i32 0, align 4
@HP_SW_PATH_ACTIVE = common dso_local global i32 0, align 4
@SCSI_DH_IMM_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.hp_sw_dh_data*)* @hp_sw_tur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sw_tur(%struct.scsi_device* %0, %struct.hp_sw_dh_data* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.hp_sw_dh_data*, align 8
  %5 = alloca [6 x i8], align 1
  %6 = alloca %struct.scsi_sense_hdr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.hp_sw_dh_data* %1, %struct.hp_sw_dh_data** %4, align 8
  %10 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %11 = load i8, i8* @TEST_UNIT_READY, align 1
  store i8 %11, i8* %10, align 1
  %12 = getelementptr inbounds i8, i8* %10, i64 1
  %13 = getelementptr inbounds i8, i8* %10, i64 6
  br label %14

14:                                               ; preds = %14, %2
  %15 = phi i8* [ %12, %2 ], [ %16, %14 ]
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = icmp eq i8* %16, %13
  br i1 %17, label %18, label %14

18:                                               ; preds = %14
  %19 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @REQ_FAILFAST_DEV, align 4
  %21 = load i32, i32* @REQ_FAILFAST_TRANSPORT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @REQ_FAILFAST_DRIVER, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %59, %18
  %26 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %27 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %28 = load i32, i32* @DMA_NONE, align 4
  %29 = load i32, i32* @HP_SW_TIMEOUT, align 4
  %30 = load i32, i32* @HP_SW_RETRIES, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @scsi_execute(%struct.scsi_device* %26, i8* %27, i32 %28, i32* null, i32 0, i32* null, %struct.scsi_sense_hdr* %6, i32 %29, i32 %30, i32 %31, i32 0, i32* null)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %25
  %36 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %6)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %40 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %4, align 8
  %41 = call i32 @tur_done(%struct.scsi_device* %39, %struct.hp_sw_dh_data* %40, %struct.scsi_sense_hdr* %6)
  store i32 %41, i32* %7, align 4
  br label %49

42:                                               ; preds = %35
  %43 = load i32, i32* @KERN_WARNING, align 4
  %44 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %45 = load i32, i32* @HP_SW_NAME, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @sdev_printk(i32 %43, %struct.scsi_device* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %42, %38
  br label %55

50:                                               ; preds = %25
  %51 = load i32, i32* @HP_SW_PATH_ACTIVE, align 4
  %52 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %4, align 8
  %53 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %50, %49
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @SCSI_DH_IMM_RETRY, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %25

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @scsi_execute(%struct.scsi_device*, i8*, i32, i32*, i32, i32*, %struct.scsi_sense_hdr*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @tur_done(%struct.scsi_device*, %struct.hp_sw_dh_data*, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
