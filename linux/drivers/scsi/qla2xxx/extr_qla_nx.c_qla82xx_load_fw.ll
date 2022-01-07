; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_load_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_load_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.fw_blob* }
%struct.fw_blob = type { i32* }

@QLA_SUCCESS = common dso_local global i64 0, align 8
@ql_log_fatal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error during CRB initialization.\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@QLA82XX_ROMUSB_GLB_SW_RESET = common dso_local global i32 0, align 4
@ql2xfwloadbin = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Attempting to load firmware from flash.\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Firmware loaded successfully from flash.\0A\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Firmware load from flash failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Attempting to load firmware from blob.\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Firmware image not present.\0A\00", align 1
@QLA82XX_FLASH_ROMIMAGE = common dso_local global i32 0, align 4
@QLA82XX_UNIFIED_ROMIMAGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"No valid firmware image found.\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Firmware loaded successfully from binary blob.\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Firmware load failed for binary blob.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @qla82xx_load_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_load_fw(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_blob*, align 8
  %6 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = call i64 @qla82xx_pinit_from_rom(%struct.TYPE_7__* %10)
  %12 = load i64, i64* @QLA_SUCCESS, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @ql_log_fatal, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = call i32 @ql_log(i32 %15, %struct.TYPE_7__* %16, i32 159, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %18, i32* %2, align 4
  br label %101

19:                                               ; preds = %1
  %20 = call i32 @udelay(i32 500)
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %22 = load i32, i32* @QLA82XX_ROMUSB_GLB_SW_RESET, align 4
  %23 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, -285212673
  store i32 %25, i32* %4, align 4
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %27 = load i32, i32* @QLA82XX_ROMUSB_GLB_SW_RESET, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @ql2xfwloadbin, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %52

33:                                               ; preds = %19
  %34 = load i32, i32* @ql_log_info, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = call i32 @ql_log(i32 %34, %struct.TYPE_7__* %35, i32 160, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %38 = call i64 @qla82xx_fw_load_from_flash(%struct.qla_hw_data* %37)
  %39 = load i64, i64* @QLA_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load i32, i32* @ql_log_info, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = call i32 @ql_log(i32 %42, %struct.TYPE_7__* %43, i32 161, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i64, i64* @QLA_SUCCESS, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %2, align 4
  br label %101

47:                                               ; preds = %33
  %48 = load i32, i32* @ql_log_warn, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = call i32 @ql_log(i32 %48, %struct.TYPE_7__* %49, i32 264, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %32
  %53 = load i32, i32* @ql_log_info, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = call i32 @ql_log(i32 %53, %struct.TYPE_7__* %54, i32 162, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = call %struct.fw_blob* @qla2x00_request_firmware(%struct.TYPE_7__* %56)
  %58 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %59 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %58, i32 0, i32 0
  store %struct.fw_blob* %57, %struct.fw_blob** %59, align 8
  store %struct.fw_blob* %57, %struct.fw_blob** %5, align 8
  %60 = load %struct.fw_blob*, %struct.fw_blob** %5, align 8
  %61 = icmp ne %struct.fw_blob* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* @ql_log_fatal, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = call i32 @ql_log(i32 %63, %struct.TYPE_7__* %64, i32 163, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %99

66:                                               ; preds = %52
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = load i32, i32* @QLA82XX_FLASH_ROMIMAGE, align 4
  %69 = call i64 @qla82xx_validate_firmware_blob(%struct.TYPE_7__* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = load i32, i32* @QLA82XX_UNIFIED_ROMIMAGE, align 4
  %74 = call i64 @qla82xx_validate_firmware_blob(%struct.TYPE_7__* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i32, i32* @ql_log_fatal, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = call i32 @ql_log(i32 %77, %struct.TYPE_7__* %78, i32 164, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %80 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %80, i32* %2, align 4
  br label %101

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %66
  %83 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %84 = call i64 @qla82xx_fw_load_from_blob(%struct.qla_hw_data* %83)
  %85 = load i64, i64* @QLA_SUCCESS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* @ql_log_info, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = call i32 @ql_log(i32 %88, %struct.TYPE_7__* %89, i32 165, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %91 = load i64, i64* @QLA_SUCCESS, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %2, align 4
  br label %101

93:                                               ; preds = %82
  %94 = load i32, i32* @ql_log_fatal, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = call i32 @ql_log(i32 %94, %struct.TYPE_7__* %95, i32 166, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %97 = load %struct.fw_blob*, %struct.fw_blob** %5, align 8
  %98 = getelementptr inbounds %struct.fw_blob, %struct.fw_blob* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  store %struct.fw_blob* null, %struct.fw_blob** %5, align 8
  br label %99

99:                                               ; preds = %93, %62
  %100 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %87, %76, %41, %14
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @qla82xx_pinit_from_rom(%struct.TYPE_7__*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @qla82xx_rd_32(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i64 @qla82xx_fw_load_from_flash(%struct.qla_hw_data*) #1

declare dso_local %struct.fw_blob* @qla2x00_request_firmware(%struct.TYPE_7__*) #1

declare dso_local i64 @qla82xx_validate_firmware_blob(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @qla82xx_fw_load_from_blob(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
