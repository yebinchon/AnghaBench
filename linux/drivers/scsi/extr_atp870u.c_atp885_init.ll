; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_atp885_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_atp885_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, i32, i8, i32, i32 }
%struct.atp_unit = type { i32*, i32**, i32*, i32*, i8*, i64*, i64*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"ACARD AEC-67162 PCI Ultra3 LVD Host Adapter: IO:%lx, IRQ:%d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Scanning Channel A SCSI Device ...\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Scanning Channel B SCSI Device ...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @atp885_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atp885_init(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.atp_unit*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca [2 x [16 x i8]], align 16
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %11 = call %struct.atp_unit* @shost_priv(%struct.Scsi_Host* %10)
  store %struct.atp_unit* %11, %struct.atp_unit** %3, align 8
  %12 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %13 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %12, i32 0, i32 7
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %4, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32*, i8*, ...) @dev_info(i32* %16, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 128
  %28 = sext i32 %27 to i64
  %29 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %30 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %29, i32 0, i32 6
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  store i64 %28, i64* %32, align 8
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %34 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 192
  %37 = sext i32 %36 to i64
  %38 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %39 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %38, i32 0, i32 6
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  store i64 %37, i64* %41, align 8
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 64
  %46 = sext i32 %45 to i64
  %47 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %48 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %47, i32 0, i32 5
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  store i64 %46, i64* %50, align 8
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 80
  %55 = sext i32 %54 to i64
  %56 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %57 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %56, i32 0, i32 5
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  store i64 %55, i64* %59, align 8
  %60 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %61 = call i32 @atp_readb_base(%struct.atp_unit* %60, i32 41)
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %7, align 1
  %63 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %64 = load i8, i8* %7, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %65, 4
  %67 = trunc i32 %66 to i8
  %68 = call i32 @atp_writeb_base(%struct.atp_unit* %63, i32 41, i8 zeroext %67)
  store i32 8064, i32* %8, align 4
  br label %69

69:                                               ; preds = %146, %1
  %70 = load i32, i32* %8, align 4
  %71 = icmp ult i32 %70, 8192
  br i1 %71, label %72, label %147

72:                                               ; preds = %69
  %73 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @atp_writew_base(%struct.atp_unit* %73, i32 60, i32 %74)
  %76 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %77 = call i32 @atp_readl_base(%struct.atp_unit* %76, i32 56)
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %147

80:                                               ; preds = %72
  store i8 0, i8* %6, align 1
  br label %81

81:                                               ; preds = %143, %80
  %82 = load i8, i8* %6, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp slt i32 %83, 2
  br i1 %84, label %85, label %146

85:                                               ; preds = %81
  %86 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %87 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i8, i8* %6, align 1
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 0, i32* %91, align 4
  store i8 0, i8* %5, align 1
  br label %92

92:                                               ; preds = %111, %85
  %93 = load i8, i8* %5, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp slt i32 %94, 4
  br i1 %95, label %96, label %114

96:                                               ; preds = %92
  %97 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %98 = load i32, i32* %8, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %8, align 4
  %100 = call i32 @atp_writew_base(%struct.atp_unit* %97, i32 60, i32 %98)
  %101 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %102 = call i32 @atp_readl_base(%struct.atp_unit* %101, i32 56)
  %103 = load i8, i8* %6, align 1
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds [2 x [16 x i8]], [2 x [16 x i8]]* %9, i64 0, i64 %104
  %106 = getelementptr inbounds [16 x i8], [16 x i8]* %105, i64 0, i64 0
  %107 = bitcast i8* %106 to i32*
  %108 = load i8, i8* %5, align 1
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %102, i32* %110, align 4
  br label %111

111:                                              ; preds = %96
  %112 = load i8, i8* %5, align 1
  %113 = add i8 %112, 1
  store i8 %113, i8* %5, align 1
  br label %92

114:                                              ; preds = %92
  store i8 0, i8* %5, align 1
  br label %115

115:                                              ; preds = %137, %114
  %116 = load i8, i8* %5, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp slt i32 %117, 4
  br i1 %118, label %119, label %140

119:                                              ; preds = %115
  %120 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %121 = load i32, i32* %8, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %8, align 4
  %123 = call i32 @atp_writew_base(%struct.atp_unit* %120, i32 60, i32 %121)
  %124 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %125 = call i32 @atp_readl_base(%struct.atp_unit* %124, i32 56)
  %126 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %127 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %126, i32 0, i32 1
  %128 = load i32**, i32*** %127, align 8
  %129 = load i8, i8* %6, align 1
  %130 = zext i8 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i8, i8* %5, align 1
  %135 = zext i8 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %125, i32* %136, align 4
  br label %137

137:                                              ; preds = %119
  %138 = load i8, i8* %5, align 1
  %139 = add i8 %138, 1
  store i8 %139, i8* %5, align 1
  br label %115

140:                                              ; preds = %115
  %141 = load i32, i32* %8, align 4
  %142 = add i32 %141, 8
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %140
  %144 = load i8, i8* %6, align 1
  %145 = add i8 %144, 1
  store i8 %145, i8* %6, align 1
  br label %81

146:                                              ; preds = %81
  br label %69

147:                                              ; preds = %79, %69
  %148 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %149 = call i32 @atp_readb_base(%struct.atp_unit* %148, i32 41)
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %7, align 1
  %151 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %152 = load i8, i8* %7, align 1
  %153 = zext i8 %152 to i32
  %154 = and i32 %153, 251
  %155 = trunc i32 %154 to i8
  %156 = call i32 @atp_writeb_base(%struct.atp_unit* %151, i32 41, i8 zeroext %155)
  store i8 0, i8* %7, align 1
  br label %157

157:                                              ; preds = %322, %147
  %158 = load i8, i8* %7, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp slt i32 %159, 2
  br i1 %160, label %161, label %325

161:                                              ; preds = %157
  %162 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %163 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load i8, i8* %7, align 1
  %166 = zext i8 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 0, i32* %167, align 4
  %168 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %169 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = load i8, i8* %7, align 1
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 0, i32* %173, align 4
  store i8 0, i8* %5, align 1
  br label %174

174:                                              ; preds = %229, %161
  %175 = load i8, i8* %5, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp slt i32 %176, 16
  br i1 %177, label %178, label %232

178:                                              ; preds = %174
  %179 = load i8, i8* %5, align 1
  %180 = zext i8 %179 to i32
  %181 = shl i32 1, %180
  store i32 %181, i32* %8, align 4
  %182 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %183 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %182, i32 0, i32 1
  %184 = load i32**, i32*** %183, align 8
  %185 = load i8, i8* %7, align 1
  %186 = zext i8 %185 to i64
  %187 = getelementptr inbounds i32*, i32** %184, i64 %186
  %188 = load i32*, i32** %187, align 8
  %189 = load i8, i8* %5, align 1
  %190 = zext i8 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = icmp sgt i32 %192, 1
  br i1 %193, label %194, label %204

194:                                              ; preds = %178
  %195 = load i32, i32* %8, align 4
  %196 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %197 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = load i8, i8* %7, align 1
  %200 = zext i8 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %195
  store i32 %203, i32* %201, align 4
  br label %228

204:                                              ; preds = %178
  %205 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %206 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %205, i32 0, i32 1
  %207 = load i32**, i32*** %206, align 8
  %208 = load i8, i8* %7, align 1
  %209 = zext i8 %208 to i64
  %210 = getelementptr inbounds i32*, i32** %207, i64 %209
  %211 = load i32*, i32** %210, align 8
  %212 = load i8, i8* %5, align 1
  %213 = zext i8 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %204
  %218 = load i32, i32* %8, align 4
  %219 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %220 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = load i8, i8* %7, align 1
  %223 = zext i8 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %218
  store i32 %226, i32* %224, align 4
  br label %227

227:                                              ; preds = %217, %204
  br label %228

228:                                              ; preds = %227, %194
  br label %229

229:                                              ; preds = %228
  %230 = load i8, i8* %5, align 1
  %231 = add i8 %230, 1
  store i8 %231, i8* %5, align 1
  br label %174

232:                                              ; preds = %174
  %233 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %234 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %233, i32 0, i32 3
  %235 = load i32*, i32** %234, align 8
  %236 = load i8, i8* %7, align 1
  %237 = zext i8 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = xor i32 %239, -1
  %241 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %242 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %241, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = load i8, i8* %7, align 1
  %245 = zext i8 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 %240, i32* %246, align 4
  %247 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %248 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load i8, i8* %7, align 1
  %251 = zext i8 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %321

255:                                              ; preds = %232
  %256 = load i8, i8* %7, align 1
  %257 = zext i8 %256 to i64
  %258 = getelementptr inbounds [2 x [16 x i8]], [2 x [16 x i8]]* %9, i64 0, i64 %257
  %259 = getelementptr inbounds [16 x i8], [16 x i8]* %258, i64 0, i64 1
  %260 = load i8, i8* %259, align 1
  store i8 %260, i8* %5, align 1
  %261 = load i8, i8* %5, align 1
  %262 = zext i8 %261 to i32
  %263 = and i32 %262, 64
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %274

265:                                              ; preds = %255
  %266 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %267 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = load i8, i8* %7, align 1
  %270 = zext i8 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = or i32 %272, 32
  store i32 %273, i32* %271, align 4
  br label %274

274:                                              ; preds = %265, %255
  %275 = load i8, i8* %5, align 1
  %276 = zext i8 %275 to i32
  %277 = and i32 %276, 7
  %278 = trunc i32 %277 to i8
  store i8 %278, i8* %5, align 1
  %279 = load i8, i8* %5, align 1
  %280 = zext i8 %279 to i32
  %281 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %282 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %281, i32 0, i32 0
  %283 = load i32*, i32** %282, align 8
  %284 = load i8, i8* %7, align 1
  %285 = zext i8 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = or i32 %287, %280
  store i32 %288, i32* %286, align 4
  %289 = load i8, i8* %7, align 1
  %290 = zext i8 %289 to i64
  %291 = getelementptr inbounds [2 x [16 x i8]], [2 x [16 x i8]]* %9, i64 0, i64 %290
  %292 = getelementptr inbounds [16 x i8], [16 x i8]* %291, i64 0, i64 2
  %293 = load i8, i8* %292, align 2
  %294 = zext i8 %293 to i32
  %295 = and i32 %294, 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %306

297:                                              ; preds = %274
  %298 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %299 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = load i8, i8* %7, align 1
  %302 = zext i8 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = or i32 %304, 8
  store i32 %305, i32* %303, align 4
  br label %306

306:                                              ; preds = %297, %274
  %307 = load i8, i8* %7, align 1
  %308 = zext i8 %307 to i64
  %309 = getelementptr inbounds [2 x [16 x i8]], [2 x [16 x i8]]* %9, i64 0, i64 %308
  %310 = getelementptr inbounds [16 x i8], [16 x i8]* %309, i64 0, i64 0
  %311 = load i8, i8* %310, align 16
  %312 = zext i8 %311 to i32
  %313 = and i32 %312, 7
  %314 = trunc i32 %313 to i8
  %315 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %316 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %315, i32 0, i32 4
  %317 = load i8*, i8** %316, align 8
  %318 = load i8, i8* %7, align 1
  %319 = zext i8 %318 to i64
  %320 = getelementptr inbounds i8, i8* %317, i64 %319
  store i8 %314, i8* %320, align 1
  br label %321

321:                                              ; preds = %306, %232
  br label %322

322:                                              ; preds = %321
  %323 = load i8, i8* %7, align 1
  %324 = add i8 %323, 1
  store i8 %324, i8* %7, align 1
  br label %157

325:                                              ; preds = %157
  %326 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %327 = call i32 @atp_readb_base(%struct.atp_unit* %326, i32 40)
  %328 = and i32 %327, 143
  %329 = trunc i32 %328 to i8
  store i8 %329, i8* %5, align 1
  %330 = load i8, i8* %5, align 1
  %331 = zext i8 %330 to i32
  %332 = or i32 %331, 16
  %333 = trunc i32 %332 to i8
  store i8 %333, i8* %5, align 1
  %334 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %335 = load i8, i8* %5, align 1
  %336 = call i32 @atp_writeb_base(%struct.atp_unit* %334, i32 40, i8 zeroext %335)
  %337 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %338 = call i32 @atp_writeb_pci(%struct.atp_unit* %337, i32 0, i32 1, i32 128)
  %339 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %340 = call i32 @atp_writeb_pci(%struct.atp_unit* %339, i32 1, i32 1, i32 128)
  %341 = call i32 @msleep(i32 100)
  %342 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %343 = call i32 @atp_writeb_pci(%struct.atp_unit* %342, i32 0, i32 1, i32 0)
  %344 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %345 = call i32 @atp_writeb_pci(%struct.atp_unit* %344, i32 1, i32 1, i32 0)
  %346 = call i32 @msleep(i32 1000)
  %347 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %348 = call i32 @atp_readb_io(%struct.atp_unit* %347, i32 0, i32 27)
  %349 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %350 = call i32 @atp_readb_io(%struct.atp_unit* %349, i32 0, i32 23)
  %351 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %352 = call i32 @atp_readb_io(%struct.atp_unit* %351, i32 1, i32 27)
  %353 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %354 = call i32 @atp_readb_io(%struct.atp_unit* %353, i32 1, i32 23)
  %355 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %356 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %355, i32 0, i32 4
  %357 = load i8*, i8** %356, align 8
  %358 = getelementptr inbounds i8, i8* %357, i64 0
  %359 = load i8, i8* %358, align 1
  store i8 %359, i8* %5, align 1
  %360 = load i8, i8* %5, align 1
  %361 = zext i8 %360 to i32
  %362 = icmp sgt i32 %361, 7
  br i1 %362, label %363, label %369

363:                                              ; preds = %325
  %364 = load i8, i8* %5, align 1
  %365 = zext i8 %364 to i32
  %366 = and i32 %365, 7
  %367 = or i32 %366, 64
  %368 = trunc i32 %367 to i8
  store i8 %368, i8* %5, align 1
  br label %369

369:                                              ; preds = %363, %325
  %370 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %371 = load i8, i8* %5, align 1
  %372 = call i32 @atp_set_host_id(%struct.atp_unit* %370, i32 0, i8 zeroext %371)
  %373 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %374 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %373, i32 0, i32 4
  %375 = load i8*, i8** %374, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 1
  %377 = load i8, i8* %376, align 1
  store i8 %377, i8* %5, align 1
  %378 = load i8, i8* %5, align 1
  %379 = zext i8 %378 to i32
  %380 = icmp sgt i32 %379, 7
  br i1 %380, label %381, label %387

381:                                              ; preds = %369
  %382 = load i8, i8* %5, align 1
  %383 = zext i8 %382 to i32
  %384 = and i32 %383, 7
  %385 = or i32 %384, 64
  %386 = trunc i32 %385 to i8
  store i8 %386, i8* %5, align 1
  br label %387

387:                                              ; preds = %381, %369
  %388 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %389 = load i8, i8* %5, align 1
  %390 = call i32 @atp_set_host_id(%struct.atp_unit* %388, i32 1, i8 zeroext %389)
  %391 = call i32 @msleep(i32 600)
  %392 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %393 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %392, i32 0, i32 0
  %394 = call i32 (i32*, i8*, ...) @dev_info(i32* %393, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %395 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %396 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %397 = call i32 @atp_readb_io(%struct.atp_unit* %396, i32 0, i32 27)
  %398 = ashr i32 %397, 7
  %399 = call i32 @atp_is(%struct.atp_unit* %395, i32 0, i32 1, i32 %398)
  %400 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %401 = call i32 @atp_writeb_io(%struct.atp_unit* %400, i32 0, i32 22, i32 128)
  %402 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %403 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %402, i32 0, i32 0
  %404 = call i32 (i32*, i8*, ...) @dev_info(i32* %403, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %405 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %406 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %407 = call i32 @atp_readb_io(%struct.atp_unit* %406, i32 1, i32 27)
  %408 = ashr i32 %407, 7
  %409 = call i32 @atp_is(%struct.atp_unit* %405, i32 1, i32 1, i32 %408)
  %410 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %411 = call i32 @atp_writeb_io(%struct.atp_unit* %410, i32 1, i32 22, i32 128)
  %412 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %413 = call i32 @atp_readb_base(%struct.atp_unit* %412, i32 40)
  %414 = and i32 %413, 207
  %415 = trunc i32 %414 to i8
  store i8 %415, i8* %5, align 1
  %416 = load i8, i8* %5, align 1
  %417 = zext i8 %416 to i32
  %418 = or i32 %417, 192
  %419 = trunc i32 %418 to i8
  store i8 %419, i8* %5, align 1
  %420 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %421 = load i8, i8* %5, align 1
  %422 = call i32 @atp_writeb_base(%struct.atp_unit* %420, i32 40, i8 zeroext %421)
  %423 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %424 = call i32 @atp_readb_base(%struct.atp_unit* %423, i32 31)
  %425 = or i32 %424, 128
  %426 = trunc i32 %425 to i8
  store i8 %426, i8* %5, align 1
  %427 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %428 = load i8, i8* %5, align 1
  %429 = call i32 @atp_writeb_base(%struct.atp_unit* %427, i32 31, i8 zeroext %428)
  %430 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %431 = call i32 @atp_readb_base(%struct.atp_unit* %430, i32 41)
  %432 = or i32 %431, 1
  %433 = trunc i32 %432 to i8
  store i8 %433, i8* %5, align 1
  %434 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %435 = load i8, i8* %5, align 1
  %436 = call i32 @atp_writeb_base(%struct.atp_unit* %434, i32 41, i8 zeroext %435)
  %437 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %438 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %437, i32 0, i32 0
  store i32 16, i32* %438, align 4
  %439 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %440 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %439, i32 0, i32 0
  %441 = load i32*, i32** %440, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 0
  %443 = load i32, i32* %442, align 4
  %444 = and i32 %443, 7
  %445 = add nsw i32 %444, 1
  %446 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %447 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %446, i32 0, i32 1
  store i32 %445, i32* %447, align 4
  %448 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %449 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %448, i32 0, i32 2
  store i32 1, i32* %449, align 4
  %450 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %451 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %450, i32 0, i32 4
  %452 = load i8*, i8** %451, align 8
  %453 = getelementptr inbounds i8, i8* %452, i64 0
  %454 = load i8, i8* %453, align 1
  %455 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %456 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %455, i32 0, i32 3
  store i8 %454, i8* %456, align 4
  ret void
}

declare dso_local %struct.atp_unit* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @atp_readb_base(%struct.atp_unit*, i32) #1

declare dso_local i32 @atp_writeb_base(%struct.atp_unit*, i32, i8 zeroext) #1

declare dso_local i32 @atp_writew_base(%struct.atp_unit*, i32, i32) #1

declare dso_local i32 @atp_readl_base(%struct.atp_unit*, i32) #1

declare dso_local i32 @atp_writeb_pci(%struct.atp_unit*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @atp_readb_io(%struct.atp_unit*, i32, i32) #1

declare dso_local i32 @atp_set_host_id(%struct.atp_unit*, i32, i8 zeroext) #1

declare dso_local i32 @atp_is(%struct.atp_unit*, i32, i32, i32) #1

declare dso_local i32 @atp_writeb_io(%struct.atp_unit*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
