; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_src.c_src_sync_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_src.c_src_sync_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.aac_dev = type { i32, i32, i64, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@MUnit = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@OUTBOUNDDOORBELL_0 = common dso_local global i32 0, align 4
@SRC_ODR_SHIFT = common dso_local global i32 0, align 4
@INBOUNDDOORBELL_0 = common dso_local global i32 0, align 4
@SRC_IDR_SHIFT = common dso_local global i32 0, align 4
@SEND_SYNCHRONOUS_FIB = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@IOP_RESET_ALWAYS = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@AAC_CLEAR_SYNC_BIT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@GET_COMM_PREFERRED_SETTINGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*, i64, i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64*, i64*)* @src_sync_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @src_sync_cmd(%struct.aac_dev* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64* %8, i64* %9, i64* %10, i64* %11, i64* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.aac_dev*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %15, align 8
  store i64 %1, i64* %16, align 8
  store i64 %2, i64* %17, align 8
  store i64 %3, i64* %18, align 8
  store i64 %4, i64* %19, align 8
  store i64 %5, i64* %20, align 8
  store i64 %6, i64* %21, align 8
  store i64 %7, i64* %22, align 8
  store i64* %8, i64** %23, align 8
  store i64* %9, i64** %24, align 8
  store i64* %10, i64** %25, align 8
  store i64* %11, i64** %26, align 8
  store i64* %12, i64** %27, align 8
  %31 = load i64, i64* %16, align 8
  %32 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %33 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = call i32 @writel(i64 %31, i32* %37)
  %39 = load i64, i64* %17, align 8
  %40 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %41 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = call i32 @writel(i64 %39, i32* %45)
  %47 = load i64, i64* %18, align 8
  %48 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %49 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = call i32 @writel(i64 %47, i32* %53)
  %55 = load i64, i64* %19, align 8
  %56 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %57 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  %62 = call i32 @writel(i64 %55, i32* %61)
  %63 = load i64, i64* %20, align 8
  %64 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %65 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %64, i32 0, i32 3
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  %70 = call i32 @writel(i64 %63, i32* %69)
  %71 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %72 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %13
  %76 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MUnit, i32 0, i32 0), align 4
  %78 = load i32, i32* @OUTBOUNDDOORBELL_0, align 4
  %79 = load i32, i32* @SRC_ODR_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = call i32 @src_writel(%struct.aac_dev* %76, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %75, %13
  %83 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MUnit, i32 0, i32 2), align 4
  %85 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %86 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %85, i32 0, i32 0
  store i32 -1, i32* %86, align 8
  %87 = call i32 @src_writel(%struct.aac_dev* %83, i32 %84, i32 -1)
  %88 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MUnit, i32 0, i32 2), align 4
  %90 = call i32 @src_readl(%struct.aac_dev* %88, i32 %89)
  %91 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MUnit, i32 0, i32 1), align 4
  %93 = load i32, i32* @INBOUNDDOORBELL_0, align 4
  %94 = load i32, i32* @SRC_IDR_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = call i32 @src_writel(%struct.aac_dev* %91, i32 %92, i32 %95)
  %97 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %98 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %82
  %102 = load i64, i64* %16, align 8
  %103 = load i64, i64* @SEND_SYNCHRONOUS_FIB, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %261

105:                                              ; preds = %101, %82
  %106 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %107 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %261, label %110

110:                                              ; preds = %105
  store i32 0, i32* %30, align 4
  %111 = load i64, i64* @jiffies, align 8
  store i64 %111, i64* %28, align 8
  %112 = load i64, i64* %16, align 8
  %113 = load i64, i64* @IOP_RESET_ALWAYS, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32, i32* @HZ, align 4
  %117 = mul nsw i32 10, %116
  %118 = sext i32 %117 to i64
  store i64 %118, i64* %29, align 8
  br label %123

119:                                              ; preds = %110
  %120 = load i32, i32* @HZ, align 4
  %121 = mul nsw i32 300, %120
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %29, align 8
  br label %123

123:                                              ; preds = %119, %115
  br label %124

124:                                              ; preds = %155, %123
  %125 = load i64, i64* @jiffies, align 8
  %126 = load i64, i64* %28, align 8
  %127 = load i64, i64* %29, align 8
  %128 = add i64 %126, %127
  %129 = call i64 @time_before(i64 %125, i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %157

131:                                              ; preds = %124
  %132 = call i32 @udelay(i32 5)
  %133 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %134 = call i32 @aac_src_get_sync_status(%struct.aac_dev* %133)
  %135 = load i32, i32* @OUTBOUNDDOORBELL_0, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %155

138:                                              ; preds = %131
  %139 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %140 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %145 = load i32, i32* @AAC_CLEAR_SYNC_BIT, align 4
  %146 = call i32 @aac_src_access_devreg(%struct.aac_dev* %144, i32 %145)
  br label %154

147:                                              ; preds = %138
  %148 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MUnit, i32 0, i32 0), align 4
  %150 = load i32, i32* @OUTBOUNDDOORBELL_0, align 4
  %151 = load i32, i32* @SRC_ODR_SHIFT, align 4
  %152 = shl i32 %150, %151
  %153 = call i32 @src_writel(%struct.aac_dev* %148, i32 %149, i32 %152)
  br label %154

154:                                              ; preds = %147, %143
  store i32 1, i32* %30, align 4
  br label %157

155:                                              ; preds = %131
  %156 = call i32 @msleep(i32 1)
  br label %124

157:                                              ; preds = %154, %124
  %158 = load i32, i32* %30, align 4
  %159 = icmp ne i32 %158, 1
  %160 = zext i1 %159 to i32
  %161 = call i64 @unlikely(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %157
  %164 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %165 = call i32 @aac_adapter_enable_int(%struct.aac_dev* %164)
  %166 = load i32, i32* @ETIMEDOUT, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %14, align 4
  br label %264

168:                                              ; preds = %157
  %169 = load i64*, i64** %23, align 8
  %170 = icmp ne i64* %169, null
  br i1 %170, label %171, label %181

171:                                              ; preds = %168
  %172 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %173 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %172, i32 0, i32 3
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = call i32 @readl(i32* %177)
  %179 = sext i32 %178 to i64
  %180 = load i64*, i64** %23, align 8
  store i64 %179, i64* %180, align 8
  br label %181

181:                                              ; preds = %171, %168
  %182 = load i64*, i64** %24, align 8
  %183 = icmp ne i64* %182, null
  br i1 %183, label %184, label %194

184:                                              ; preds = %181
  %185 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %186 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %185, i32 0, i32 3
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  %191 = call i32 @readl(i32* %190)
  %192 = sext i32 %191 to i64
  %193 = load i64*, i64** %24, align 8
  store i64 %192, i64* %193, align 8
  br label %194

194:                                              ; preds = %184, %181
  %195 = load i64*, i64** %25, align 8
  %196 = icmp ne i64* %195, null
  br i1 %196, label %197, label %207

197:                                              ; preds = %194
  %198 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %199 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %198, i32 0, i32 3
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 2
  %204 = call i32 @readl(i32* %203)
  %205 = sext i32 %204 to i64
  %206 = load i64*, i64** %25, align 8
  store i64 %205, i64* %206, align 8
  br label %207

207:                                              ; preds = %197, %194
  %208 = load i64*, i64** %26, align 8
  %209 = icmp ne i64* %208, null
  br i1 %209, label %210, label %220

210:                                              ; preds = %207
  %211 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %212 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %211, i32 0, i32 3
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 3
  %217 = call i32 @readl(i32* %216)
  %218 = sext i32 %217 to i64
  %219 = load i64*, i64** %26, align 8
  store i64 %218, i64* %219, align 8
  br label %220

220:                                              ; preds = %210, %207
  %221 = load i64*, i64** %27, align 8
  %222 = icmp ne i64* %221, null
  br i1 %222, label %223, label %233

223:                                              ; preds = %220
  %224 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %225 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %224, i32 0, i32 3
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 4
  %230 = call i32 @readl(i32* %229)
  %231 = sext i32 %230 to i64
  %232 = load i64*, i64** %27, align 8
  store i64 %231, i64* %232, align 8
  br label %233

233:                                              ; preds = %223, %220
  %234 = load i64, i64* %16, align 8
  %235 = load i64, i64* @GET_COMM_PREFERRED_SETTINGS, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %248

237:                                              ; preds = %233
  %238 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %239 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %238, i32 0, i32 3
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 5
  %244 = call i32 @readl(i32* %243)
  %245 = and i32 %244, 65535
  %246 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %247 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 4
  br label %248

248:                                              ; preds = %237, %233
  %249 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %250 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %260, label %253

253:                                              ; preds = %248
  %254 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %255 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MUnit, i32 0, i32 0), align 4
  %256 = load i32, i32* @OUTBOUNDDOORBELL_0, align 4
  %257 = load i32, i32* @SRC_ODR_SHIFT, align 4
  %258 = shl i32 %256, %257
  %259 = call i32 @src_writel(%struct.aac_dev* %254, i32 %255, i32 %258)
  br label %260

260:                                              ; preds = %253, %248
  br label %261

261:                                              ; preds = %260, %105, %101
  %262 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %263 = call i32 @aac_adapter_enable_int(%struct.aac_dev* %262)
  store i32 0, i32* %14, align 4
  br label %264

264:                                              ; preds = %261, %163
  %265 = load i32, i32* %14, align 4
  ret i32 %265
}

declare dso_local i32 @writel(i64, i32*) #1

declare dso_local i32 @src_writel(%struct.aac_dev*, i32, i32) #1

declare dso_local i32 @src_readl(%struct.aac_dev*, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @aac_src_get_sync_status(%struct.aac_dev*) #1

declare dso_local i32 @aac_src_access_devreg(%struct.aac_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @aac_adapter_enable_int(%struct.aac_dev*) #1

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
