; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_ctl.c_pm8001_store_update_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_ctl.c_pm8001_store_update_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_ha_struct = type { %struct.pm8001_hba_info* }
%struct.pm8001_hba_info = type { i64, i32, i32 }

@FLASH_CMD_NONE = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@FLASH_IN_PROGRESS = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FAIL_OUT_MEMORY = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@FAIL_PARAMETERS = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@flash_command_table = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to load firmware image file %s,\09error %d\0A\00", align 1
@FAIL_OPEN_BIOS_FILE = common dso_local global i64 0, align 8
@FLASH_CMD_UPDATE = common dso_local global i32 0, align 4
@FLASH_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pm8001_store_update_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_store_update_fw(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.sas_ha_struct*, align 8
  %12 = alloca %struct.pm8001_hba_info*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %19)
  store %struct.Scsi_Host* %20, %struct.Scsi_Host** %10, align 8
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %22 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %21)
  store %struct.sas_ha_struct* %22, %struct.sas_ha_struct** %11, align 8
  %23 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %24 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %23, i32 0, i32 0
  %25 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %24, align 8
  store %struct.pm8001_hba_info* %25, %struct.pm8001_hba_info** %12, align 8
  %26 = load i32, i32* @FLASH_CMD_NONE, align 4
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %28 = call i32 @capable(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @EACCES, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %165

33:                                               ; preds = %4
  %34 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %35 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FLASH_IN_PROGRESS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINPROGRESS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %165

42:                                               ; preds = %33
  %43 = load i64, i64* @FLASH_IN_PROGRESS, align 8
  %44 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %45 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kcalloc(i64 %46, i32 2, i32 %47)
  store i8* %48, i8** %13, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %42
  %52 = load i64, i64* @FAIL_OUT_MEMORY, align 8
  %53 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %54 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %165

57:                                               ; preds = %42
  %58 = load i8*, i8** %13, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %14, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 @sscanf(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %62, i8* %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 2
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  %68 = load i8*, i8** @FAIL_PARAMETERS, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %71 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %18, align 4
  br label %152

74:                                               ; preds = %57
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %104, %74
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flash_command_table, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @FLASH_CMD_NONE, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %75
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flash_command_table, align 8
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %13, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = call i32 @memcmp(i32 %90, i8* %91, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %84
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flash_command_table, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %17, align 4
  br label %107

103:                                              ; preds = %84
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %16, align 4
  br label %75

107:                                              ; preds = %96, %75
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* @FLASH_CMD_NONE, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load i8*, i8** @FAIL_PARAMETERS, align 8
  %113 = ptrtoint i8* %112 to i64
  %114 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %115 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %18, align 4
  br label %152

118:                                              ; preds = %107
  %119 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %120 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %119, i32 0, i32 1
  %121 = load i8*, i8** %14, align 8
  %122 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %123 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @request_firmware(i32* %120, i8* %121, i32 %124)
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %118
  %129 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = load i32, i32* %18, align 4
  %132 = call i32 @pm8001_printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %130, i32 %131)
  %133 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %129, i32 %132)
  %134 = load i64, i64* @FAIL_OPEN_BIOS_FILE, align 8
  %135 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %136 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  br label %152

137:                                              ; preds = %118
  %138 = load i32, i32* @FLASH_CMD_UPDATE, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %143 = call i32 @pm8001_update_flash(%struct.pm8001_hba_info* %142)
  store i32 %143, i32* %18, align 4
  br label %147

144:                                              ; preds = %137
  %145 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %146 = call i32 @pm8001_set_nvmd(%struct.pm8001_hba_info* %145)
  store i32 %146, i32* %18, align 4
  br label %147

147:                                              ; preds = %144, %141
  %148 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %149 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @release_firmware(i32 %150)
  br label %152

152:                                              ; preds = %147, %128, %111, %67
  %153 = load i8*, i8** %13, align 8
  %154 = call i32 @kfree(i8* %153)
  %155 = load i32, i32* %18, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i32, i32* %18, align 4
  store i32 %158, i32* %5, align 4
  br label %165

159:                                              ; preds = %152
  %160 = load i64, i64* @FLASH_OK, align 8
  %161 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %162 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load i64, i64* %9, align 8
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %159, %157, %51, %39, %30
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @request_firmware(i32*, i8*, i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i8*, i32) #1

declare dso_local i32 @pm8001_update_flash(%struct.pm8001_hba_info*) #1

declare dso_local i32 @pm8001_set_nvmd(%struct.pm8001_hba_info*) #1

declare dso_local i32 @release_firmware(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
