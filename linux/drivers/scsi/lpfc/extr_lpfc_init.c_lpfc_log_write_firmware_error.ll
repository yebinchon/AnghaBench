; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_log_write_firmware_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_log_write_firmware_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.firmware = type { i32 }

@ADD_STATUS_FW_NOT_SUPPORTED = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_LANCER_G6_FC = common dso_local global i64 0, align 8
@MAGIC_NUMER_G6 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_LANCER_G7_FC = common dso_local global i64 0, align 8
@MAGIC_NUMER_G7 = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [109 x i8] c"3030 This firmware version is not supported on this HBA model. Device:%x Magic:%x Type:%x ID:%x Size %d %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"3022 FW Download failed. Device:%x Magic:%x Type:%x ID:%x Size %d %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, i64, i64, i64, i64, i64, %struct.firmware*)* @lpfc_log_write_firmware_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_log_write_firmware_error(%struct.lpfc_hba* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, %struct.firmware* %6) #0 {
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.firmware*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.firmware* %6, %struct.firmware** %14, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @ADD_STATUS_FW_NOT_SUPPORTED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %42, label %18

18:                                               ; preds = %7
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PCI_DEVICE_ID_LANCER_G6_FC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @MAGIC_NUMER_G6, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %26, %18
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCI_DEVICE_ID_LANCER_G7_FC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %30
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @MAGIC_NUMER_G7, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38, %26, %7
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %44 = load i32, i32* @KERN_ERR, align 4
  %45 = load i32, i32* @LOG_INIT, align 4
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load %struct.firmware*, %struct.firmware** %14, align 8
  %56 = getelementptr inbounds %struct.firmware, %struct.firmware* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str, i64 0, i64 0), i64 %50, i64 %51, i64 %52, i64 %53, i64 %54, i32 %57)
  br label %76

59:                                               ; preds = %38, %30
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %61 = load i32, i32* @KERN_ERR, align 4
  %62 = load i32, i32* @LOG_INIT, align 4
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load %struct.firmware*, %struct.firmware** %14, align 8
  %73 = getelementptr inbounds %struct.firmware, %struct.firmware* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %60, i32 %61, i32 %62, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i64 %67, i64 %68, i64 %69, i64 %70, i64 %71, i32 %74)
  br label %76

76:                                               ; preds = %59, %42
  ret void
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
