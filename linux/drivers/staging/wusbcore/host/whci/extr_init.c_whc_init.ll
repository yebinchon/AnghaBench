; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_init.c_whc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_init.c_whc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { i32, i8*, i32, %struct.TYPE_4__*, i8*, i32, i32*, i32, i32*, i32, i32, i64, i64, i32, i32*, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@whc_dn_work = common dso_local global i32 0, align 4
@scan_async_work = common dso_local global i32 0, align 4
@scan_periodic_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"whci-hc\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"can't request HC region\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ioremap\0A\00", align 1
@WHCSPARAMS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"N_DEVICES = %d, N_KEYS = %d, N_MMC_IES = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"qset\00", align 1
@WHC_GEN_CMD_DATA_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@WHC_N_DN_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @whc_init(%struct.whc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.whc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.whc* %0, %struct.whc** %3, align 8
  %9 = load %struct.whc*, %struct.whc** %3, align 8
  %10 = getelementptr inbounds %struct.whc, %struct.whc* %9, i32 0, i32 25
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.whc*, %struct.whc** %3, align 8
  %13 = getelementptr inbounds %struct.whc, %struct.whc* %12, i32 0, i32 24
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load %struct.whc*, %struct.whc** %3, align 8
  %16 = getelementptr inbounds %struct.whc, %struct.whc* %15, i32 0, i32 23
  %17 = call i32 @init_waitqueue_head(i32* %16)
  %18 = load %struct.whc*, %struct.whc** %3, align 8
  %19 = getelementptr inbounds %struct.whc, %struct.whc* %18, i32 0, i32 22
  %20 = call i32 @init_waitqueue_head(i32* %19)
  %21 = load %struct.whc*, %struct.whc** %3, align 8
  %22 = getelementptr inbounds %struct.whc, %struct.whc* %21, i32 0, i32 21
  %23 = call i32 @init_waitqueue_head(i32* %22)
  %24 = load %struct.whc*, %struct.whc** %3, align 8
  %25 = getelementptr inbounds %struct.whc, %struct.whc* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @dev_name(i32* %27)
  %29 = call i32* @alloc_ordered_workqueue(i32 %28, i32 0)
  %30 = load %struct.whc*, %struct.whc** %3, align 8
  %31 = getelementptr inbounds %struct.whc, %struct.whc* %30, i32 0, i32 20
  store i32* %29, i32** %31, align 8
  %32 = load %struct.whc*, %struct.whc** %3, align 8
  %33 = getelementptr inbounds %struct.whc, %struct.whc* %32, i32 0, i32 20
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %256

39:                                               ; preds = %1
  %40 = load %struct.whc*, %struct.whc** %3, align 8
  %41 = getelementptr inbounds %struct.whc, %struct.whc* %40, i32 0, i32 19
  %42 = load i32, i32* @whc_dn_work, align 4
  %43 = call i32 @INIT_WORK(i32* %41, i32 %42)
  %44 = load %struct.whc*, %struct.whc** %3, align 8
  %45 = getelementptr inbounds %struct.whc, %struct.whc* %44, i32 0, i32 18
  %46 = load i32, i32* @scan_async_work, align 4
  %47 = call i32 @INIT_WORK(i32* %45, i32 %46)
  %48 = load %struct.whc*, %struct.whc** %3, align 8
  %49 = getelementptr inbounds %struct.whc, %struct.whc* %48, i32 0, i32 17
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.whc*, %struct.whc** %3, align 8
  %52 = getelementptr inbounds %struct.whc, %struct.whc* %51, i32 0, i32 16
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.whc*, %struct.whc** %3, align 8
  %55 = getelementptr inbounds %struct.whc, %struct.whc* %54, i32 0, i32 15
  %56 = load i32, i32* @scan_periodic_work, align 4
  %57 = call i32 @INIT_WORK(i32* %55, i32 %56)
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %69, %39
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 5
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load %struct.whc*, %struct.whc** %3, align 8
  %63 = getelementptr inbounds %struct.whc, %struct.whc* %62, i32 0, i32 14
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  br label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %58

72:                                               ; preds = %58
  %73 = load %struct.whc*, %struct.whc** %3, align 8
  %74 = getelementptr inbounds %struct.whc, %struct.whc* %73, i32 0, i32 13
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  %76 = load %struct.whc*, %struct.whc** %3, align 8
  %77 = getelementptr inbounds %struct.whc, %struct.whc* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %7, align 8
  %82 = load %struct.whc*, %struct.whc** %3, align 8
  %83 = getelementptr inbounds %struct.whc, %struct.whc* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = sub nsw i64 %87, %88
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %8, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @request_mem_region(i64 %91, i64 %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %72
  %96 = load %struct.whc*, %struct.whc** %3, align 8
  %97 = getelementptr inbounds %struct.whc, %struct.whc* %96, i32 0, i32 3
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = call i32 @dev_err(i32* %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* @EBUSY, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %256

103:                                              ; preds = %72
  %104 = load i64, i64* %7, align 8
  %105 = load %struct.whc*, %struct.whc** %3, align 8
  %106 = getelementptr inbounds %struct.whc, %struct.whc* %105, i32 0, i32 12
  store i64 %104, i64* %106, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i64 @ioremap(i64 %107, i64 %108)
  %110 = load %struct.whc*, %struct.whc** %3, align 8
  %111 = getelementptr inbounds %struct.whc, %struct.whc* %110, i32 0, i32 11
  store i64 %109, i64* %111, align 8
  %112 = load %struct.whc*, %struct.whc** %3, align 8
  %113 = getelementptr inbounds %struct.whc, %struct.whc* %112, i32 0, i32 11
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %103
  %117 = load %struct.whc*, %struct.whc** %3, align 8
  %118 = getelementptr inbounds %struct.whc, %struct.whc* %117, i32 0, i32 3
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = call i32 @dev_err(i32* %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %256

124:                                              ; preds = %103
  %125 = load %struct.whc*, %struct.whc** %3, align 8
  %126 = call i32 @whc_hw_reset(%struct.whc* %125)
  %127 = load %struct.whc*, %struct.whc** %3, align 8
  %128 = getelementptr inbounds %struct.whc, %struct.whc* %127, i32 0, i32 11
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @WHCSPARAMS, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @le_readl(i64 %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @WHCSPARAMS_TO_N_DEVICES(i32 %133)
  %135 = load %struct.whc*, %struct.whc** %3, align 8
  %136 = getelementptr inbounds %struct.whc, %struct.whc* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @WHCSPARAMS_TO_N_KEYS(i32 %137)
  %139 = load %struct.whc*, %struct.whc** %3, align 8
  %140 = getelementptr inbounds %struct.whc, %struct.whc* %139, i32 0, i32 10
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @WHCSPARAMS_TO_N_MMC_IES(i32 %141)
  %143 = load %struct.whc*, %struct.whc** %3, align 8
  %144 = getelementptr inbounds %struct.whc, %struct.whc* %143, i32 0, i32 9
  store i32 %142, i32* %144, align 8
  %145 = load %struct.whc*, %struct.whc** %3, align 8
  %146 = getelementptr inbounds %struct.whc, %struct.whc* %145, i32 0, i32 3
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load %struct.whc*, %struct.whc** %3, align 8
  %150 = getelementptr inbounds %struct.whc, %struct.whc* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.whc*, %struct.whc** %3, align 8
  %153 = getelementptr inbounds %struct.whc, %struct.whc* %152, i32 0, i32 10
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.whc*, %struct.whc** %3, align 8
  %156 = getelementptr inbounds %struct.whc, %struct.whc* %155, i32 0, i32 9
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @dev_dbg(i32* %148, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %151, i32 %154, i32 %157)
  %159 = load %struct.whc*, %struct.whc** %3, align 8
  %160 = getelementptr inbounds %struct.whc, %struct.whc* %159, i32 0, i32 3
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = call i32* @dma_pool_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %162, i32 4, i32 64, i32 0)
  %164 = load %struct.whc*, %struct.whc** %3, align 8
  %165 = getelementptr inbounds %struct.whc, %struct.whc* %164, i32 0, i32 8
  store i32* %163, i32** %165, align 8
  %166 = load %struct.whc*, %struct.whc** %3, align 8
  %167 = getelementptr inbounds %struct.whc, %struct.whc* %166, i32 0, i32 8
  %168 = load i32*, i32** %167, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %124
  %171 = load i32, i32* @ENOMEM, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %5, align 4
  br label %256

173:                                              ; preds = %124
  %174 = load %struct.whc*, %struct.whc** %3, align 8
  %175 = call i32 @asl_init(%struct.whc* %174)
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %5, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %256

179:                                              ; preds = %173
  %180 = load %struct.whc*, %struct.whc** %3, align 8
  %181 = call i32 @pzl_init(%struct.whc* %180)
  store i32 %181, i32* %5, align 4
  %182 = load i32, i32* %5, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  br label %256

185:                                              ; preds = %179
  %186 = load %struct.whc*, %struct.whc** %3, align 8
  %187 = getelementptr inbounds %struct.whc, %struct.whc* %186, i32 0, i32 3
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* @WHC_GEN_CMD_DATA_LEN, align 4
  %191 = load %struct.whc*, %struct.whc** %3, align 8
  %192 = getelementptr inbounds %struct.whc, %struct.whc* %191, i32 0, i32 7
  %193 = load i32, i32* @GFP_KERNEL, align 4
  %194 = call i8* @dma_alloc_coherent(i32* %189, i32 %190, i32* %192, i32 %193)
  %195 = bitcast i8* %194 to i32*
  %196 = load %struct.whc*, %struct.whc** %3, align 8
  %197 = getelementptr inbounds %struct.whc, %struct.whc* %196, i32 0, i32 6
  store i32* %195, i32** %197, align 8
  %198 = load %struct.whc*, %struct.whc** %3, align 8
  %199 = getelementptr inbounds %struct.whc, %struct.whc* %198, i32 0, i32 6
  %200 = load i32*, i32** %199, align 8
  %201 = icmp eq i32* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %185
  %203 = load i32, i32* @ENOMEM, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %5, align 4
  br label %256

205:                                              ; preds = %185
  %206 = load %struct.whc*, %struct.whc** %3, align 8
  %207 = getelementptr inbounds %struct.whc, %struct.whc* %206, i32 0, i32 3
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i32, i32* @WHC_N_DN_ENTRIES, align 4
  %211 = sext i32 %210 to i64
  %212 = mul i64 4, %211
  %213 = trunc i64 %212 to i32
  %214 = load %struct.whc*, %struct.whc** %3, align 8
  %215 = getelementptr inbounds %struct.whc, %struct.whc* %214, i32 0, i32 5
  %216 = load i32, i32* @GFP_KERNEL, align 4
  %217 = call i8* @dma_alloc_coherent(i32* %209, i32 %213, i32* %215, i32 %216)
  %218 = load %struct.whc*, %struct.whc** %3, align 8
  %219 = getelementptr inbounds %struct.whc, %struct.whc* %218, i32 0, i32 4
  store i8* %217, i8** %219, align 8
  %220 = load %struct.whc*, %struct.whc** %3, align 8
  %221 = getelementptr inbounds %struct.whc, %struct.whc* %220, i32 0, i32 4
  %222 = load i8*, i8** %221, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %227, label %224

224:                                              ; preds = %205
  %225 = load i32, i32* @ENOMEM, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %5, align 4
  br label %256

227:                                              ; preds = %205
  %228 = load %struct.whc*, %struct.whc** %3, align 8
  %229 = call i32 @whc_hw_init_dn_buf(%struct.whc* %228)
  %230 = load %struct.whc*, %struct.whc** %3, align 8
  %231 = getelementptr inbounds %struct.whc, %struct.whc* %230, i32 0, i32 3
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load %struct.whc*, %struct.whc** %3, align 8
  %235 = getelementptr inbounds %struct.whc, %struct.whc* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = sext i32 %236 to i64
  %238 = mul i64 4, %237
  %239 = trunc i64 %238 to i32
  %240 = load %struct.whc*, %struct.whc** %3, align 8
  %241 = getelementptr inbounds %struct.whc, %struct.whc* %240, i32 0, i32 2
  %242 = load i32, i32* @GFP_KERNEL, align 4
  %243 = call i8* @dma_alloc_coherent(i32* %233, i32 %239, i32* %241, i32 %242)
  %244 = load %struct.whc*, %struct.whc** %3, align 8
  %245 = getelementptr inbounds %struct.whc, %struct.whc* %244, i32 0, i32 1
  store i8* %243, i8** %245, align 8
  %246 = load %struct.whc*, %struct.whc** %3, align 8
  %247 = getelementptr inbounds %struct.whc, %struct.whc* %246, i32 0, i32 1
  %248 = load i8*, i8** %247, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %253, label %250

250:                                              ; preds = %227
  %251 = load i32, i32* @ENOMEM, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %5, align 4
  br label %256

253:                                              ; preds = %227
  %254 = load %struct.whc*, %struct.whc** %3, align 8
  %255 = call i32 @whc_hw_init_di_buf(%struct.whc* %254)
  store i32 0, i32* %2, align 4
  br label %260

256:                                              ; preds = %250, %224, %202, %184, %178, %170, %116, %95, %36
  %257 = load %struct.whc*, %struct.whc** %3, align 8
  %258 = call i32 @whc_clean_up(%struct.whc* %257)
  %259 = load i32, i32* %5, align 4
  store i32 %259, i32* %2, align 4
  br label %260

260:                                              ; preds = %256, %253
  %261 = load i32, i32* %2, align 4
  ret i32 %261
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32* @alloc_ordered_workqueue(i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @request_mem_region(i64, i64, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @ioremap(i64, i64) #1

declare dso_local i32 @whc_hw_reset(%struct.whc*) #1

declare dso_local i32 @le_readl(i64) #1

declare dso_local i32 @WHCSPARAMS_TO_N_DEVICES(i32) #1

declare dso_local i32 @WHCSPARAMS_TO_N_KEYS(i32) #1

declare dso_local i32 @WHCSPARAMS_TO_N_MMC_IES(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32* @dma_pool_create(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @asl_init(%struct.whc*) #1

declare dso_local i32 @pzl_init(%struct.whc*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @whc_hw_init_dn_buf(%struct.whc*) #1

declare dso_local i32 @whc_hw_init_di_buf(%struct.whc*) #1

declare dso_local i32 @whc_clean_up(%struct.whc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
