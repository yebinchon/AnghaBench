; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, i32, i32, i32, i32 }
%struct.scsi_host_template = type { i32 }
%struct.device = type { i32 }
%struct.aha1542_hostdata = type { i32, i32, i64, i32, i8*, i32, i8* }

@io = common dso_local global i32* null, align 8
@__const.aha1542_hw_init.dma_info = private unnamed_addr constant [7 x i8] c"no DMA\00", align 1
@AHA1542_REGION_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"aha1542\00", align 1
@AHA1542_MAILBOXES = common dso_local global i32 0, align 4
@bus_on = common dso_local global i32* null, align 8
@bus_off = common dso_local global i32* null, align 8
@dma_speed = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"DMA %d\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Adaptec AHA-1542 (SCSI-ID %d) at IO 0x%x, IRQ %d, %s\0A\00", align 1
@BIOS_TRANSLATION_25563 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Using extended bios translation\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@aha1542_interrupt = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Unable to allocate IRQ.\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Unable to allocate DMA channel.\0A\00", align 1
@DMA_MODE_CASCADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Scsi_Host* (%struct.scsi_host_template*, %struct.device*, i32)* @aha1542_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Scsi_Host* @aha1542_hw_init(%struct.scsi_host_template* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_host_template*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.aha1542_hostdata*, align 8
  %11 = alloca [7 x i8], align 1
  store %struct.scsi_host_template* %0, %struct.scsi_host_template** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** @io, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = bitcast [7 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.aha1542_hw_init.dma_info, i32 0, i32 0), i64 7, i1 false)
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %4, align 8
  br label %269

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @AHA1542_REGION_SIZE, align 4
  %24 = call i32 @request_region(i32 %22, i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %4, align 8
  br label %269

27:                                               ; preds = %21
  %28 = load %struct.scsi_host_template*, %struct.scsi_host_template** %5, align 8
  %29 = call %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template* %28, i32 48)
  store %struct.Scsi_Host* %29, %struct.Scsi_Host** %9, align 8
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %31 = icmp ne %struct.Scsi_Host* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %265

33:                                               ; preds = %27
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %35 = call %struct.aha1542_hostdata* @shost_priv(%struct.Scsi_Host* %34)
  store %struct.aha1542_hostdata* %35, %struct.aha1542_hostdata** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %38 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %41 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @AHA1542_REGION_SIZE, align 4
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %44 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @AHA1542_MAILBOXES, align 4
  %46 = mul nsw i32 2, %45
  %47 = sub nsw i32 %46, 1
  %48 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %10, align 8
  %49 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @AHA1542_MAILBOXES, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %10, align 8
  %53 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %55 = call i32 @aha1542_test_port(%struct.Scsi_Host* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %33
  br label %262

58:                                               ; preds = %33
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %60 = load i32*, i32** @bus_on, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** @bus_off, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** @dma_speed, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @aha1542_set_bus_times(%struct.Scsi_Host* %59, i32 %64, i32 %69, i32 %74)
  %76 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %77 = call i64 @aha1542_query(%struct.Scsi_Host* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %58
  br label %262

80:                                               ; preds = %58
  %81 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %82 = call i32 @aha1542_getconfig(%struct.Scsi_Host* %81)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %262

85:                                               ; preds = %80
  %86 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %87 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 255
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  %92 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %93 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @snprintf(i8* %91, i32 7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %85
  %97 = load i32, i32* @KERN_INFO, align 4
  %98 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %99 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %100 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %104 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  %107 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %97, %struct.Scsi_Host* %98, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %102, i32 %105, i8* %106)
  %108 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %10, align 8
  %109 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @BIOS_TRANSLATION_25563, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %96
  %114 = load i32, i32* @KERN_INFO, align 4
  %115 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %116 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %114, %struct.Scsi_Host* %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %117

117:                                              ; preds = %113, %96
  %118 = load %struct.device*, %struct.device** %6, align 8
  %119 = call i32 @DMA_BIT_MASK(i32 24)
  %120 = call i64 @dma_set_mask_and_coherent(%struct.device* %118, i32 %119)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %262

123:                                              ; preds = %117
  %124 = load %struct.device*, %struct.device** %6, align 8
  %125 = load i32, i32* @AHA1542_MAILBOXES, align 4
  %126 = mul nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %10, align 8
  %131 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %130, i32 0, i32 3
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call i8* @dma_alloc_coherent(%struct.device* %124, i32 %129, i32* %131, i32 %132)
  %134 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %10, align 8
  %135 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %134, i32 0, i32 4
  store i8* %133, i8** %135, align 8
  %136 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %10, align 8
  %137 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %136, i32 0, i32 4
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %123
  br label %262

141:                                              ; preds = %123
  %142 = load %struct.device*, %struct.device** %6, align 8
  %143 = load i32, i32* @AHA1542_MAILBOXES, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 %144, 4
  %146 = trunc i64 %145 to i32
  %147 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %10, align 8
  %148 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %147, i32 0, i32 5
  %149 = load i32, i32* @GFP_KERNEL, align 4
  %150 = call i8* @dma_alloc_coherent(%struct.device* %142, i32 %146, i32* %148, i32 %149)
  %151 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %10, align 8
  %152 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %151, i32 0, i32 6
  store i8* %150, i8** %152, align 8
  %153 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %10, align 8
  %154 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %153, i32 0, i32 6
  %155 = load i8*, i8** %154, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %141
  br label %248

158:                                              ; preds = %141
  %159 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %160 = call i32 @setup_mailboxes(%struct.Scsi_Host* %159)
  %161 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %162 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @aha1542_interrupt, align 4
  %165 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %166 = call i64 @request_irq(i32 %163, i32 %164, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.Scsi_Host* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %158
  %169 = load i32, i32* @KERN_ERR, align 4
  %170 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %171 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %169, %struct.Scsi_Host* %170, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %235

172:                                              ; preds = %158
  %173 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %174 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 255
  br i1 %176, label %177, label %208

177:                                              ; preds = %172
  %178 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %179 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @request_dma(i32 %180, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = load i32, i32* @KERN_ERR, align 4
  %185 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %186 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %184, %struct.Scsi_Host* %185, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %229

187:                                              ; preds = %177
  %188 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %189 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %197, label %192

192:                                              ; preds = %187
  %193 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %194 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = icmp sge i32 %195, 5
  br i1 %196, label %197, label %207

197:                                              ; preds = %192, %187
  %198 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %199 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @DMA_MODE_CASCADE, align 4
  %202 = call i32 @set_dma_mode(i32 %200, i32 %201)
  %203 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %204 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @enable_dma(i32 %205)
  br label %207

207:                                              ; preds = %197, %192
  br label %208

208:                                              ; preds = %207, %172
  %209 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %210 = load %struct.device*, %struct.device** %6, align 8
  %211 = call i64 @scsi_add_host(%struct.Scsi_Host* %209, %struct.device* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  br label %218

214:                                              ; preds = %208
  %215 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %216 = call i32 @scsi_scan_host(%struct.Scsi_Host* %215)
  %217 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  store %struct.Scsi_Host* %217, %struct.Scsi_Host** %4, align 8
  br label %269

218:                                              ; preds = %213
  %219 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %220 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 255
  br i1 %222, label %223, label %228

223:                                              ; preds = %218
  %224 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %225 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @free_dma(i32 %226)
  br label %228

228:                                              ; preds = %223, %218
  br label %229

229:                                              ; preds = %228, %183
  %230 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %231 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %234 = call i32 @free_irq(i32 %232, %struct.Scsi_Host* %233)
  br label %235

235:                                              ; preds = %229, %168
  %236 = load %struct.device*, %struct.device** %6, align 8
  %237 = load i32, i32* @AHA1542_MAILBOXES, align 4
  %238 = sext i32 %237 to i64
  %239 = mul i64 %238, 4
  %240 = trunc i64 %239 to i32
  %241 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %10, align 8
  %242 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %241, i32 0, i32 6
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %10, align 8
  %245 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @dma_free_coherent(%struct.device* %236, i32 %240, i8* %243, i32 %246)
  br label %248

248:                                              ; preds = %235, %157
  %249 = load %struct.device*, %struct.device** %6, align 8
  %250 = load i32, i32* @AHA1542_MAILBOXES, align 4
  %251 = mul nsw i32 %250, 2
  %252 = sext i32 %251 to i64
  %253 = mul i64 %252, 4
  %254 = trunc i64 %253 to i32
  %255 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %10, align 8
  %256 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %255, i32 0, i32 4
  %257 = load i8*, i8** %256, align 8
  %258 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %10, align 8
  %259 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @dma_free_coherent(%struct.device* %249, i32 %254, i8* %257, i32 %260)
  br label %262

262:                                              ; preds = %248, %140, %122, %84, %79, %57
  %263 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %264 = call i32 @scsi_host_put(%struct.Scsi_Host* %263)
  br label %265

265:                                              ; preds = %262, %32
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* @AHA1542_REGION_SIZE, align 4
  %268 = call i32 @release_region(i32 %266, i32 %267)
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %4, align 8
  br label %269

269:                                              ; preds = %265, %214, %26, %20
  %270 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  ret %struct.Scsi_Host* %270
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @request_region(i32, i32, i8*) #2

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template*, i32) #2

declare dso_local %struct.aha1542_hostdata* @shost_priv(%struct.Scsi_Host*) #2

declare dso_local i32 @aha1542_test_port(%struct.Scsi_Host*) #2

declare dso_local i32 @aha1542_set_bus_times(%struct.Scsi_Host*, i32, i32, i32) #2

declare dso_local i64 @aha1542_query(%struct.Scsi_Host*) #2

declare dso_local i32 @aha1542_getconfig(%struct.Scsi_Host*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*, ...) #2

declare dso_local i64 @dma_set_mask_and_coherent(%struct.device*, i32) #2

declare dso_local i32 @DMA_BIT_MASK(i32) #2

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #2

declare dso_local i32 @setup_mailboxes(%struct.Scsi_Host*) #2

declare dso_local i64 @request_irq(i32, i32, i32, i8*, %struct.Scsi_Host*) #2

declare dso_local i64 @request_dma(i32, i8*) #2

declare dso_local i32 @set_dma_mode(i32, i32) #2

declare dso_local i32 @enable_dma(i32) #2

declare dso_local i64 @scsi_add_host(%struct.Scsi_Host*, %struct.device*) #2

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #2

declare dso_local i32 @free_dma(i32) #2

declare dso_local i32 @free_irq(i32, %struct.Scsi_Host*) #2

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i8*, i32) #2

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #2

declare dso_local i32 @release_region(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
