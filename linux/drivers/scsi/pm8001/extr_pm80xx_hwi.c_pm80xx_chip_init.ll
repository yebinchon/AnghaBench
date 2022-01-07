; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"Firmware is not ready!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PM8001_MAX_SPCV_INB_NUM = common dso_local global i64 0, align 8
@PM8001_MAX_SPCV_OUTB_NUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"MPI initialize successful!\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Checking for encryption\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Encryption error !!\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"Encryption enabled with error.Saving encryption key to flash\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @pm80xx_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm80xx_chip_init(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %7 = call i32 @check_fw_ready(%struct.pm8001_hba_info* %6)
  %8 = icmp eq i32 -1, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %11 = call i32 @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %10, i32 %11)
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %103

15:                                               ; preds = %1
  %16 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %17 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %19 = call i32 @init_pci_device_addresses(%struct.pm8001_hba_info* %18)
  %20 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %21 = call i32 @init_default_table_values(%struct.pm8001_hba_info* %20)
  %22 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %23 = call i32 @read_main_config_table(%struct.pm8001_hba_info* %22)
  %24 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %25 = call i32 @read_general_status_table(%struct.pm8001_hba_info* %24)
  %26 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %27 = call i32 @read_inbnd_queue_table(%struct.pm8001_hba_info* %26)
  %28 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %29 = call i32 @read_outbnd_queue_table(%struct.pm8001_hba_info* %28)
  %30 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %31 = call i32 @read_phy_attr_table(%struct.pm8001_hba_info* %30)
  %32 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %33 = call i32 @update_main_config_table(%struct.pm8001_hba_info* %32)
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %42, %15
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @PM8001_MAX_SPCV_INB_NUM, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @update_inbnd_queue_table(%struct.pm8001_hba_info* %39, i64 %40)
  br label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %5, align 8
  br label %34

45:                                               ; preds = %34
  store i64 0, i64* %5, align 8
  br label %46

46:                                               ; preds = %54, %45
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @PM8001_MAX_SPCV_OUTB_NUM, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @update_outbnd_queue_table(%struct.pm8001_hba_info* %51, i64 %52)
  br label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %5, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %5, align 8
  br label %46

57:                                               ; preds = %46
  %58 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %59 = call i64 @mpi_init_check(%struct.pm8001_hba_info* %58)
  %60 = icmp eq i64 0, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %63 = call i32 @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %64 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %62, i32 %63)
  br label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %103

68:                                               ; preds = %61
  %69 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %70 = call i32 @pm80xx_set_sas_protocol_timer_config(%struct.pm8001_hba_info* %69)
  store i32 %70, i32* %4, align 4
  %71 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %72 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %71, i32 0, i32 2
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %102

77:                                               ; preds = %68
  %78 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %79 = call i32 @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %80 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %78, i32 %79)
  %81 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %82 = call i32 @pm80xx_get_encrypt_info(%struct.pm8001_hba_info* %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %101

85:                                               ; preds = %77
  %86 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %87 = call i32 @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %88 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %86, i32 %87)
  %89 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %90 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 129
  br i1 %93, label %94, label %100

94:                                               ; preds = %85
  %95 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %96 = call i32 @pm8001_printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  %97 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %95, i32 %96)
  %98 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %99 = call i32 @pm80xx_encrypt_update(%struct.pm8001_hba_info* %98)
  br label %100

100:                                              ; preds = %94, %85
  br label %101

101:                                              ; preds = %100, %77
  br label %102

102:                                              ; preds = %101, %68
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %65, %9
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @check_fw_ready(%struct.pm8001_hba_info*) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*) #1

declare dso_local i32 @init_pci_device_addresses(%struct.pm8001_hba_info*) #1

declare dso_local i32 @init_default_table_values(%struct.pm8001_hba_info*) #1

declare dso_local i32 @read_main_config_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @read_general_status_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @read_inbnd_queue_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @read_outbnd_queue_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @read_phy_attr_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @update_main_config_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @update_inbnd_queue_table(%struct.pm8001_hba_info*, i64) #1

declare dso_local i32 @update_outbnd_queue_table(%struct.pm8001_hba_info*, i64) #1

declare dso_local i64 @mpi_init_check(%struct.pm8001_hba_info*) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm80xx_set_sas_protocol_timer_config(%struct.pm8001_hba_info*) #1

declare dso_local i32 @pm80xx_get_encrypt_info(%struct.pm8001_hba_info*) #1

declare dso_local i32 @pm80xx_encrypt_update(%struct.pm8001_hba_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
