; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_res.c_snic_alloc_vnic_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_res.c_snic_alloc_vnic_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32*, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"vNIC interrupt mode: %s\0A\00", align 1
@VNIC_DEV_INTR_MODE_INTX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Legacy PCI INTx\00", align 1
@VNIC_DEV_INTR_MODE_MSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@VNIC_DEV_INTR_MODE_MSIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"MSI-X\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"wq %d cq %d intr %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"svnic_dev_stats_dump failed - x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snic_alloc_vnic_res(%struct.snic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snic* %0, %struct.snic** %3, align 8
  %11 = load %struct.snic*, %struct.snic** %3, align 8
  %12 = getelementptr inbounds %struct.snic, %struct.snic* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @svnic_dev_get_intr_mode(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @VNIC_DEV_INTR_MODE_INTX, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %32

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @VNIC_DEV_INTR_MODE_MSI, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %30

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @VNIC_DEV_INTR_MODE_MSIX, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  br label %30

30:                                               ; preds = %24, %23
  %31 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %23 ], [ %29, %24 ]
  br label %32

32:                                               ; preds = %30, %18
  %33 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %18 ], [ %31, %30 ]
  %34 = call i32 (i8*, ...) @SNIC_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @VNIC_DEV_INTR_MODE_MSIX, align 4
  %37 = icmp ne i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @SNIC_BUG_ON(i32 %38)
  %40 = load %struct.snic*, %struct.snic** %3, align 8
  %41 = getelementptr inbounds %struct.snic, %struct.snic* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.snic*, %struct.snic** %3, align 8
  %44 = getelementptr inbounds %struct.snic, %struct.snic* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.snic*, %struct.snic** %3, align 8
  %47 = getelementptr inbounds %struct.snic, %struct.snic* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, ...) @SNIC_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %42, i32 %45, i32 %48)
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %76, %32
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.snic*, %struct.snic** %3, align 8
  %53 = getelementptr inbounds %struct.snic, %struct.snic* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %50
  %57 = load %struct.snic*, %struct.snic** %3, align 8
  %58 = getelementptr inbounds %struct.snic, %struct.snic* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.snic*, %struct.snic** %3, align 8
  %61 = getelementptr inbounds %struct.snic, %struct.snic* %60, i32 0, i32 10
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.snic*, %struct.snic** %3, align 8
  %68 = getelementptr inbounds %struct.snic, %struct.snic* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @svnic_wq_alloc(i32 %59, i32* %65, i32 %66, i32 %70, i32 4)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %56
  br label %276

75:                                               ; preds = %56
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %50

79:                                               ; preds = %50
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %106, %79
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.snic*, %struct.snic** %3, align 8
  %83 = getelementptr inbounds %struct.snic, %struct.snic* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ult i32 %81, %84
  br i1 %85, label %86, label %109

86:                                               ; preds = %80
  %87 = load %struct.snic*, %struct.snic** %3, align 8
  %88 = getelementptr inbounds %struct.snic, %struct.snic* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.snic*, %struct.snic** %3, align 8
  %91 = getelementptr inbounds %struct.snic, %struct.snic* %90, i32 0, i32 9
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.snic*, %struct.snic** %3, align 8
  %98 = getelementptr inbounds %struct.snic, %struct.snic* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @svnic_cq_alloc(i32 %89, i32* %95, i32 %96, i32 %100, i32 4)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %86
  br label %276

105:                                              ; preds = %86
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %9, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %80

109:                                              ; preds = %80
  %110 = load %struct.snic*, %struct.snic** %3, align 8
  %111 = getelementptr inbounds %struct.snic, %struct.snic* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.snic*, %struct.snic** %3, align 8
  %114 = getelementptr inbounds %struct.snic, %struct.snic* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = mul i32 2, %115
  %117 = icmp ne i32 %112, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @SNIC_BUG_ON(i32 %118)
  %120 = load %struct.snic*, %struct.snic** %3, align 8
  %121 = getelementptr inbounds %struct.snic, %struct.snic* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %150, %109
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.snic*, %struct.snic** %3, align 8
  %126 = getelementptr inbounds %struct.snic, %struct.snic* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ult i32 %124, %127
  br i1 %128, label %129, label %153

129:                                              ; preds = %123
  %130 = load %struct.snic*, %struct.snic** %3, align 8
  %131 = getelementptr inbounds %struct.snic, %struct.snic* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.snic*, %struct.snic** %3, align 8
  %134 = getelementptr inbounds %struct.snic, %struct.snic* %133, i32 0, i32 9
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.snic*, %struct.snic** %3, align 8
  %141 = getelementptr inbounds %struct.snic, %struct.snic* %140, i32 0, i32 7
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %143, 3
  %145 = call i32 @svnic_cq_alloc(i32 %132, i32* %138, i32 %139, i32 %144, i32 4)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %129
  br label %276

149:                                              ; preds = %129
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %9, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %123

153:                                              ; preds = %123
  store i32 0, i32* %9, align 4
  br label %154

154:                                              ; preds = %176, %153
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.snic*, %struct.snic** %3, align 8
  %157 = getelementptr inbounds %struct.snic, %struct.snic* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = icmp ult i32 %155, %158
  br i1 %159, label %160, label %179

160:                                              ; preds = %154
  %161 = load %struct.snic*, %struct.snic** %3, align 8
  %162 = getelementptr inbounds %struct.snic, %struct.snic* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.snic*, %struct.snic** %3, align 8
  %165 = getelementptr inbounds %struct.snic, %struct.snic* %164, i32 0, i32 8
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @svnic_intr_alloc(i32 %163, i32* %169, i32 %170)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %160
  br label %276

175:                                              ; preds = %160
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %9, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %154

179:                                              ; preds = %154
  store i32 1, i32* %7, align 4
  %180 = load %struct.snic*, %struct.snic** %3, align 8
  %181 = getelementptr inbounds %struct.snic, %struct.snic* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %183

183:                                              ; preds = %200, %179
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.snic*, %struct.snic** %3, align 8
  %186 = getelementptr inbounds %struct.snic, %struct.snic* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ult i32 %184, %187
  br i1 %188, label %189, label %203

189:                                              ; preds = %183
  %190 = load %struct.snic*, %struct.snic** %3, align 8
  %191 = getelementptr inbounds %struct.snic, %struct.snic* %190, i32 0, i32 10
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* %8, align 4
  %199 = call i32 @svnic_wq_init(i32* %195, i32 %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %189
  %201 = load i32, i32* %9, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %9, align 4
  br label %183

203:                                              ; preds = %183
  store i32 0, i32* %9, align 4
  br label %204

204:                                              ; preds = %220, %203
  %205 = load i32, i32* %9, align 4
  %206 = load %struct.snic*, %struct.snic** %3, align 8
  %207 = getelementptr inbounds %struct.snic, %struct.snic* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp ult i32 %205, %208
  br i1 %209, label %210, label %223

210:                                              ; preds = %204
  %211 = load i32, i32* %9, align 4
  store i32 %211, i32* %6, align 4
  %212 = load %struct.snic*, %struct.snic** %3, align 8
  %213 = getelementptr inbounds %struct.snic, %struct.snic* %212, i32 0, i32 9
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %6, align 4
  %219 = call i32 @svnic_cq_init(i32* %217, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 %218, i32 0)
  br label %220

220:                                              ; preds = %210
  %221 = load i32, i32* %9, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %9, align 4
  br label %204

223:                                              ; preds = %204
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* @VNIC_DEV_INTR_MODE_MSIX, align 4
  %226 = icmp ne i32 %224, %225
  %227 = zext i1 %226 to i32
  %228 = call i32 @SNIC_BUG_ON(i32 %227)
  store i32 1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %229

229:                                              ; preds = %252, %223
  %230 = load i32, i32* %9, align 4
  %231 = load %struct.snic*, %struct.snic** %3, align 8
  %232 = getelementptr inbounds %struct.snic, %struct.snic* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = icmp ult i32 %230, %233
  br i1 %234, label %235, label %255

235:                                              ; preds = %229
  %236 = load %struct.snic*, %struct.snic** %3, align 8
  %237 = getelementptr inbounds %struct.snic, %struct.snic* %236, i32 0, i32 8
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %9, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load %struct.snic*, %struct.snic** %3, align 8
  %243 = getelementptr inbounds %struct.snic, %struct.snic* %242, i32 0, i32 7
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.snic*, %struct.snic** %3, align 8
  %247 = getelementptr inbounds %struct.snic, %struct.snic* %246, i32 0, i32 7
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %5, align 4
  %251 = call i32 @svnic_intr_init(i32* %241, i32 %245, i32 %249, i32 %250)
  br label %252

252:                                              ; preds = %235
  %253 = load i32, i32* %9, align 4
  %254 = add i32 %253, 1
  store i32 %254, i32* %9, align 4
  br label %229

255:                                              ; preds = %229
  %256 = load %struct.snic*, %struct.snic** %3, align 8
  %257 = getelementptr inbounds %struct.snic, %struct.snic* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.snic*, %struct.snic** %3, align 8
  %260 = getelementptr inbounds %struct.snic, %struct.snic* %259, i32 0, i32 6
  %261 = call i32 @svnic_dev_stats_dump(i32 %258, i32* %260)
  store i32 %261, i32* %10, align 4
  %262 = load i32, i32* %10, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %255
  %265 = load %struct.snic*, %struct.snic** %3, align 8
  %266 = getelementptr inbounds %struct.snic, %struct.snic* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %10, align 4
  %269 = call i32 @SNIC_HOST_ERR(i32 %267, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %268)
  br label %276

270:                                              ; preds = %255
  %271 = load %struct.snic*, %struct.snic** %3, align 8
  %272 = getelementptr inbounds %struct.snic, %struct.snic* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @svnic_dev_stats_clear(i32 %273)
  store i32 0, i32* %10, align 4
  %275 = load i32, i32* %10, align 4
  store i32 %275, i32* %2, align 4
  br label %280

276:                                              ; preds = %264, %174, %148, %104, %74
  %277 = load %struct.snic*, %struct.snic** %3, align 8
  %278 = call i32 @snic_free_vnic_res(%struct.snic* %277)
  %279 = load i32, i32* %10, align 4
  store i32 %279, i32* %2, align 4
  br label %280

280:                                              ; preds = %276, %270
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local i32 @svnic_dev_get_intr_mode(i32) #1

declare dso_local i32 @SNIC_INFO(i8*, ...) #1

declare dso_local i32 @SNIC_BUG_ON(i32) #1

declare dso_local i32 @svnic_wq_alloc(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @svnic_cq_alloc(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @svnic_intr_alloc(i32, i32*, i32) #1

declare dso_local i32 @svnic_wq_init(i32*, i32, i32, i32) #1

declare dso_local i32 @svnic_cq_init(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @svnic_intr_init(i32*, i32, i32, i32) #1

declare dso_local i32 @svnic_dev_stats_dump(i32, i32*) #1

declare dso_local i32 @SNIC_HOST_ERR(i32, i8*, i32) #1

declare dso_local i32 @svnic_dev_stats_clear(i32) #1

declare dso_local i32 @snic_free_vnic_res(%struct.snic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
