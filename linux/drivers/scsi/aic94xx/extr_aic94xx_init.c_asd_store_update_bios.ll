; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_store_update_bios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_store_update_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.asd_ha_struct = type { i8*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i64* }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.bios_file_header = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }

@FLASH_CMD_NONE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FAIL_OUT_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@FAIL_PARAMETERS = common dso_local global i32 0, align 4
@flash_command_table = common dso_local global %struct.TYPE_9__* null, align 8
@FLASH_IN_PROGRESS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to load bios image file %s, error %d\0A\00", align 1
@FAIL_OPEN_BIOS_FILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"The PCI vendor or device id does not match\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"vendor=%x dev=%x sub_vendor=%x sub_dev=%x pci vendor=%x pci dev=%x\0A\00", align 1
@FAIL_CHECK_PCI_ID = common dso_local global i32 0, align 4
@FAIL_FILE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"BIOS file checksum mismatch\0A\00", align 1
@FAIL_CHECK_SUM = common dso_local global i32 0, align 4
@FLASH_CMD_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @asd_store_update_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @asd_store_update_bios(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.asd_ha_struct*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.bios_file_header, align 8
  %14 = alloca %struct.bios_file_header*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.asd_ha_struct* @dev_to_asd_ha(%struct.device* %20)
  store %struct.asd_ha_struct* %21, %struct.asd_ha_struct** %10, align 8
  store i32 0, i32* %17, align 4
  %22 = load i32, i32* @FLASH_CMD_NONE, align 4
  store i32 %22, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kcalloc(i64 %23, i32 2, i32 %24)
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @FAIL_OUT_MEMORY, align 4
  store i32 %29, i32* %19, align 4
  br label %299

30:                                               ; preds = %4
  %31 = load i8*, i8** %11, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @sscanf(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @FAIL_PARAMETERS, align 4
  store i32 %41, i32* %19, align 4
  br label %296

42:                                               ; preds = %30
  store i32 0, i32* %16, align 4
  br label %43

43:                                               ; preds = %72, %42
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @flash_command_table, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @FLASH_CMD_NONE, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %43
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** @flash_command_table, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = call i32 @memcmp(i32 %58, i8* %59, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %52
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** @flash_command_table, align 8
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %18, align 4
  br label %75

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %16, align 4
  br label %43

75:                                               ; preds = %64, %43
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* @FLASH_CMD_NONE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @FAIL_PARAMETERS, align 4
  store i32 %80, i32* %19, align 4
  br label %296

81:                                               ; preds = %75
  %82 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %83 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i8*, i8** @FLASH_IN_PROGRESS, align 8
  %86 = icmp eq i8* %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i8*, i8** @FLASH_IN_PROGRESS, align 8
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* %19, align 4
  br label %296

90:                                               ; preds = %81
  %91 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %92 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %91, i32 0, i32 1
  %93 = load i8*, i8** %12, align 8
  %94 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %95 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %94, i32 0, i32 2
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = call i32 @request_firmware(%struct.TYPE_8__** %92, i8* %93, i32* %97)
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %19, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %90
  %102 = load i8*, i8** %12, align 8
  %103 = load i32, i32* %19, align 4
  %104 = call i32 @asd_printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %102, i32 %103)
  %105 = load i32, i32* @FAIL_OPEN_BIOS_FILE, align 4
  store i32 %105, i32* %19, align 4
  br label %296

106:                                              ; preds = %90
  %107 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %108 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = bitcast i64* %111 to %struct.bios_file_header*
  store %struct.bios_file_header* %112, %struct.bios_file_header** %14, align 8
  %113 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %114 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %118 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %117, i32 0, i32 2
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %116, %121
  br i1 %122, label %134, label %123

123:                                              ; preds = %106
  %124 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %125 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %129 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %128, i32 0, i32 2
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %127, %132
  br i1 %133, label %134, label %186

134:                                              ; preds = %123, %106
  %135 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %136 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %140 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %139, i32 0, i32 2
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %138, %143
  br i1 %144, label %156, label %145

145:                                              ; preds = %134
  %146 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %147 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %151 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %150, i32 0, i32 2
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %149, %154
  br i1 %155, label %156, label %186

156:                                              ; preds = %145, %134
  %157 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %158 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %159 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %163 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %167 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %171 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %175 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %174, i32 0, i32 2
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %180 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %179, i32 0, i32 2
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i64 %161, i64 %165, i64 %169, i64 %173, i64 %178, i64 %183)
  %185 = load i32, i32* @FAIL_CHECK_PCI_ID, align 4
  store i32 %185, i32* %19, align 4
  br label %291

186:                                              ; preds = %145, %123
  %187 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %188 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %191 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %190, i32 0, i32 1
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %189, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %186
  %197 = load i32, i32* @FAIL_FILE_SIZE, align 4
  store i32 %197, i32* %19, align 4
  br label %291

198:                                              ; preds = %186
  store i32 0, i32* %16, align 4
  br label %199

199:                                              ; preds = %219, %198
  %200 = load i32, i32* %16, align 4
  %201 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %202 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %222

205:                                              ; preds = %199
  %206 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %207 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %206, i32 0, i32 1
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  %210 = load i64*, i64** %209, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = load i32, i32* %17, align 4
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %216, %214
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %17, align 4
  br label %219

219:                                              ; preds = %205
  %220 = load i32, i32* %16, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %16, align 4
  br label %199

222:                                              ; preds = %199
  %223 = load i32, i32* %17, align 4
  %224 = and i32 %223, 65535
  %225 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %226 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %224, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %222
  %230 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %231 = load i32, i32* @FAIL_CHECK_SUM, align 4
  store i32 %231, i32* %19, align 4
  br label %291

232:                                              ; preds = %222
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* @FLASH_CMD_UPDATE, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %272

236:                                              ; preds = %232
  %237 = load i8*, i8** @FLASH_IN_PROGRESS, align 8
  %238 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %239 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %238, i32 0, i32 0
  store i8* %237, i8** %239, align 8
  %240 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %241 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %242 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %241, i32 0, i32 1
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 1
  %245 = load i64*, i64** %244, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 40
  %247 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %248 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = sext i32 %249 to i64
  %251 = sub i64 %250, 40
  %252 = trunc i64 %251 to i32
  %253 = call i32 @asd_write_flash_seg(%struct.asd_ha_struct* %240, i64* %246, i32 0, i32 %252)
  store i32 %253, i32* %19, align 4
  %254 = load i32, i32* %19, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %271, label %256

256:                                              ; preds = %236
  %257 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %258 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %259 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %258, i32 0, i32 1
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 1
  %262 = load i64*, i64** %261, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 40
  %264 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %265 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = sext i32 %266 to i64
  %268 = sub i64 %267, 40
  %269 = trunc i64 %268 to i32
  %270 = call i32 @asd_verify_flash_seg(%struct.asd_ha_struct* %257, i64* %263, i32 0, i32 %269)
  store i32 %270, i32* %19, align 4
  br label %271

271:                                              ; preds = %256, %236
  br label %290

272:                                              ; preds = %232
  %273 = load i8*, i8** @FLASH_IN_PROGRESS, align 8
  %274 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %275 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %274, i32 0, i32 0
  store i8* %273, i8** %275, align 8
  %276 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %277 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %278 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %277, i32 0, i32 1
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 1
  %281 = load i64*, i64** %280, align 8
  %282 = getelementptr inbounds i64, i64* %281, i64 40
  %283 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %284 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = sext i32 %285 to i64
  %287 = sub i64 %286, 40
  %288 = trunc i64 %287 to i32
  %289 = call i32 @asd_verify_flash_seg(%struct.asd_ha_struct* %276, i64* %282, i32 0, i32 %288)
  store i32 %289, i32* %19, align 4
  br label %290

290:                                              ; preds = %272, %271
  br label %291

291:                                              ; preds = %290, %229, %196, %156
  %292 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %293 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %292, i32 0, i32 1
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %293, align 8
  %295 = call i32 @release_firmware(%struct.TYPE_8__* %294)
  br label %296

296:                                              ; preds = %291, %101, %87, %79, %40
  %297 = load i8*, i8** %11, align 8
  %298 = call i32 @kfree(i8* %297)
  br label %299

299:                                              ; preds = %296, %28
  %300 = load i32, i32* %19, align 4
  %301 = sext i32 %300 to i64
  %302 = inttoptr i64 %301 to i8*
  %303 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %304 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %303, i32 0, i32 0
  store i8* %302, i8** %304, align 8
  %305 = load i32, i32* %19, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %309, label %307

307:                                              ; preds = %299
  %308 = load i64, i64* %9, align 8
  store i64 %308, i64* %5, align 8
  br label %313

309:                                              ; preds = %299
  %310 = load i32, i32* %19, align 4
  %311 = sub nsw i32 0, %310
  %312 = sext i32 %311 to i64
  store i64 %312, i64* %5, align 8
  br label %313

313:                                              ; preds = %309, %307
  %314 = load i64, i64* %5, align 8
  ret i64 %314
}

declare dso_local %struct.asd_ha_struct* @dev_to_asd_ha(%struct.device*) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_8__**, i8*, i32*) #1

declare dso_local i32 @asd_printk(i8*, i8*, i32) #1

declare dso_local i32 @ASD_DPRINTK(i8*, ...) #1

declare dso_local i32 @asd_write_flash_seg(%struct.asd_ha_struct*, i64*, i32, i32) #1

declare dso_local i32 @asd_verify_flash_seg(%struct.asd_ha_struct*, i64*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
