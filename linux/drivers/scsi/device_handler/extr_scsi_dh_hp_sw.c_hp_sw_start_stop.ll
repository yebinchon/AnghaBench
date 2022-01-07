; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_hp_sw_start_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_hp_sw_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hp_sw_dh_data = type { %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32, i32, i32 }

@START_STOP = common dso_local global i32 0, align 4
@SCSI_DH_OK = common dso_local global i32 0, align 4
@HP_SW_RETRIES = common dso_local global i32 0, align 4
@REQ_FAILFAST_DEV = common dso_local global i32 0, align 4
@REQ_FAILFAST_TRANSPORT = common dso_local global i32 0, align 4
@REQ_FAILFAST_DRIVER = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@HP_SW_TIMEOUT = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"%s: sending start_stop_unit failed, no sense available\0A\00", align 1
@HP_SW_NAME = common dso_local global i32 0, align 4
@SCSI_DH_IO = common dso_local global i32 0, align 4
@SCSI_DH_RETRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: sending start_stop_unit failed, sense %x/%x/%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hp_sw_dh_data*)* @hp_sw_start_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sw_start_stop(%struct.hp_sw_dh_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hp_sw_dh_data*, align 8
  %4 = alloca [6 x i8], align 1
  %5 = alloca %struct.scsi_sense_hdr, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hp_sw_dh_data* %0, %struct.hp_sw_dh_data** %3, align 8
  %11 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %12 = load i32, i32* @START_STOP, align 4
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %11, align 1
  %14 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 1, i8* %17, align 1
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 0, i8* %18, align 1
  %19 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %3, align 8
  %20 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %19, i32 0, i32 0
  %21 = load %struct.scsi_device*, %struct.scsi_device** %20, align 8
  store %struct.scsi_device* %21, %struct.scsi_device** %6, align 8
  %22 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @HP_SW_RETRIES, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @REQ_FAILFAST_DEV, align 4
  %25 = load i32, i32* @REQ_FAILFAST_TRANSPORT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @REQ_FAILFAST_DRIVER, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %63, %1
  %30 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %31 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %32 = load i32, i32* @DMA_NONE, align 4
  %33 = load i32, i32* @HP_SW_TIMEOUT, align 4
  %34 = load i32, i32* @HP_SW_RETRIES, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @scsi_execute(%struct.scsi_device* %30, i8* %31, i32 %32, i32* null, i32 0, i32* null, %struct.scsi_sense_hdr* %5, i32 %33, i32 %34, i32 %35, i32 0, i32* null)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %80

39:                                               ; preds = %29
  %40 = call i32 @scsi_sense_valid(%struct.scsi_sense_hdr* %5)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @KERN_WARNING, align 4
  %44 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %45 = load i32, i32* @HP_SW_NAME, align 4
  %46 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %43, %struct.scsi_device* %44, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %47, i32* %2, align 4
  br label %82

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %67 [
    i32 128, label %51
  ]

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 4
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %29

64:                                               ; preds = %59
  %65 = load i32, i32* @SCSI_DH_RETRY, align 4
  store i32 %65, i32* %8, align 4
  br label %79

66:                                               ; preds = %55, %51
  br label %67

67:                                               ; preds = %48, %66
  %68 = load i32, i32* @KERN_WARNING, align 4
  %69 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %70 = load i32, i32* @HP_SW_NAME, align 4
  %71 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %68, %struct.scsi_device* %69, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %72, i32 %74, i32 %76)
  %78 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %67, %64
  br label %80

80:                                               ; preds = %79, %29
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %42
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @scsi_execute(%struct.scsi_device*, i8*, i32, i32*, i32, i32*, %struct.scsi_sense_hdr*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
