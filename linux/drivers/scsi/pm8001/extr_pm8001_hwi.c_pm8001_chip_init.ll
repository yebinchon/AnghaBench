; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }

@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@GSM_SM_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Shift Bar4 to 0x%x failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Firmware is not ready!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PM8001_MAX_INB_NUM = common dso_local global i64 0, align 8
@PM8001_MAX_OUTB_NUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"MPI initialize successful!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @pm8001_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_chip_init(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %7 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PCI_DEVICE_ID, align 4
  %10 = call i32 @pci_read_config_word(i32 %8, i32 %9, i32* %5)
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 32897
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 66
  br i1 %15, label %16, label %27

16:                                               ; preds = %13, %1
  %17 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %18 = load i32, i32* @GSM_SM_BASE, align 4
  %19 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %17, i32 %18)
  %20 = icmp eq i32 -1, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %23 = load i32, i32* @GSM_SM_BASE, align 4
  %24 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %22, i32 %24)
  store i32 -1, i32* %2, align 4
  br label %102

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %13
  %28 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %29 = call i32 @check_fw_ready(%struct.pm8001_hba_info* %28)
  %30 = icmp eq i32 -1, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %33 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %32, i32 %33)
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %102

37:                                               ; preds = %27
  %38 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %39 = call i32 @init_pci_device_addresses(%struct.pm8001_hba_info* %38)
  %40 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %41 = call i32 @init_default_table_values(%struct.pm8001_hba_info* %40)
  %42 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %43 = call i32 @read_main_config_table(%struct.pm8001_hba_info* %42)
  %44 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %45 = call i32 @read_general_status_table(%struct.pm8001_hba_info* %44)
  %46 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %47 = call i32 @read_inbnd_queue_table(%struct.pm8001_hba_info* %46)
  %48 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %49 = call i32 @read_outbnd_queue_table(%struct.pm8001_hba_info* %48)
  %50 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %51 = call i32 @update_main_config_table(%struct.pm8001_hba_info* %50)
  store i64 0, i64* %4, align 8
  br label %52

52:                                               ; preds = %60, %37
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @PM8001_MAX_INB_NUM, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @update_inbnd_queue_table(%struct.pm8001_hba_info* %57, i64 %58)
  br label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %4, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %4, align 8
  br label %52

63:                                               ; preds = %52
  store i64 0, i64* %4, align 8
  br label %64

64:                                               ; preds = %72, %63
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @PM8001_MAX_OUTB_NUM, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @update_outbnd_queue_table(%struct.pm8001_hba_info* %69, i64 %70)
  br label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %4, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %4, align 8
  br label %64

75:                                               ; preds = %64
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 32897
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 66
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %83 = call i32 @mpi_set_phys_g3_with_ssc(%struct.pm8001_hba_info* %82, i32 0)
  %84 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %85 = call i32 @mpi_set_open_retry_interval_reg(%struct.pm8001_hba_info* %84, i32 119)
  br label %86

86:                                               ; preds = %81, %78, %75
  %87 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %88 = call i64 @mpi_init_check(%struct.pm8001_hba_info* %87)
  %89 = icmp eq i64 0, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %92 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %93 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %91, i32 %92)
  br label %97

94:                                               ; preds = %86
  %95 = load i32, i32* @EBUSY, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %102

97:                                               ; preds = %90
  %98 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %99 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %98, i32 1, i32 13248, i32 1)
  %100 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %101 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %100, i32 1, i32 13252, i32 0)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %97, %94, %31, %21
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pm8001_bar4_shift(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @check_fw_ready(%struct.pm8001_hba_info*) #1

declare dso_local i32 @init_pci_device_addresses(%struct.pm8001_hba_info*) #1

declare dso_local i32 @init_default_table_values(%struct.pm8001_hba_info*) #1

declare dso_local i32 @read_main_config_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @read_general_status_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @read_inbnd_queue_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @read_outbnd_queue_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @update_main_config_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @update_inbnd_queue_table(%struct.pm8001_hba_info*, i64) #1

declare dso_local i32 @update_outbnd_queue_table(%struct.pm8001_hba_info*, i64) #1

declare dso_local i32 @mpi_set_phys_g3_with_ssc(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @mpi_set_open_retry_interval_reg(%struct.pm8001_hba_info*, i32) #1

declare dso_local i64 @mpi_init_check(%struct.pm8001_hba_info*) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_cw32(%struct.pm8001_hba_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
