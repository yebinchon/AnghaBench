; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_get_nvmd_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_get_nvmd_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, %struct.TYPE_4__, i32, %struct.pm8001_ccb_info* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.pm8001_ccb_info = type { i32, i32*, %struct.fw_control_ex* }
%struct.fw_control_ex = type { i32, i32 }
%struct.get_nvm_data_resp = type { i32, i32, i32 }

@NVMD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Get nvm data complete!\0A\00", align 1
@NVMD_STAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Get nvm data error!\0A\00", align 1
@IPMode = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Get NVMD success, IR=1\0A\00", align 1
@NVMD_TYPE = common dso_local global i64 0, align 8
@TWI_DEVICE = common dso_local global i64 0, align 8
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Get SAS address from VPD successfully!\0A\00", align 1
@C_SEEPROM = common dso_local global i64 0, align 8
@VPD_FLASH = common dso_local global i64 0, align 8
@EXPAN_ROM = common dso_local global i64 0, align 8
@AAP1_RDUMP = common dso_local global i64 0, align 8
@IOP_RDUMP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"(IR=1)Wrong Device type 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Get NVMD success, IR=0, dataLen=%d\0A\00", align 1
@NVMD_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pm8001_mpi_get_nvmd_resp(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fw_control_ex*, align 8
  %6 = alloca %struct.get_nvm_data_resp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pm8001_ccb_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr i8, i8* %12, i64 4
  %14 = bitcast i8* %13 to %struct.get_nvm_data_resp*
  store %struct.get_nvm_data_resp* %14, %struct.get_nvm_data_resp** %6, align 8
  %15 = load %struct.get_nvm_data_resp*, %struct.get_nvm_data_resp** %6, align 8
  %16 = getelementptr inbounds %struct.get_nvm_data_resp, %struct.get_nvm_data_resp* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @le32_to_cpu(i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %20 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %19, i32 0, i32 3
  %21 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %21, i64 %22
  store %struct.pm8001_ccb_info* %23, %struct.pm8001_ccb_info** %8, align 8
  %24 = load %struct.get_nvm_data_resp*, %struct.get_nvm_data_resp** %6, align 8
  %25 = getelementptr inbounds %struct.get_nvm_data_resp, %struct.get_nvm_data_resp* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le32_to_cpu(i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load %struct.get_nvm_data_resp*, %struct.get_nvm_data_resp** %6, align 8
  %29 = getelementptr inbounds %struct.get_nvm_data_resp, %struct.get_nvm_data_resp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le32_to_cpu(i32 %30)
  store i64 %31, i64* %10, align 8
  %32 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %33 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i64, i64* @NVMD, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = bitcast i32* %39 to i8*
  store i8* %40, i8** %11, align 8
  %41 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %42 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %41, i32 0, i32 2
  %43 = load %struct.fw_control_ex*, %struct.fw_control_ex** %42, align 8
  store %struct.fw_control_ex* %43, %struct.fw_control_ex** %5, align 8
  %44 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %45 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %44, i32 %45)
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @NVMD_STAT, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %2
  %52 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %53 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %52, i32 %53)
  %55 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %56 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @complete(i32 %57)
  br label %168

59:                                               ; preds = %2
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @IPMode, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %129

64:                                               ; preds = %59
  %65 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %66 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %67 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %65, i32 %66)
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @NVMD_TYPE, align 8
  %70 = and i64 %68, %69
  %71 = load i64, i64* @TWI_DEVICE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %64
  %74 = load i64, i64* %10, align 8
  %75 = icmp eq i64 %74, 2158494208
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %78 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = bitcast i8* %80 to i32*
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  %83 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %84 = call i32 @memcpy(i32 %79, i32* %82, i32 %83)
  %85 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %86 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %87 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %85, i32 %86)
  br label %88

88:                                               ; preds = %76, %73
  br label %128

89:                                               ; preds = %64
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* @NVMD_TYPE, align 8
  %92 = and i64 %90, %91
  %93 = load i64, i64* @C_SEEPROM, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %107, label %95

95:                                               ; preds = %89
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* @NVMD_TYPE, align 8
  %98 = and i64 %96, %97
  %99 = load i64, i64* @VPD_FLASH, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* @NVMD_TYPE, align 8
  %104 = and i64 %102, %103
  %105 = load i64, i64* @EXPAN_ROM, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101, %95, %89
  br label %127

108:                                              ; preds = %101
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* @NVMD_TYPE, align 8
  %111 = and i64 %109, %110
  %112 = load i64, i64* @AAP1_RDUMP, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* @NVMD_TYPE, align 8
  %117 = and i64 %115, %116
  %118 = load i64, i64* @IOP_RDUMP, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114, %108
  br label %126

121:                                              ; preds = %114
  %122 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %123 = load i64, i64* %10, align 8
  %124 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %123)
  %125 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %122, i32 %124)
  br label %126

126:                                              ; preds = %121, %120
  br label %127

127:                                              ; preds = %126, %107
  br label %128

128:                                              ; preds = %127, %88
  br label %137

129:                                              ; preds = %59
  %130 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* @NVMD_LEN, align 8
  %133 = and i64 %131, %132
  %134 = lshr i64 %133, 24
  %135 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %134)
  %136 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %130, i32 %135)
  br label %137

137:                                              ; preds = %129, %128
  %138 = load %struct.fw_control_ex*, %struct.fw_control_ex** %5, align 8
  %139 = getelementptr inbounds %struct.fw_control_ex, %struct.fw_control_ex* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %142 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = load i64, i64* @NVMD, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.fw_control_ex*, %struct.fw_control_ex** %5, align 8
  %150 = getelementptr inbounds %struct.fw_control_ex, %struct.fw_control_ex* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @memcpy(i32 %140, i32* %148, i32 %151)
  %153 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %154 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %153, i32 0, i32 2
  %155 = load %struct.fw_control_ex*, %struct.fw_control_ex** %154, align 8
  %156 = call i32 @kfree(%struct.fw_control_ex* %155)
  %157 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %158 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %157, i32 0, i32 1
  store i32* null, i32** %158, align 8
  %159 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %160 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %159, i32 0, i32 0
  store i32 -1, i32* %160, align 8
  %161 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %162 = load i64, i64* %7, align 8
  %163 = call i32 @pm8001_tag_free(%struct.pm8001_hba_info* %161, i64 %162)
  %164 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %165 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @complete(i32 %166)
  br label %168

168:                                              ; preds = %137, %51
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @complete(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.fw_control_ex*) #1

declare dso_local i32 @pm8001_tag_free(%struct.pm8001_hba_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
