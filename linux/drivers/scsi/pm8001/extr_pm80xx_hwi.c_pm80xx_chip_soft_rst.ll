; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_chip_soft_rst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_chip_soft_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@MSGU_SCRATCH_PAD_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"MPI state is not ready scratch1 :0x%x\0A\00", align 1
@SPC_REG_SOFT_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"reset register before write : 0x%x\0A\00", align 1
@SPCv_NORMAL_RESET_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"reset register after write 0x%x\0A\00", align 1
@SPCv_SOFT_RESET_READ_MASK = common dso_local global i32 0, align 4
@SPCv_SOFT_RESET_NORMAL_RESET_OCCURED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c" soft reset successful [regval: 0x%x]\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c" soft reset failed [regval: 0x%x]\0A\00", align 1
@SCRATCH_PAD1_BOOTSTATE_MASK = common dso_local global i32 0, align 4
@SCRATCH_PAD1_BOOTSTATE_HDA_SEEPROM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Bootloader state - HDA mode SEEPROM\0A\00", align 1
@SCRATCH_PAD1_BOOTSTATE_HDA_BOOTSTRAP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"Bootloader state - HDA mode Bootstrap Pin\0A\00", align 1
@SCRATCH_PAD1_BOOTSTATE_HDA_SOFTRESET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Bootloader state - HDA mode soft reset\0A\00", align 1
@SCRATCH_PAD1_BOOTSTATE_CRIT_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"Bootloader state-HDA mode critical error\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"Firmware is not ready!\0A\00", align 1
@PCI_VENDOR_ID_ADAPTEC2 = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_ATTO = common dso_local global i64 0, align 8
@MSGU_HOST_SCRATCH_PAD_6 = common dso_local global i32 0, align 4
@MSGU_HOST_SCRATCH_PAD_7 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"iButton Feature is not Available!!!\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"CRC Check for iButton Feature Failed!!!\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"SPCv soft reset Complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @pm80xx_chip_soft_rst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm80xx_chip_soft_rst(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  %8 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %9 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %1
  %13 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %14 = call i64 @mpi_uninit_check(%struct.pm8001_hba_info* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %18 = load i32, i32* @MSGU_SCRATCH_PAD_1, align 4
  %19 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %17, i32 0, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %20, i32 %22)
  store i32 -1, i32* %2, align 4
  br label %168

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %27 = load i32, i32* @SPC_REG_SOFT_RESET, align 4
  %28 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %26, i32 0, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %29, i32 %31)
  %33 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %34 = load i32, i32* @SPC_REG_SOFT_RESET, align 4
  %35 = load i32, i32* @SPCv_NORMAL_RESET_VALUE, align 4
  %36 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %33, i32 0, i32 %34, i32 %35)
  %37 = call i32 @mdelay(i32 500)
  %38 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %39 = load i32, i32* @SPC_REG_SOFT_RESET, align 4
  %40 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %38, i32 0, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %41, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @SPCv_SOFT_RESET_READ_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @SPCv_SOFT_RESET_NORMAL_RESET_OCCURED, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %25
  %51 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %51, i32 %53)
  br label %102

55:                                               ; preds = %25
  %56 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %56, i32 %58)
  %60 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %61 = load i32, i32* @MSGU_SCRATCH_PAD_1, align 4
  %62 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %60, i32 0, i32 %61)
  %63 = load i32, i32* @SCRATCH_PAD1_BOOTSTATE_MASK, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @SCRATCH_PAD1_BOOTSTATE_HDA_SEEPROM, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %55
  %69 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %70 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %71 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %69, i32 %70)
  br label %99

72:                                               ; preds = %55
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @SCRATCH_PAD1_BOOTSTATE_HDA_BOOTSTRAP, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %78 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %79 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %77, i32 %78)
  br label %98

80:                                               ; preds = %72
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @SCRATCH_PAD1_BOOTSTATE_HDA_SOFTRESET, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %86 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %87 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %85, i32 %86)
  br label %97

88:                                               ; preds = %80
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @SCRATCH_PAD1_BOOTSTATE_CRIT_ERROR, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %94 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %95 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %88
  br label %97

97:                                               ; preds = %96, %84
  br label %98

98:                                               ; preds = %97, %76
  br label %99

99:                                               ; preds = %98, %68
  %100 = load i32, i32* @EBUSY, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %168

102:                                              ; preds = %50
  %103 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %104 = call i32 @check_fw_ready(%struct.pm8001_hba_info* %103)
  %105 = icmp eq i32 -1, %104
  br i1 %105, label %106, label %164

106:                                              ; preds = %102
  %107 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %108 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %109 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %107, i32 %108)
  %110 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %111 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @PCI_VENDOR_ID_ADAPTEC2, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %163

117:                                              ; preds = %106
  %118 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %119 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @PCI_VENDOR_ID_ATTO, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %163

125:                                              ; preds = %117
  %126 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %127 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %163

132:                                              ; preds = %125
  %133 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %134 = load i32, i32* @MSGU_HOST_SCRATCH_PAD_6, align 4
  %135 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %133, i32 0, i32 %134)
  store i32 %135, i32* %6, align 4
  %136 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %137 = load i32, i32* @MSGU_HOST_SCRATCH_PAD_7, align 4
  %138 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %136, i32 0, i32 %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %132
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %141
  %145 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %146 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %147 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %145, i32 %146)
  %148 = load i32, i32* @EBUSY, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %2, align 4
  br label %168

150:                                              ; preds = %141, %132
  %151 = load i32, i32* %6, align 4
  %152 = icmp eq i32 %151, -559038737
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load i32, i32* %7, align 4
  %155 = icmp eq i32 %154, -559038737
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %158 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %159 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %157, i32 %158)
  %160 = load i32, i32* @EBUSY, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %2, align 4
  br label %168

162:                                              ; preds = %153, %150
  br label %163

163:                                              ; preds = %162, %125, %117, %106
  br label %164

164:                                              ; preds = %163, %102
  %165 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %166 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %167 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %165, i32 %166)
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %164, %156, %144, %99, %16
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i64 @mpi_uninit_check(%struct.pm8001_hba_info*) #1

declare dso_local i32 @pm8001_cr32(%struct.pm8001_hba_info*, i32, i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_cw32(%struct.pm8001_hba_info*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @check_fw_ready(%struct.pm8001_hba_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
