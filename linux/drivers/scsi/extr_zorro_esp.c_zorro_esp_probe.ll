; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_zorro_esp.c_zorro_esp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_zorro_esp.c_zorro_esp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_host_template = type { i32 }
%struct.zorro_driver_data = type { i64, i64, i64, i32, i32, i64 }
%struct.zorro_dev = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.zorro_device_id = type { i64 }
%struct.Scsi_Host = type { i64, i32, i32 }
%struct.esp = type { i32, i32, i32, i8*, i8*, i32, i32, %struct.TYPE_6__*, i8*, i32, %struct.Scsi_Host* }
%struct.zorro_esp_priv = type { i32, i32, i8*, %struct.esp* }

@scsi_esp_template = common dso_local global %struct.scsi_host_template zeroinitializer, align 4
@zorro_esp_boards = common dso_local global %struct.zorro_driver_data* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s found at address 0x%lx.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Can't allocate device private data!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ERT_TYPEMASK = common dso_local global i32 0, align 4
@ERT_ZORROIII = common dso_local global i32 0, align 4
@ZORRO_BLZ1230II = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"%s at address 0x%lx is Fastlane Z3, fixing data!\0A\00", align 1
@ZORRO_FASTLANE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"cannot reserve region 0x%lx, abort\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"No host detected; board configuration problem?\0A\00", align 1
@FASTLANE_ESP_ADDR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Cannot allocate board address space\0A\00", align 1
@FASTLANE_DMA_FCODE = common dso_local global i32 0, align 4
@FASTLANE_DMA_EDI = common dso_local global i32 0, align 4
@FASTLANE_DMA_ESI = common dso_local global i32 0, align 4
@ESP_FDATA = common dso_local global i32 0, align 4
@ESP_CONFIG1_PENABLE = common dso_local global i32 0, align 4
@ESP_CFG1 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IRQ_AMIGA_PORTS = common dso_local global i32 0, align 4
@scsi_esp_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Amiga Zorro ESP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zorro_dev*, %struct.zorro_device_id*)* @zorro_esp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zorro_esp_probe(%struct.zorro_dev* %0, %struct.zorro_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zorro_dev*, align 8
  %5 = alloca %struct.zorro_device_id*, align 8
  %6 = alloca %struct.scsi_host_template*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.esp*, align 8
  %9 = alloca %struct.zorro_driver_data*, align 8
  %10 = alloca %struct.zorro_esp_priv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.zorro_dev* %0, %struct.zorro_dev** %4, align 8
  store %struct.zorro_device_id* %1, %struct.zorro_device_id** %5, align 8
  store %struct.scsi_host_template* @scsi_esp_template, %struct.scsi_host_template** %6, align 8
  %15 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %16 = call i64 @zorro_resource_start(%struct.zorro_dev* %15)
  store i64 %16, i64* %11, align 8
  %17 = load %struct.zorro_driver_data*, %struct.zorro_driver_data** @zorro_esp_boards, align 8
  %18 = load %struct.zorro_device_id*, %struct.zorro_device_id** %5, align 8
  %19 = getelementptr inbounds %struct.zorro_device_id, %struct.zorro_device_id* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.zorro_driver_data, %struct.zorro_driver_data* %17, i64 %20
  store %struct.zorro_driver_data* %21, %struct.zorro_driver_data** %9, align 8
  %22 = load %struct.zorro_driver_data*, %struct.zorro_driver_data** %9, align 8
  %23 = getelementptr inbounds %struct.zorro_driver_data, %struct.zorro_driver_data* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %25)
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.zorro_esp_priv* @kzalloc(i32 24, i32 %27)
  store %struct.zorro_esp_priv* %28, %struct.zorro_esp_priv** %10, align 8
  %29 = load %struct.zorro_esp_priv*, %struct.zorro_esp_priv** %10, align 8
  %30 = icmp ne %struct.zorro_esp_priv* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %2
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %368

35:                                               ; preds = %2
  %36 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %37 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ERT_TYPEMASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @ERT_ZORROIII, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load i64, i64* %11, align 8
  %46 = icmp ugt i64 %45, 16777215
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.zorro_esp_priv*, %struct.zorro_esp_priv** %10, align 8
  %49 = getelementptr inbounds %struct.zorro_esp_priv, %struct.zorro_esp_priv* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %44
  br label %56

51:                                               ; preds = %35
  %52 = call i32 @DMA_BIT_MASK(i32 32)
  %53 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %54 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %50
  %57 = load %struct.zorro_esp_priv*, %struct.zorro_esp_priv** %10, align 8
  %58 = getelementptr inbounds %struct.zorro_esp_priv, %struct.zorro_esp_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %56
  %62 = load %struct.zorro_device_id*, %struct.zorro_device_id** %5, align 8
  %63 = getelementptr inbounds %struct.zorro_device_id, %struct.zorro_device_id* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ZORRO_BLZ1230II, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.zorro_driver_data*, %struct.zorro_driver_data** %9, align 8
  %69 = getelementptr inbounds %struct.zorro_driver_data, %struct.zorro_driver_data* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %70, i64 %71)
  %73 = load %struct.zorro_driver_data*, %struct.zorro_driver_data** @zorro_esp_boards, align 8
  %74 = load i64, i64* @ZORRO_FASTLANE, align 8
  %75 = getelementptr inbounds %struct.zorro_driver_data, %struct.zorro_driver_data* %73, i64 %74
  store %struct.zorro_driver_data* %75, %struct.zorro_driver_data** %9, align 8
  br label %76

76:                                               ; preds = %67, %61, %56
  %77 = load %struct.zorro_driver_data*, %struct.zorro_driver_data** %9, align 8
  %78 = getelementptr inbounds %struct.zorro_driver_data, %struct.zorro_driver_data* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.zorro_driver_data*, %struct.zorro_driver_data** %9, align 8
  %83 = getelementptr inbounds %struct.zorro_driver_data, %struct.zorro_driver_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %12, align 8
  %85 = load %struct.zorro_driver_data*, %struct.zorro_driver_data** %9, align 8
  %86 = getelementptr inbounds %struct.zorro_driver_data, %struct.zorro_driver_data* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %13, align 8
  br label %99

88:                                               ; preds = %76
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.zorro_driver_data*, %struct.zorro_driver_data** %9, align 8
  %91 = getelementptr inbounds %struct.zorro_driver_data, %struct.zorro_driver_data* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %89, %92
  store i64 %93, i64* %12, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load %struct.zorro_driver_data*, %struct.zorro_driver_data** %9, align 8
  %96 = getelementptr inbounds %struct.zorro_driver_data, %struct.zorro_driver_data* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %94, %97
  store i64 %98, i64* %13, align 8
  br label %99

99:                                               ; preds = %88, %81
  %100 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %101 = load %struct.zorro_driver_data*, %struct.zorro_driver_data** %9, align 8
  %102 = getelementptr inbounds %struct.zorro_driver_data, %struct.zorro_driver_data* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @zorro_request_device(%struct.zorro_dev* %100, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %99
  %107 = load i64, i64* %11, align 8
  %108 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %107)
  %109 = load i32, i32* @EBUSY, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %14, align 4
  br label %364

111:                                              ; preds = %99
  %112 = load %struct.scsi_host_template*, %struct.scsi_host_template** %6, align 8
  %113 = call %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template* %112, i32 72)
  store %struct.Scsi_Host* %113, %struct.Scsi_Host** %7, align 8
  %114 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %115 = icmp ne %struct.Scsi_Host* %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %14, align 4
  br label %361

120:                                              ; preds = %111
  %121 = load i64, i64* %12, align 8
  %122 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %123 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %125 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %124, i32 0, i32 1
  store i32 7, i32* %125, align 8
  %126 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %127 = call %struct.esp* @shost_priv(%struct.Scsi_Host* %126)
  store %struct.esp* %127, %struct.esp** %8, align 8
  %128 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %129 = load %struct.esp*, %struct.esp** %8, align 8
  %130 = getelementptr inbounds %struct.esp, %struct.esp* %129, i32 0, i32 10
  store %struct.Scsi_Host* %128, %struct.Scsi_Host** %130, align 8
  %131 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %132 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %131, i32 0, i32 0
  %133 = load %struct.esp*, %struct.esp** %8, align 8
  %134 = getelementptr inbounds %struct.esp, %struct.esp* %133, i32 0, i32 7
  store %struct.TYPE_6__* %132, %struct.TYPE_6__** %134, align 8
  %135 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %136 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.esp*, %struct.esp** %8, align 8
  %139 = getelementptr inbounds %struct.esp, %struct.esp* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.esp*, %struct.esp** %8, align 8
  %141 = getelementptr inbounds %struct.esp, %struct.esp* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = shl i32 1, %142
  %144 = load %struct.esp*, %struct.esp** %8, align 8
  %145 = getelementptr inbounds %struct.esp, %struct.esp* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.esp*, %struct.esp** %8, align 8
  %147 = getelementptr inbounds %struct.esp, %struct.esp* %146, i32 0, i32 2
  store i32 40000000, i32* %147, align 8
  %148 = load %struct.esp*, %struct.esp** %8, align 8
  %149 = load %struct.zorro_esp_priv*, %struct.zorro_esp_priv** %10, align 8
  %150 = getelementptr inbounds %struct.zorro_esp_priv, %struct.zorro_esp_priv* %149, i32 0, i32 3
  store %struct.esp* %148, %struct.esp** %150, align 8
  %151 = load %struct.esp*, %struct.esp** %8, align 8
  %152 = getelementptr inbounds %struct.esp, %struct.esp* %151, i32 0, i32 7
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = load %struct.zorro_esp_priv*, %struct.zorro_esp_priv** %10, align 8
  %155 = call i32 @dev_set_drvdata(%struct.TYPE_6__* %153, %struct.zorro_esp_priv* %154)
  %156 = load %struct.zorro_esp_priv*, %struct.zorro_esp_priv** %10, align 8
  %157 = getelementptr inbounds %struct.zorro_esp_priv, %struct.zorro_esp_priv* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %189

160:                                              ; preds = %120
  %161 = load %struct.zorro_device_id*, %struct.zorro_device_id** %5, align 8
  %162 = getelementptr inbounds %struct.zorro_device_id, %struct.zorro_device_id* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @ZORRO_BLZ1230II, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %189

166:                                              ; preds = %160
  %167 = load i64, i64* %11, align 8
  %168 = load i32, i32* @FASTLANE_ESP_ADDR, align 4
  %169 = sub nsw i32 %168, 1
  %170 = call i8* @ioremap_nocache(i64 %167, i32 %169)
  %171 = load %struct.zorro_esp_priv*, %struct.zorro_esp_priv** %10, align 8
  %172 = getelementptr inbounds %struct.zorro_esp_priv, %struct.zorro_esp_priv* %171, i32 0, i32 2
  store i8* %170, i8** %172, align 8
  %173 = load %struct.zorro_esp_priv*, %struct.zorro_esp_priv** %10, align 8
  %174 = getelementptr inbounds %struct.zorro_esp_priv, %struct.zorro_esp_priv* %173, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %181, label %177

177:                                              ; preds = %166
  %178 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %14, align 4
  br label %358

181:                                              ; preds = %166
  %182 = load i32, i32* @FASTLANE_DMA_FCODE, align 4
  %183 = load i32, i32* @FASTLANE_DMA_EDI, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @FASTLANE_DMA_ESI, align 4
  %186 = or i32 %184, %185
  %187 = load %struct.zorro_esp_priv*, %struct.zorro_esp_priv** %10, align 8
  %188 = getelementptr inbounds %struct.zorro_esp_priv, %struct.zorro_esp_priv* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %181, %160, %120
  %190 = load %struct.zorro_driver_data*, %struct.zorro_driver_data** %9, align 8
  %191 = getelementptr inbounds %struct.zorro_driver_data, %struct.zorro_driver_data* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.esp*, %struct.esp** %8, align 8
  %194 = getelementptr inbounds %struct.esp, %struct.esp* %193, i32 0, i32 9
  store i32 %192, i32* %194, align 8
  %195 = load i64, i64* %12, align 8
  %196 = icmp ugt i64 %195, 16777215
  br i1 %196, label %197, label %202

197:                                              ; preds = %189
  %198 = load i64, i64* %12, align 8
  %199 = call i8* @ioremap_nocache(i64 %198, i32 32)
  %200 = load %struct.esp*, %struct.esp** %8, align 8
  %201 = getelementptr inbounds %struct.esp, %struct.esp* %200, i32 0, i32 3
  store i8* %199, i8** %201, align 8
  br label %207

202:                                              ; preds = %189
  %203 = load i64, i64* %12, align 8
  %204 = call i8* @ZTWO_VADDR(i64 %203)
  %205 = load %struct.esp*, %struct.esp** %8, align 8
  %206 = getelementptr inbounds %struct.esp, %struct.esp* %205, i32 0, i32 3
  store i8* %204, i8** %206, align 8
  br label %207

207:                                              ; preds = %202, %197
  %208 = load %struct.esp*, %struct.esp** %8, align 8
  %209 = getelementptr inbounds %struct.esp, %struct.esp* %208, i32 0, i32 3
  %210 = load i8*, i8** %209, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %207
  %213 = load i32, i32* @ENOMEM, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %14, align 4
  br label %347

215:                                              ; preds = %207
  %216 = load %struct.esp*, %struct.esp** %8, align 8
  %217 = getelementptr inbounds %struct.esp, %struct.esp* %216, i32 0, i32 3
  %218 = load i8*, i8** %217, align 8
  %219 = load i32, i32* @ESP_FDATA, align 4
  %220 = mul nsw i32 %219, 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr i8, i8* %218, i64 %221
  %223 = load %struct.esp*, %struct.esp** %8, align 8
  %224 = getelementptr inbounds %struct.esp, %struct.esp* %223, i32 0, i32 8
  store i8* %222, i8** %224, align 8
  %225 = load %struct.zorro_driver_data*, %struct.zorro_driver_data** %9, align 8
  %226 = getelementptr inbounds %struct.zorro_driver_data, %struct.zorro_driver_data* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %245

229:                                              ; preds = %215
  %230 = load %struct.esp*, %struct.esp** %8, align 8
  %231 = load i32, i32* @ESP_CONFIG1_PENABLE, align 4
  %232 = or i32 %231, 7
  %233 = load i32, i32* @ESP_CFG1, align 4
  %234 = call i32 @zorro_esp_write8(%struct.esp* %230, i32 %232, i32 %233)
  %235 = load %struct.esp*, %struct.esp** %8, align 8
  %236 = load i32, i32* @ESP_CFG1, align 4
  %237 = call i32 @zorro_esp_read8(%struct.esp* %235, i32 %236)
  %238 = load i32, i32* @ESP_CONFIG1_PENABLE, align 4
  %239 = or i32 %238, 7
  %240 = icmp ne i32 %237, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %229
  %242 = load i32, i32* @ENODEV, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %14, align 4
  br label %338

244:                                              ; preds = %229
  br label %245

245:                                              ; preds = %244, %215
  %246 = load %struct.zorro_esp_priv*, %struct.zorro_esp_priv** %10, align 8
  %247 = getelementptr inbounds %struct.zorro_esp_priv, %struct.zorro_esp_priv* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %245
  %251 = load i64, i64* %13, align 8
  %252 = call i8* @ioremap_nocache(i64 %251, i32 4)
  %253 = load %struct.esp*, %struct.esp** %8, align 8
  %254 = getelementptr inbounds %struct.esp, %struct.esp* %253, i32 0, i32 4
  store i8* %252, i8** %254, align 8
  br label %260

255:                                              ; preds = %245
  %256 = load i64, i64* %13, align 8
  %257 = call i8* @ZTWO_VADDR(i64 %256)
  %258 = load %struct.esp*, %struct.esp** %8, align 8
  %259 = getelementptr inbounds %struct.esp, %struct.esp* %258, i32 0, i32 4
  store i8* %257, i8** %259, align 8
  br label %260

260:                                              ; preds = %255, %250
  %261 = load %struct.esp*, %struct.esp** %8, align 8
  %262 = getelementptr inbounds %struct.esp, %struct.esp* %261, i32 0, i32 4
  %263 = load i8*, i8** %262, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %268, label %265

265:                                              ; preds = %260
  %266 = load i32, i32* @ENOMEM, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %14, align 4
  br label %338

268:                                              ; preds = %260
  %269 = load %struct.esp*, %struct.esp** %8, align 8
  %270 = getelementptr inbounds %struct.esp, %struct.esp* %269, i32 0, i32 7
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %270, align 8
  %272 = load %struct.esp*, %struct.esp** %8, align 8
  %273 = getelementptr inbounds %struct.esp, %struct.esp* %272, i32 0, i32 5
  %274 = load i32, i32* @GFP_KERNEL, align 4
  %275 = call i32 @dma_alloc_coherent(%struct.TYPE_6__* %271, i32 16, i32* %273, i32 %274)
  %276 = load %struct.esp*, %struct.esp** %8, align 8
  %277 = getelementptr inbounds %struct.esp, %struct.esp* %276, i32 0, i32 6
  store i32 %275, i32* %277, align 4
  %278 = load %struct.esp*, %struct.esp** %8, align 8
  %279 = getelementptr inbounds %struct.esp, %struct.esp* %278, i32 0, i32 6
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %268
  %283 = load i32, i32* @ENOMEM, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %14, align 4
  br label %327

285:                                              ; preds = %268
  %286 = load i32, i32* @IRQ_AMIGA_PORTS, align 4
  %287 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %288 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %287, i32 0, i32 2
  store i32 %286, i32* %288, align 4
  %289 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %290 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @scsi_esp_intr, align 4
  %293 = load i32, i32* @IRQF_SHARED, align 4
  %294 = load %struct.esp*, %struct.esp** %8, align 8
  %295 = call i32 @request_irq(i32 %291, i32 %292, i32 %293, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), %struct.esp* %294)
  store i32 %295, i32* %14, align 4
  %296 = load i32, i32* %14, align 4
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %285
  %299 = load i32, i32* @ENODEV, align 4
  %300 = sub nsw i32 0, %299
  store i32 %300, i32* %14, align 4
  br label %316

301:                                              ; preds = %285
  %302 = load %struct.esp*, %struct.esp** %8, align 8
  %303 = call i32 @scsi_esp_register(%struct.esp* %302)
  store i32 %303, i32* %14, align 4
  %304 = load i32, i32* %14, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %301
  %307 = load i32, i32* @ENOMEM, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %14, align 4
  br label %310

309:                                              ; preds = %301
  store i32 0, i32* %3, align 4
  br label %368

310:                                              ; preds = %306
  %311 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %312 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.esp*, %struct.esp** %8, align 8
  %315 = call i32 @free_irq(i32 %313, %struct.esp* %314)
  br label %316

316:                                              ; preds = %310, %298
  %317 = load %struct.esp*, %struct.esp** %8, align 8
  %318 = getelementptr inbounds %struct.esp, %struct.esp* %317, i32 0, i32 7
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %318, align 8
  %320 = load %struct.esp*, %struct.esp** %8, align 8
  %321 = getelementptr inbounds %struct.esp, %struct.esp* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.esp*, %struct.esp** %8, align 8
  %324 = getelementptr inbounds %struct.esp, %struct.esp* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @dma_free_coherent(%struct.TYPE_6__* %319, i32 16, i32 %322, i32 %325)
  br label %327

327:                                              ; preds = %316, %282
  %328 = load %struct.zorro_esp_priv*, %struct.zorro_esp_priv** %10, align 8
  %329 = getelementptr inbounds %struct.zorro_esp_priv, %struct.zorro_esp_priv* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %327
  %333 = load %struct.esp*, %struct.esp** %8, align 8
  %334 = getelementptr inbounds %struct.esp, %struct.esp* %333, i32 0, i32 4
  %335 = load i8*, i8** %334, align 8
  %336 = call i32 @iounmap(i8* %335)
  br label %337

337:                                              ; preds = %332, %327
  br label %338

338:                                              ; preds = %337, %265, %241
  %339 = load i64, i64* %12, align 8
  %340 = icmp ugt i64 %339, 16777215
  br i1 %340, label %341, label %346

341:                                              ; preds = %338
  %342 = load %struct.esp*, %struct.esp** %8, align 8
  %343 = getelementptr inbounds %struct.esp, %struct.esp* %342, i32 0, i32 3
  %344 = load i8*, i8** %343, align 8
  %345 = call i32 @iounmap(i8* %344)
  br label %346

346:                                              ; preds = %341, %338
  br label %347

347:                                              ; preds = %346, %212
  %348 = load %struct.zorro_esp_priv*, %struct.zorro_esp_priv** %10, align 8
  %349 = getelementptr inbounds %struct.zorro_esp_priv, %struct.zorro_esp_priv* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %347
  %353 = load %struct.zorro_esp_priv*, %struct.zorro_esp_priv** %10, align 8
  %354 = getelementptr inbounds %struct.zorro_esp_priv, %struct.zorro_esp_priv* %353, i32 0, i32 2
  %355 = load i8*, i8** %354, align 8
  %356 = call i32 @iounmap(i8* %355)
  br label %357

357:                                              ; preds = %352, %347
  br label %358

358:                                              ; preds = %357, %177
  %359 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %360 = call i32 @scsi_host_put(%struct.Scsi_Host* %359)
  br label %361

361:                                              ; preds = %358, %116
  %362 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %363 = call i32 @zorro_release_device(%struct.zorro_dev* %362)
  br label %364

364:                                              ; preds = %361, %106
  %365 = load %struct.zorro_esp_priv*, %struct.zorro_esp_priv** %10, align 8
  %366 = call i32 @kfree(%struct.zorro_esp_priv* %365)
  %367 = load i32, i32* %14, align 4
  store i32 %367, i32* %3, align 4
  br label %368

368:                                              ; preds = %364, %309, %31
  %369 = load i32, i32* %3, align 4
  ret i32 %369
}

declare dso_local i64 @zorro_resource_start(%struct.zorro_dev*) #1

declare dso_local i32 @pr_info(i8*, i32, i64) #1

declare dso_local %struct.zorro_esp_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @zorro_request_device(%struct.zorro_dev*, i32) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template*, i32) #1

declare dso_local %struct.esp* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_6__*, %struct.zorro_esp_priv*) #1

declare dso_local i8* @ioremap_nocache(i64, i32) #1

declare dso_local i8* @ZTWO_VADDR(i64) #1

declare dso_local i32 @zorro_esp_write8(%struct.esp*, i32, i32) #1

declare dso_local i32 @zorro_esp_read8(%struct.esp*, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.TYPE_6__*, i32, i32*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.esp*) #1

declare dso_local i32 @scsi_esp_register(%struct.esp*) #1

declare dso_local i32 @free_irq(i32, %struct.esp*) #1

declare dso_local i32 @dma_free_coherent(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @zorro_release_device(%struct.zorro_dev*) #1

declare dso_local i32 @kfree(%struct.zorro_esp_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
