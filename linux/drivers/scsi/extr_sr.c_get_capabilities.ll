; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sr.c_get_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sr.c_get_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cd = type { i32, i8, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.scsi_mode_data = type { i32, i32, i32 }
%struct.scsi_sense_hdr = type { i32 }

@get_capabilities.loadmech = internal global [8 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"caddy\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"tray\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"pop-up\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"changer\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"cartridge changer\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"out of memory.\0A\00", align 1
@SR_TIMEOUT = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@CDC_CD_R = common dso_local global i32 0, align 4
@CDC_CD_RW = common dso_local global i32 0, align 4
@CDC_DVD_R = common dso_local global i32 0, align 4
@CDC_DVD = common dso_local global i32 0, align 4
@CDC_DVD_RAM = common dso_local global i32 0, align 4
@CDC_SELECT_DISC = common dso_local global i32 0, align 4
@CDC_SELECT_SPEED = common dso_local global i32 0, align 4
@CDC_MRW = common dso_local global i32 0, align 4
@CDC_MRW_W = common dso_local global i32 0, align 4
@CDC_RAM = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"scsi-1 drive\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"scsi3-mmc drive: %dx/%dx %s%s%s%s%s%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"writer \00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"dvd-ram \00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"cd/rw \00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"xa/form2 \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"cdda \00", align 1
@CDC_CLOSE_TRAY = common dso_local global i32 0, align 4
@CDC_OPEN_TRAY = common dso_local global i32 0, align 4
@mechtype_individual_changer = common dso_local global i8 0, align 1
@mechtype_cartridge_changer = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cd*)* @get_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_capabilities(%struct.scsi_cd* %0) #0 {
  %2 = alloca %struct.scsi_cd*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.scsi_mode_data, align 4
  %5 = alloca %struct.scsi_sense_hdr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_cd* %0, %struct.scsi_cd** %2, align 8
  store i32 128, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load i32, i32* @GFP_DMA, align 4
  %11 = or i32 %9, %10
  %12 = call i8* @kmalloc(i32 512, i32 %11)
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @KERN_ERR, align 4
  %17 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %18 = call i32 (i32, %struct.scsi_cd*, i8*, ...) @sr_printk(i32 %16, %struct.scsi_cd* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %401

19:                                               ; preds = %1
  %20 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %21 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SR_TIMEOUT, align 4
  %24 = load i32, i32* @MAX_RETRIES, align 4
  %25 = call i32 @scsi_test_unit_ready(i32 %22, i32 %23, i32 %24, %struct.scsi_sense_hdr* %5)
  %26 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %27 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SR_TIMEOUT, align 4
  %32 = call i32 @scsi_mode_sense(i32 %28, i32 0, i32 42, i8* %29, i32 %30, i32 %31, i32 3, %struct.scsi_mode_data* %4, i32* null)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @scsi_status_is_good(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %4, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %4, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %43, %45
  %47 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %4, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ugt i32 %46, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %41, %36, %19
  %51 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %52 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* @CDC_CD_R, align 4
  %55 = load i32, i32* @CDC_CD_RW, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @CDC_DVD_R, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @CDC_DVD, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @CDC_DVD_RAM, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @CDC_SELECT_DISC, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @CDC_SELECT_SPEED, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @CDC_MRW, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @CDC_MRW_W, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @CDC_RAM, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %74 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %72
  store i32 %77, i32* %75, align 4
  %78 = load i8*, i8** %3, align 8
  %79 = call i32 @kfree(i8* %78)
  %80 = load i32, i32* @KERN_INFO, align 4
  %81 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %82 = call i32 (i32, %struct.scsi_cd*, i8*, ...) @sr_printk(i32 %80, %struct.scsi_cd* %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %401

83:                                               ; preds = %41
  %84 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %4, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %4, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %85, %87
  store i32 %88, i32* %8, align 4
  %89 = load i8*, i8** %3, align 8
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl i32 %95, 8
  %97 = load i8*, i8** %3, align 8
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 9
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = add nsw i32 %96, %103
  %105 = sdiv i32 %104, 176
  %106 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %107 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 4
  %109 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %110 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %109, i32 0, i32 0
  store i32 1, i32* %110, align 4
  %111 = load i8*, i8** %3, align 8
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 5
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 1
  %119 = trunc i32 %118 to i8
  %120 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %121 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %120, i32 0, i32 1
  store i8 %119, i8* %121, align 4
  %122 = load i32, i32* @KERN_INFO, align 4
  %123 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %124 = load i8*, i8** %3, align 8
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 14
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = shl i32 %130, 8
  %132 = load i8*, i8** %3, align 8
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 15
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = add nsw i32 %131, %138
  %140 = sdiv i32 %139, 176
  %141 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %142 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i8*, i8** %3, align 8
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 3
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = and i32 %151, 1
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %156 = load i8*, i8** %3, align 8
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 3
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = and i32 %162, 32
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %167 = load i8*, i8** %3, align 8
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 2
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = and i32 %173, 2
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %178 = load i8*, i8** %3, align 8
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %178, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = and i32 %184, 32
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %189 = load i8*, i8** %3, align 8
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, 5
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %189, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = and i32 %195, 1
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %200 = load i8*, i8** %3, align 8
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, 6
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = ashr i32 %206, 5
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [8 x i8*], [8 x i8*]* @get_capabilities.loadmech, i64 0, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 (i32, %struct.scsi_cd*, i8*, ...) @sr_printk(i32 %122, %struct.scsi_cd* %123, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %140, i32 %144, i8* %155, i8* %166, i8* %177, i8* %188, i8* %199, i8* %210)
  %212 = load i8*, i8** %3, align 8
  %213 = load i32, i32* %8, align 4
  %214 = add nsw i32 %213, 6
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %212, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = ashr i32 %218, 5
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %83
  %222 = load i32, i32* @CDC_CLOSE_TRAY, align 4
  %223 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %224 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %222
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %221, %83
  %229 = load i8*, i8** %3, align 8
  %230 = load i32, i32* %8, align 4
  %231 = add nsw i32 %230, 2
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %229, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = zext i8 %234 to i32
  %236 = and i32 %235, 8
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %228
  %239 = load i32, i32* @CDC_DVD, align 4
  %240 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %241 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %243, %239
  store i32 %244, i32* %242, align 4
  br label %245

245:                                              ; preds = %238, %228
  %246 = load i8*, i8** %3, align 8
  %247 = load i32, i32* %8, align 4
  %248 = add nsw i32 %247, 3
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8, i8* %246, i64 %249
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = and i32 %252, 32
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %245
  %256 = load i32, i32* @CDC_DVD_RAM, align 4
  %257 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %258 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %260, %256
  store i32 %261, i32* %259, align 4
  br label %262

262:                                              ; preds = %255, %245
  %263 = load i8*, i8** %3, align 8
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 3
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %263, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = and i32 %269, 16
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %262
  %273 = load i32, i32* @CDC_DVD_R, align 4
  %274 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %275 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %277, %273
  store i32 %278, i32* %276, align 4
  br label %279

279:                                              ; preds = %272, %262
  %280 = load i8*, i8** %3, align 8
  %281 = load i32, i32* %8, align 4
  %282 = add nsw i32 %281, 3
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8, i8* %280, i64 %283
  %285 = load i8, i8* %284, align 1
  %286 = zext i8 %285 to i32
  %287 = and i32 %286, 2
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %296

289:                                              ; preds = %279
  %290 = load i32, i32* @CDC_CD_RW, align 4
  %291 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %292 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = or i32 %294, %290
  store i32 %295, i32* %293, align 4
  br label %296

296:                                              ; preds = %289, %279
  %297 = load i8*, i8** %3, align 8
  %298 = load i32, i32* %8, align 4
  %299 = add nsw i32 %298, 3
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %297, i64 %300
  %302 = load i8, i8* %301, align 1
  %303 = zext i8 %302 to i32
  %304 = and i32 %303, 1
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %296
  %307 = load i32, i32* @CDC_CD_R, align 4
  %308 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %309 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = or i32 %311, %307
  store i32 %312, i32* %310, align 4
  br label %313

313:                                              ; preds = %306, %296
  %314 = load i8*, i8** %3, align 8
  %315 = load i32, i32* %8, align 4
  %316 = add nsw i32 %315, 6
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8, i8* %314, i64 %317
  %319 = load i8, i8* %318, align 1
  %320 = zext i8 %319 to i32
  %321 = and i32 %320, 8
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %330

323:                                              ; preds = %313
  %324 = load i32, i32* @CDC_OPEN_TRAY, align 4
  %325 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %326 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %325, i32 0, i32 3
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = or i32 %328, %324
  store i32 %329, i32* %327, align 4
  br label %330

330:                                              ; preds = %323, %313
  %331 = load i8*, i8** %3, align 8
  %332 = load i32, i32* %8, align 4
  %333 = add nsw i32 %332, 6
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8, i8* %331, i64 %334
  %336 = load i8, i8* %335, align 1
  %337 = zext i8 %336 to i32
  %338 = ashr i32 %337, 5
  %339 = load i8, i8* @mechtype_individual_changer, align 1
  %340 = zext i8 %339 to i32
  %341 = icmp eq i32 %338, %340
  br i1 %341, label %354, label %342

342:                                              ; preds = %330
  %343 = load i8*, i8** %3, align 8
  %344 = load i32, i32* %8, align 4
  %345 = add nsw i32 %344, 6
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8, i8* %343, i64 %346
  %348 = load i8, i8* %347, align 1
  %349 = zext i8 %348 to i32
  %350 = ashr i32 %349, 5
  %351 = load i8, i8* @mechtype_cartridge_changer, align 1
  %352 = zext i8 %351 to i32
  %353 = icmp eq i32 %350, %352
  br i1 %353, label %354, label %361

354:                                              ; preds = %342, %330
  %355 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %356 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %355, i32 0, i32 3
  %357 = call i32 @cdrom_number_of_slots(%struct.TYPE_2__* %356)
  %358 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %359 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %358, i32 0, i32 3
  %360 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %359, i32 0, i32 2
  store i32 %357, i32* %360, align 4
  br label %361

361:                                              ; preds = %354, %342
  %362 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %363 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %362, i32 0, i32 3
  %364 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 4
  %366 = icmp sle i32 %365, 1
  br i1 %366, label %367, label %374

367:                                              ; preds = %361
  %368 = load i32, i32* @CDC_SELECT_DISC, align 4
  %369 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %370 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %369, i32 0, i32 3
  %371 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = or i32 %372, %368
  store i32 %373, i32* %371, align 4
  br label %374

374:                                              ; preds = %367, %361
  %375 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %376 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %375, i32 0, i32 3
  %377 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @CDC_DVD_RAM, align 4
  %380 = load i32, i32* @CDC_MRW_W, align 4
  %381 = or i32 %379, %380
  %382 = load i32, i32* @CDC_RAM, align 4
  %383 = or i32 %381, %382
  %384 = load i32, i32* @CDC_CD_RW, align 4
  %385 = or i32 %383, %384
  %386 = and i32 %378, %385
  %387 = load i32, i32* @CDC_DVD_RAM, align 4
  %388 = load i32, i32* @CDC_MRW_W, align 4
  %389 = or i32 %387, %388
  %390 = load i32, i32* @CDC_RAM, align 4
  %391 = or i32 %389, %390
  %392 = load i32, i32* @CDC_CD_RW, align 4
  %393 = or i32 %391, %392
  %394 = icmp ne i32 %386, %393
  br i1 %394, label %395, label %398

395:                                              ; preds = %374
  %396 = load %struct.scsi_cd*, %struct.scsi_cd** %2, align 8
  %397 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %396, i32 0, i32 2
  store i32 1, i32* %397, align 4
  br label %398

398:                                              ; preds = %395, %374
  %399 = load i8*, i8** %3, align 8
  %400 = call i32 @kfree(i8* %399)
  br label %401

401:                                              ; preds = %398, %50, %15
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @sr_printk(i32, %struct.scsi_cd*, i8*, ...) #1

declare dso_local i32 @scsi_test_unit_ready(i32, i32, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_mode_sense(i32, i32, i32, i8*, i32, i32, i32, %struct.scsi_mode_data*, i32*) #1

declare dso_local i32 @scsi_status_is_good(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @cdrom_number_of_slots(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
