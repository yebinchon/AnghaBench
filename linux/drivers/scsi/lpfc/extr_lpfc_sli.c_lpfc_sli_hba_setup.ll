; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_hba_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_hba_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_2__, i32*, i32, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@LOG_VPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"1824 NPIV enabled: Override sli_mode parameter (%d) to auto (0).\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"1819 Unrecognized sli_mode parameter: %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"1820 Unable to select SLI-3.  Not supported by adapter.\0A\00", align 1
@HBA_AER_ENABLED = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"2709 This device supports Advanced Error Reporting (AER)\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"2708 This device does not support Advanced Error Reporting (AER): %d\0A\00", align 1
@SLI3_IOCB_CMD_SIZE = common dso_local global i32 0, align 4
@SLI3_IOCB_RSP_SIZE = common dso_local global i32 0, align 4
@SLI2_IOCB_CMD_SIZE = common dso_local global i32 0, align 4
@SLI2_IOCB_RSP_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"0444 Firmware in SLI %x mode. Max_vpi %d\0A\00", align 1
@LPFC_SLI_REV3 = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_SLI3_HBQ_ENABLED = common dso_local global i32 0, align 4
@LPFC_PROCESS_LA = common dso_local global i32 0, align 4
@LPFC_HBA_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"0445 Firmware initialization failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_hba_setup(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 3, i32* %5, align 4
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %28 [
    i32 2, label %11
    i32 0, label %27
    i32 3, label %27
  ]

11:                                               ; preds = %1
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 15
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %18 = load i32, i32* @KERN_ERR, align 4
  %19 = load i32, i32* @LOG_INIT, align 4
  %20 = load i32, i32* @LOG_VPORT, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %17, i32 %18, i32 %21, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %38

26:                                               ; preds = %11
  store i32 2, i32* %5, align 4
  br label %38

27:                                               ; preds = %1, %1
  br label %38

28:                                               ; preds = %1
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %30 = load i32, i32* @KERN_ERR, align 4
  %31 = load i32, i32* @LOG_INIT, align 4
  %32 = load i32, i32* @LOG_VPORT, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %29, i32 %30, i32 %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %28, %27, %26, %16
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 14
  store i64 0, i64* %40, align 8
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @lpfc_sli_config_port(%struct.lpfc_hba* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %53 = load i32, i32* @KERN_ERR, align 4
  %54 = load i32, i32* @LOG_INIT, align 4
  %55 = load i32, i32* @LOG_VPORT, align 4
  %56 = or i32 %54, %55
  %57 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %52, i32 %53, i32 %56, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %51, %46, %38
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 2
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %66 = call i32 @lpfc_sli_config_port(%struct.lpfc_hba* %65, i32 2)
  store i32 %66, i32* %4, align 4
  br label %77

67:                                               ; preds = %61, %58
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %75 = call i32 @lpfc_sli_config_port(%struct.lpfc_hba* %74, i32 3)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %70, %67
  br label %77

77:                                               ; preds = %76, %64
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %274

81:                                               ; preds = %77
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %83 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %125

86:                                               ; preds = %81
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %88 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @HBA_AER_ENABLED, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %125, label %93

93:                                               ; preds = %86
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 13
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @pci_enable_pcie_error_reporting(i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %93
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %102 = load i32, i32* @KERN_INFO, align 4
  %103 = load i32, i32* @LOG_INIT, align 4
  %104 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %101, i32 %102, i32 %103, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 8
  %107 = call i32 @spin_lock_irq(i32* %106)
  %108 = load i32, i32* @HBA_AER_ENABLED, align 4
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %110 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %114 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %113, i32 0, i32 8
  %115 = call i32 @spin_unlock_irq(i32* %114)
  br label %124

116:                                              ; preds = %93
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %118 = load i32, i32* @KERN_INFO, align 4
  %119 = load i32, i32* @LOG_INIT, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %117, i32 %118, i32 %119, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i32 %120)
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %123 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %122, i32 0, i32 1
  store i32 0, i32* %123, align 4
  br label %124

124:                                              ; preds = %116, %100
  br label %125

125:                                              ; preds = %124, %86, %81
  %126 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %127 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 3
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i32, i32* @SLI3_IOCB_CMD_SIZE, align 4
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %133 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %132, i32 0, i32 12
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @SLI3_IOCB_RSP_SIZE, align 4
  %135 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %136 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %135, i32 0, i32 11
  store i32 %134, i32* %136, align 8
  br label %146

137:                                              ; preds = %125
  %138 = load i32, i32* @SLI2_IOCB_CMD_SIZE, align 4
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %140 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %139, i32 0, i32 12
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @SLI2_IOCB_RSP_SIZE, align 4
  %142 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %143 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %142, i32 0, i32 11
  store i32 %141, i32* %143, align 8
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %145 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %144, i32 0, i32 4
  store i32 0, i32* %145, align 8
  br label %146

146:                                              ; preds = %137, %130
  %147 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %148 = load i32, i32* @KERN_INFO, align 4
  %149 = load i32, i32* @LOG_INIT, align 4
  %150 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %151 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %154 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %147, i32 %148, i32 %149, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %152, i32 %155)
  %157 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %158 = call i32 @lpfc_sli_ring_map(%struct.lpfc_hba* %157)
  store i32 %158, i32* %4, align 4
  %159 = load i32, i32* %4, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %146
  br label %274

162:                                              ; preds = %146
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %164 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @LPFC_SLI_REV3, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %240

168:                                              ; preds = %162
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %170 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %169, i32 0, i32 10
  %171 = load i32*, i32** %170, align 8
  %172 = icmp eq i32* %171, null
  br i1 %172, label %173, label %239

173:                                              ; preds = %168
  %174 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %175 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %174, i32 0, i32 6
  %176 = load i32*, i32** %175, align 8
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %239

178:                                              ; preds = %173
  %179 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %180 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @BITS_PER_LONG, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* @BITS_PER_LONG, align 4
  %185 = sdiv i32 %183, %184
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* @GFP_KERNEL, align 4
  %188 = call i8* @kcalloc(i32 %186, i32 8, i32 %187)
  %189 = bitcast i8* %188 to i32*
  %190 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %191 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %190, i32 0, i32 10
  store i32* %189, i32** %191, align 8
  %192 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %193 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %192, i32 0, i32 10
  %194 = load i32*, i32** %193, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %178
  %197 = load i32, i32* @ENOMEM, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %4, align 4
  br label %274

199:                                              ; preds = %178
  %200 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %201 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1
  %204 = load i32, i32* @GFP_KERNEL, align 4
  %205 = call i8* @kcalloc(i32 %203, i32 4, i32 %204)
  %206 = bitcast i8* %205 to i32*
  %207 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %208 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %207, i32 0, i32 6
  store i32* %206, i32** %208, align 8
  %209 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %210 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %209, i32 0, i32 6
  %211 = load i32*, i32** %210, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %220, label %213

213:                                              ; preds = %199
  %214 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %215 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %214, i32 0, i32 10
  %216 = load i32*, i32** %215, align 8
  %217 = call i32 @kfree(i32* %216)
  %218 = load i32, i32* @ENOMEM, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %4, align 4
  br label %274

220:                                              ; preds = %199
  store i32 0, i32* %6, align 4
  br label %221

221:                                              ; preds = %235, %220
  %222 = load i32, i32* %6, align 4
  %223 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %224 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %238

227:                                              ; preds = %221
  %228 = load i32, i32* %6, align 4
  %229 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %230 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %229, i32 0, i32 6
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32 %228, i32* %234, align 4
  br label %235

235:                                              ; preds = %227
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %221

238:                                              ; preds = %221
  br label %239

239:                                              ; preds = %238, %173, %168
  br label %240

240:                                              ; preds = %239, %162
  %241 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %242 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @LPFC_SLI3_HBQ_ENABLED, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %240
  %248 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %249 = call i32 @lpfc_sli_hbq_setup(%struct.lpfc_hba* %248)
  store i32 %249, i32* %4, align 4
  %250 = load i32, i32* %4, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %247
  br label %274

253:                                              ; preds = %247
  br label %254

254:                                              ; preds = %253, %240
  %255 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %256 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %255, i32 0, i32 8
  %257 = call i32 @spin_lock_irq(i32* %256)
  %258 = load i32, i32* @LPFC_PROCESS_LA, align 4
  %259 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %260 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %259, i32 0, i32 9
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %258
  store i32 %263, i32* %261, align 8
  %264 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %265 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %264, i32 0, i32 8
  %266 = call i32 @spin_unlock_irq(i32* %265)
  %267 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %268 = call i32 @lpfc_config_port_post(%struct.lpfc_hba* %267)
  store i32 %268, i32* %4, align 4
  %269 = load i32, i32* %4, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %254
  br label %274

272:                                              ; preds = %254
  %273 = load i32, i32* %4, align 4
  store i32 %273, i32* %2, align 4
  br label %283

274:                                              ; preds = %271, %252, %213, %196, %161, %80
  %275 = load i32, i32* @LPFC_HBA_ERROR, align 4
  %276 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %277 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %276, i32 0, i32 7
  store i32 %275, i32* %277, align 8
  %278 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %279 = load i32, i32* @KERN_ERR, align 4
  %280 = load i32, i32* @LOG_INIT, align 4
  %281 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %278, i32 %279, i32 %280, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %282 = load i32, i32* %4, align 4
  store i32 %282, i32* %2, align 4
  br label %283

283:                                              ; preds = %274, %272
  %284 = load i32, i32* %2, align 4
  ret i32 %284
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_sli_config_port(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_sli_ring_map(%struct.lpfc_hba*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @lpfc_sli_hbq_setup(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_config_port_post(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
