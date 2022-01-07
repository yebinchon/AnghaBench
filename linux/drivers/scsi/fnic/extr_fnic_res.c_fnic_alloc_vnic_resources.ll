; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_res.c_fnic_alloc_vnic_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_res.c_fnic_alloc_vnic_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32*, i32*, i32*, i32*, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"vNIC interrupt mode: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"legacy PCI INTx\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"MSI-X\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"vNIC resources avail: wq %d cp_wq %d raw_wq %d rq %d cq %d intr %d\0A\00", align 1
@RES_TYPE_INTR_PBA_LEGACY = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Failed to hook legacy pba resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"vnic_dev_stats_dump failed - x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_alloc_vnic_resources(%struct.fnic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fnic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fnic* %0, %struct.fnic** %3, align 8
  %13 = load %struct.fnic*, %struct.fnic** %3, align 8
  %14 = getelementptr inbounds %struct.fnic, %struct.fnic* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @vnic_dev_get_intr_mode(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @KERN_INFO, align 4
  %18 = load %struct.fnic*, %struct.fnic** %3, align 8
  %19 = getelementptr inbounds %struct.fnic, %struct.fnic* %18, i32 0, i32 7
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 130
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %37

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 129
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %35

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 128
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  br label %35

35:                                               ; preds = %30, %29
  %36 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %29 ], [ %34, %30 ]
  br label %37

37:                                               ; preds = %35, %25
  %38 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %25 ], [ %36, %35 ]
  %39 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %17, i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* @KERN_INFO, align 4
  %41 = load %struct.fnic*, %struct.fnic** %3, align 8
  %42 = getelementptr inbounds %struct.fnic, %struct.fnic* %41, i32 0, i32 7
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fnic*, %struct.fnic** %3, align 8
  %47 = getelementptr inbounds %struct.fnic, %struct.fnic* %46, i32 0, i32 16
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fnic*, %struct.fnic** %3, align 8
  %50 = getelementptr inbounds %struct.fnic, %struct.fnic* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.fnic*, %struct.fnic** %3, align 8
  %53 = getelementptr inbounds %struct.fnic, %struct.fnic* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fnic*, %struct.fnic** %3, align 8
  %56 = getelementptr inbounds %struct.fnic, %struct.fnic* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.fnic*, %struct.fnic** %3, align 8
  %59 = getelementptr inbounds %struct.fnic, %struct.fnic* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.fnic*, %struct.fnic** %3, align 8
  %62 = getelementptr inbounds %struct.fnic, %struct.fnic* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %40, i32 %45, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i32 %48, i32 %51, i32 %54, i32 %57, i32 %60, i32 %63)
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %91, %37
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.fnic*, %struct.fnic** %3, align 8
  %68 = getelementptr inbounds %struct.fnic, %struct.fnic* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %65
  %72 = load %struct.fnic*, %struct.fnic** %3, align 8
  %73 = getelementptr inbounds %struct.fnic, %struct.fnic* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.fnic*, %struct.fnic** %3, align 8
  %76 = getelementptr inbounds %struct.fnic, %struct.fnic* %75, i32 0, i32 13
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.fnic*, %struct.fnic** %3, align 8
  %83 = getelementptr inbounds %struct.fnic, %struct.fnic* %82, i32 0, i32 9
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @vnic_wq_alloc(i32 %74, i32* %80, i32 %81, i32 %85, i32 4)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %71
  br label %469

90:                                               ; preds = %71
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %9, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %65

94:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %125, %94
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.fnic*, %struct.fnic** %3, align 8
  %98 = getelementptr inbounds %struct.fnic, %struct.fnic* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ult i32 %96, %99
  br i1 %100, label %101, label %128

101:                                              ; preds = %95
  %102 = load %struct.fnic*, %struct.fnic** %3, align 8
  %103 = getelementptr inbounds %struct.fnic, %struct.fnic* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.fnic*, %struct.fnic** %3, align 8
  %106 = getelementptr inbounds %struct.fnic, %struct.fnic* %105, i32 0, i32 12
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load %struct.fnic*, %struct.fnic** %3, align 8
  %112 = getelementptr inbounds %struct.fnic, %struct.fnic* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add i32 %113, %114
  %116 = load %struct.fnic*, %struct.fnic** %3, align 8
  %117 = getelementptr inbounds %struct.fnic, %struct.fnic* %116, i32 0, i32 9
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @vnic_wq_copy_alloc(i32 %104, i32* %110, i32 %115, i32 %119, i32 4)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %101
  br label %469

124:                                              ; preds = %101
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %9, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %95

128:                                              ; preds = %95
  store i32 0, i32* %9, align 4
  br label %129

129:                                              ; preds = %155, %128
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.fnic*, %struct.fnic** %3, align 8
  %132 = getelementptr inbounds %struct.fnic, %struct.fnic* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp ult i32 %130, %133
  br i1 %134, label %135, label %158

135:                                              ; preds = %129
  %136 = load %struct.fnic*, %struct.fnic** %3, align 8
  %137 = getelementptr inbounds %struct.fnic, %struct.fnic* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.fnic*, %struct.fnic** %3, align 8
  %140 = getelementptr inbounds %struct.fnic, %struct.fnic* %139, i32 0, i32 14
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.fnic*, %struct.fnic** %3, align 8
  %147 = getelementptr inbounds %struct.fnic, %struct.fnic* %146, i32 0, i32 9
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @vnic_rq_alloc(i32 %138, i32* %144, i32 %145, i32 %149, i32 4)
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %135
  br label %469

154:                                              ; preds = %135
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %9, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %129

158:                                              ; preds = %129
  store i32 0, i32* %9, align 4
  br label %159

159:                                              ; preds = %186, %158
  %160 = load i32, i32* %9, align 4
  %161 = load %struct.fnic*, %struct.fnic** %3, align 8
  %162 = getelementptr inbounds %struct.fnic, %struct.fnic* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = icmp ult i32 %160, %163
  br i1 %164, label %165, label %189

165:                                              ; preds = %159
  %166 = load i32, i32* %9, align 4
  store i32 %166, i32* %10, align 4
  %167 = load %struct.fnic*, %struct.fnic** %3, align 8
  %168 = getelementptr inbounds %struct.fnic, %struct.fnic* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.fnic*, %struct.fnic** %3, align 8
  %171 = getelementptr inbounds %struct.fnic, %struct.fnic* %170, i32 0, i32 11
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.fnic*, %struct.fnic** %3, align 8
  %178 = getelementptr inbounds %struct.fnic, %struct.fnic* %177, i32 0, i32 9
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @vnic_cq_alloc(i32 %169, i32* %175, i32 %176, i32 %180, i32 4)
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %165
  br label %469

185:                                              ; preds = %165
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %9, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %9, align 4
  br label %159

189:                                              ; preds = %159
  store i32 0, i32* %9, align 4
  br label %190

190:                                              ; preds = %221, %189
  %191 = load i32, i32* %9, align 4
  %192 = load %struct.fnic*, %struct.fnic** %3, align 8
  %193 = getelementptr inbounds %struct.fnic, %struct.fnic* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp ult i32 %191, %194
  br i1 %195, label %196, label %224

196:                                              ; preds = %190
  %197 = load %struct.fnic*, %struct.fnic** %3, align 8
  %198 = getelementptr inbounds %struct.fnic, %struct.fnic* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = add i32 %199, %200
  store i32 %201, i32* %10, align 4
  %202 = load %struct.fnic*, %struct.fnic** %3, align 8
  %203 = getelementptr inbounds %struct.fnic, %struct.fnic* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.fnic*, %struct.fnic** %3, align 8
  %206 = getelementptr inbounds %struct.fnic, %struct.fnic* %205, i32 0, i32 11
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %10, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %10, align 4
  %212 = load %struct.fnic*, %struct.fnic** %3, align 8
  %213 = getelementptr inbounds %struct.fnic, %struct.fnic* %212, i32 0, i32 9
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @vnic_cq_alloc(i32 %204, i32* %210, i32 %211, i32 %215, i32 4)
  store i32 %216, i32* %12, align 4
  %217 = load i32, i32* %12, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %196
  br label %469

220:                                              ; preds = %196
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %9, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %9, align 4
  br label %190

224:                                              ; preds = %190
  %225 = load %struct.fnic*, %struct.fnic** %3, align 8
  %226 = getelementptr inbounds %struct.fnic, %struct.fnic* %225, i32 0, i32 9
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = mul nsw i32 %228, 3
  store i32 %229, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %230

230:                                              ; preds = %262, %224
  %231 = load i32, i32* %9, align 4
  %232 = load %struct.fnic*, %struct.fnic** %3, align 8
  %233 = getelementptr inbounds %struct.fnic, %struct.fnic* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp ult i32 %231, %234
  br i1 %235, label %236, label %265

236:                                              ; preds = %230
  %237 = load %struct.fnic*, %struct.fnic** %3, align 8
  %238 = getelementptr inbounds %struct.fnic, %struct.fnic* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.fnic*, %struct.fnic** %3, align 8
  %241 = getelementptr inbounds %struct.fnic, %struct.fnic* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = add i32 %239, %242
  %244 = load i32, i32* %9, align 4
  %245 = add i32 %243, %244
  store i32 %245, i32* %10, align 4
  %246 = load %struct.fnic*, %struct.fnic** %3, align 8
  %247 = getelementptr inbounds %struct.fnic, %struct.fnic* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.fnic*, %struct.fnic** %3, align 8
  %250 = getelementptr inbounds %struct.fnic, %struct.fnic* %249, i32 0, i32 11
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %10, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* %11, align 4
  %257 = call i32 @vnic_cq_alloc(i32 %248, i32* %254, i32 %255, i32 %256, i32 4)
  store i32 %257, i32* %12, align 4
  %258 = load i32, i32* %12, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %236
  br label %469

261:                                              ; preds = %236
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %9, align 4
  %264 = add i32 %263, 1
  store i32 %264, i32* %9, align 4
  br label %230

265:                                              ; preds = %230
  store i32 0, i32* %9, align 4
  br label %266

266:                                              ; preds = %288, %265
  %267 = load i32, i32* %9, align 4
  %268 = load %struct.fnic*, %struct.fnic** %3, align 8
  %269 = getelementptr inbounds %struct.fnic, %struct.fnic* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = icmp ult i32 %267, %270
  br i1 %271, label %272, label %291

272:                                              ; preds = %266
  %273 = load %struct.fnic*, %struct.fnic** %3, align 8
  %274 = getelementptr inbounds %struct.fnic, %struct.fnic* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.fnic*, %struct.fnic** %3, align 8
  %277 = getelementptr inbounds %struct.fnic, %struct.fnic* %276, i32 0, i32 10
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %9, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %9, align 4
  %283 = call i32 @vnic_intr_alloc(i32 %275, i32* %281, i32 %282)
  store i32 %283, i32* %12, align 4
  %284 = load i32, i32* %12, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %272
  br label %469

287:                                              ; preds = %272
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %9, align 4
  %290 = add i32 %289, 1
  store i32 %290, i32* %9, align 4
  br label %266

291:                                              ; preds = %266
  %292 = load %struct.fnic*, %struct.fnic** %3, align 8
  %293 = getelementptr inbounds %struct.fnic, %struct.fnic* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @RES_TYPE_INTR_PBA_LEGACY, align 4
  %296 = call i32 @vnic_dev_get_res(i32 %294, i32 %295, i32 0)
  %297 = load %struct.fnic*, %struct.fnic** %3, align 8
  %298 = getelementptr inbounds %struct.fnic, %struct.fnic* %297, i32 0, i32 15
  store i32 %296, i32* %298, align 8
  %299 = load %struct.fnic*, %struct.fnic** %3, align 8
  %300 = getelementptr inbounds %struct.fnic, %struct.fnic* %299, i32 0, i32 15
  %301 = load i32, i32* %300, align 8
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %316, label %303

303:                                              ; preds = %291
  %304 = load i32, i32* %4, align 4
  %305 = icmp eq i32 %304, 130
  br i1 %305, label %306, label %316

306:                                              ; preds = %303
  %307 = load i32, i32* @KERN_ERR, align 4
  %308 = load %struct.fnic*, %struct.fnic** %3, align 8
  %309 = getelementptr inbounds %struct.fnic, %struct.fnic* %308, i32 0, i32 7
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %307, i32 %312, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %314 = load i32, i32* @ENODEV, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %12, align 4
  br label %469

316:                                              ; preds = %303, %291
  %317 = load i32, i32* %4, align 4
  switch i32 %317, label %322 [
    i32 130, label %318
    i32 128, label %318
  ]

318:                                              ; preds = %316, %316
  store i32 1, i32* %7, align 4
  %319 = load %struct.fnic*, %struct.fnic** %3, align 8
  %320 = getelementptr inbounds %struct.fnic, %struct.fnic* %319, i32 0, i32 5
  %321 = load i32, i32* %320, align 4
  store i32 %321, i32* %8, align 4
  br label %323

322:                                              ; preds = %316
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %323

323:                                              ; preds = %322, %318
  store i32 0, i32* %9, align 4
  br label %324

324:                                              ; preds = %342, %323
  %325 = load i32, i32* %9, align 4
  %326 = load %struct.fnic*, %struct.fnic** %3, align 8
  %327 = getelementptr inbounds %struct.fnic, %struct.fnic* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = icmp ult i32 %325, %328
  br i1 %329, label %330, label %345

330:                                              ; preds = %324
  %331 = load i32, i32* %9, align 4
  store i32 %331, i32* %10, align 4
  %332 = load %struct.fnic*, %struct.fnic** %3, align 8
  %333 = getelementptr inbounds %struct.fnic, %struct.fnic* %332, i32 0, i32 14
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %9, align 4
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %10, align 4
  %339 = load i32, i32* %7, align 4
  %340 = load i32, i32* %8, align 4
  %341 = call i32 @vnic_rq_init(i32* %337, i32 %338, i32 %339, i32 %340)
  br label %342

342:                                              ; preds = %330
  %343 = load i32, i32* %9, align 4
  %344 = add i32 %343, 1
  store i32 %344, i32* %9, align 4
  br label %324

345:                                              ; preds = %324
  store i32 0, i32* %9, align 4
  br label %346

346:                                              ; preds = %368, %345
  %347 = load i32, i32* %9, align 4
  %348 = load %struct.fnic*, %struct.fnic** %3, align 8
  %349 = getelementptr inbounds %struct.fnic, %struct.fnic* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = icmp ult i32 %347, %350
  br i1 %351, label %352, label %371

352:                                              ; preds = %346
  %353 = load i32, i32* %9, align 4
  %354 = load %struct.fnic*, %struct.fnic** %3, align 8
  %355 = getelementptr inbounds %struct.fnic, %struct.fnic* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = add i32 %353, %356
  store i32 %357, i32* %10, align 4
  %358 = load %struct.fnic*, %struct.fnic** %3, align 8
  %359 = getelementptr inbounds %struct.fnic, %struct.fnic* %358, i32 0, i32 13
  %360 = load i32*, i32** %359, align 8
  %361 = load i32, i32* %9, align 4
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  %364 = load i32, i32* %10, align 4
  %365 = load i32, i32* %7, align 4
  %366 = load i32, i32* %8, align 4
  %367 = call i32 @vnic_wq_init(i32* %363, i32 %364, i32 %365, i32 %366)
  br label %368

368:                                              ; preds = %352
  %369 = load i32, i32* %9, align 4
  %370 = add i32 %369, 1
  store i32 %370, i32* %9, align 4
  br label %346

371:                                              ; preds = %346
  store i32 0, i32* %9, align 4
  br label %372

372:                                              ; preds = %388, %371
  %373 = load i32, i32* %9, align 4
  %374 = load %struct.fnic*, %struct.fnic** %3, align 8
  %375 = getelementptr inbounds %struct.fnic, %struct.fnic* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = icmp ult i32 %373, %376
  br i1 %377, label %378, label %391

378:                                              ; preds = %372
  %379 = load %struct.fnic*, %struct.fnic** %3, align 8
  %380 = getelementptr inbounds %struct.fnic, %struct.fnic* %379, i32 0, i32 12
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %9, align 4
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %7, align 4
  %386 = load i32, i32* %8, align 4
  %387 = call i32 @vnic_wq_copy_init(i32* %384, i32 0, i32 %385, i32 %386)
  br label %388

388:                                              ; preds = %378
  %389 = load i32, i32* %9, align 4
  %390 = add i32 %389, 1
  store i32 %390, i32* %9, align 4
  br label %372

391:                                              ; preds = %372
  store i32 0, i32* %9, align 4
  br label %392

392:                                              ; preds = %412, %391
  %393 = load i32, i32* %9, align 4
  %394 = load %struct.fnic*, %struct.fnic** %3, align 8
  %395 = getelementptr inbounds %struct.fnic, %struct.fnic* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 4
  %397 = icmp ult i32 %393, %396
  br i1 %397, label %398, label %415

398:                                              ; preds = %392
  %399 = load i32, i32* %4, align 4
  switch i32 %399, label %402 [
    i32 128, label %400
  ]

400:                                              ; preds = %398
  %401 = load i32, i32* %9, align 4
  store i32 %401, i32* %6, align 4
  br label %403

402:                                              ; preds = %398
  store i32 0, i32* %6, align 4
  br label %403

403:                                              ; preds = %402, %400
  %404 = load %struct.fnic*, %struct.fnic** %3, align 8
  %405 = getelementptr inbounds %struct.fnic, %struct.fnic* %404, i32 0, i32 11
  %406 = load i32*, i32** %405, align 8
  %407 = load i32, i32* %9, align 4
  %408 = zext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %406, i64 %408
  %410 = load i32, i32* %6, align 4
  %411 = call i32 @vnic_cq_init(i32* %409, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 %410, i32 0)
  br label %412

412:                                              ; preds = %403
  %413 = load i32, i32* %9, align 4
  %414 = add i32 %413, 1
  store i32 %414, i32* %9, align 4
  br label %392

415:                                              ; preds = %392
  %416 = load i32, i32* %4, align 4
  switch i32 %416, label %418 [
    i32 129, label %417
    i32 128, label %417
  ]

417:                                              ; preds = %415, %415
  store i32 1, i32* %5, align 4
  br label %419

418:                                              ; preds = %415
  store i32 0, i32* %5, align 4
  br label %419

419:                                              ; preds = %418, %417
  store i32 0, i32* %9, align 4
  br label %420

420:                                              ; preds = %443, %419
  %421 = load i32, i32* %9, align 4
  %422 = load %struct.fnic*, %struct.fnic** %3, align 8
  %423 = getelementptr inbounds %struct.fnic, %struct.fnic* %422, i32 0, i32 4
  %424 = load i32, i32* %423, align 8
  %425 = icmp ult i32 %421, %424
  br i1 %425, label %426, label %446

426:                                              ; preds = %420
  %427 = load %struct.fnic*, %struct.fnic** %3, align 8
  %428 = getelementptr inbounds %struct.fnic, %struct.fnic* %427, i32 0, i32 10
  %429 = load i32*, i32** %428, align 8
  %430 = load i32, i32* %9, align 4
  %431 = zext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %429, i64 %431
  %433 = load %struct.fnic*, %struct.fnic** %3, align 8
  %434 = getelementptr inbounds %struct.fnic, %struct.fnic* %433, i32 0, i32 9
  %435 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %434, i32 0, i32 4
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.fnic*, %struct.fnic** %3, align 8
  %438 = getelementptr inbounds %struct.fnic, %struct.fnic* %437, i32 0, i32 9
  %439 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %438, i32 0, i32 3
  %440 = load i32, i32* %439, align 4
  %441 = load i32, i32* %5, align 4
  %442 = call i32 @vnic_intr_init(i32* %432, i32 %436, i32 %440, i32 %441)
  br label %443

443:                                              ; preds = %426
  %444 = load i32, i32* %9, align 4
  %445 = add i32 %444, 1
  store i32 %445, i32* %9, align 4
  br label %420

446:                                              ; preds = %420
  %447 = load %struct.fnic*, %struct.fnic** %3, align 8
  %448 = getelementptr inbounds %struct.fnic, %struct.fnic* %447, i32 0, i32 6
  %449 = load i32, i32* %448, align 8
  %450 = load %struct.fnic*, %struct.fnic** %3, align 8
  %451 = getelementptr inbounds %struct.fnic, %struct.fnic* %450, i32 0, i32 8
  %452 = call i32 @vnic_dev_stats_dump(i32 %449, i32* %451)
  store i32 %452, i32* %12, align 4
  %453 = load i32, i32* %12, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %464

455:                                              ; preds = %446
  %456 = load i32, i32* @KERN_ERR, align 4
  %457 = load %struct.fnic*, %struct.fnic** %3, align 8
  %458 = getelementptr inbounds %struct.fnic, %struct.fnic* %457, i32 0, i32 7
  %459 = load %struct.TYPE_4__*, %struct.TYPE_4__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = load i32, i32* %12, align 4
  %463 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %456, i32 %461, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %462)
  br label %469

464:                                              ; preds = %446
  %465 = load %struct.fnic*, %struct.fnic** %3, align 8
  %466 = getelementptr inbounds %struct.fnic, %struct.fnic* %465, i32 0, i32 6
  %467 = load i32, i32* %466, align 8
  %468 = call i32 @vnic_dev_stats_clear(i32 %467)
  store i32 0, i32* %2, align 4
  br label %473

469:                                              ; preds = %455, %306, %286, %260, %219, %184, %153, %123, %89
  %470 = load %struct.fnic*, %struct.fnic** %3, align 8
  %471 = call i32 @fnic_free_vnic_resources(%struct.fnic* %470)
  %472 = load i32, i32* %12, align 4
  store i32 %472, i32* %2, align 4
  br label %473

473:                                              ; preds = %469, %464
  %474 = load i32, i32* %2, align 4
  ret i32 %474
}

declare dso_local i32 @vnic_dev_get_intr_mode(i32) #1

declare dso_local i32 @shost_printk(i32, i32, i8*, ...) #1

declare dso_local i32 @vnic_wq_alloc(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @vnic_wq_copy_alloc(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @vnic_rq_alloc(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @vnic_cq_alloc(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @vnic_intr_alloc(i32, i32*, i32) #1

declare dso_local i32 @vnic_dev_get_res(i32, i32, i32) #1

declare dso_local i32 @vnic_rq_init(i32*, i32, i32, i32) #1

declare dso_local i32 @vnic_wq_init(i32*, i32, i32, i32) #1

declare dso_local i32 @vnic_wq_copy_init(i32*, i32, i32, i32) #1

declare dso_local i32 @vnic_cq_init(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vnic_intr_init(i32*, i32, i32, i32) #1

declare dso_local i32 @vnic_dev_stats_dump(i32, i32*) #1

declare dso_local i32 @vnic_dev_stats_clear(i32) #1

declare dso_local i32 @fnic_free_vnic_resources(%struct.fnic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
