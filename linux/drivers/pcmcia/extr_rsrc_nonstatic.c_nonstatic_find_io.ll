; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_nonstatic_find_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_nonstatic_find_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.resource* }
%struct.resource = type { i32, i32, i32 }

@MAX_IO_WIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IORESOURCE_BITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, i32, i32*, i32, i32, %struct.resource**)* @nonstatic_find_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nonstatic_find_io(%struct.pcmcia_socket* %0, i32 %1, i32* %2, i32 %3, i32 %4, %struct.resource** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcmcia_socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.resource**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.resource*, align 8
  %17 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.resource** %5, %struct.resource*** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %59, %6
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* @MAX_IO_WIN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %62

22:                                               ; preds = %18
  %23 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %24 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %14, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.resource*, %struct.resource** %29, align 8
  %31 = icmp ne %struct.resource* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %59

33:                                               ; preds = %22
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %59

38:                                               ; preds = %33
  %39 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %40 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load %struct.resource*, %struct.resource** %45, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %12, align 4
  %50 = sub i32 %49, 1
  %51 = and i32 %48, %50
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %38
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %285

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %58, %37, %32
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %18

62:                                               ; preds = %18
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %279, %62
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @MAX_IO_WIN, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %282

67:                                               ; preds = %63
  %68 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %69 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load %struct.resource*, %struct.resource** %74, align 8
  store %struct.resource* %75, %struct.resource** %16, align 8
  %76 = load %struct.resource*, %struct.resource** %16, align 8
  %77 = icmp ne %struct.resource* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %67
  %79 = load %struct.resource*, %struct.resource** %16, align 8
  %80 = getelementptr inbounds %struct.resource, %struct.resource* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IORESOURCE_BITS, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @IORESOURCE_BITS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %279

89:                                               ; preds = %78, %67
  %90 = load %struct.resource*, %struct.resource** %16, align 8
  %91 = icmp ne %struct.resource* %90, null
  br i1 %91, label %149, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %12, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 65536, i32* %12, align 4
  br label %96

96:                                               ; preds = %95, %92
  %97 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call %struct.resource* @__nonstatic_find_io_region(%struct.pcmcia_socket* %97, i32 %99, i32 %100, i32 %101)
  %103 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %104 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store %struct.resource* %102, %struct.resource** %109, align 8
  store %struct.resource* %102, %struct.resource** %16, align 8
  %110 = load %struct.resource*, %struct.resource** %16, align 8
  %111 = icmp ne %struct.resource* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %96
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %7, align 4
  br label %285

115:                                              ; preds = %96
  %116 = load %struct.resource*, %struct.resource** %16, align 8
  %117 = getelementptr inbounds %struct.resource, %struct.resource* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %10, align 8
  store i32 %118, i32* %119, align 4
  %120 = load %struct.resource*, %struct.resource** %16, align 8
  %121 = getelementptr inbounds %struct.resource, %struct.resource* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @IORESOURCE_BITS, align 4
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @IORESOURCE_BITS, align 4
  %128 = and i32 %126, %127
  %129 = or i32 %125, %128
  %130 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %131 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load %struct.resource*, %struct.resource** %136, align 8
  %138 = getelementptr inbounds %struct.resource, %struct.resource* %137, i32 0, i32 1
  store i32 %129, i32* %138, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %141 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i32 %139, i32* %146, align 8
  %147 = load %struct.resource*, %struct.resource** %16, align 8
  %148 = load %struct.resource**, %struct.resource*** %13, align 8
  store %struct.resource* %147, %struct.resource** %148, align 8
  store i32 0, i32* %7, align 4
  br label %285

149:                                              ; preds = %89
  %150 = load %struct.resource*, %struct.resource** %16, align 8
  %151 = getelementptr inbounds %struct.resource, %struct.resource* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %17, align 4
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %149
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %17, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %212

162:                                              ; preds = %157, %149
  %163 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %164 = load %struct.resource*, %struct.resource** %16, align 8
  %165 = getelementptr inbounds %struct.resource, %struct.resource* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.resource*, %struct.resource** %16, align 8
  %168 = getelementptr inbounds %struct.resource, %struct.resource* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %11, align 4
  %171 = add i32 %169, %170
  %172 = call i32 @__nonstatic_adjust_io_region(%struct.pcmcia_socket* %163, i32 %166, i32 %171)
  store i32 %172, i32* %15, align 4
  %173 = load i32, i32* %15, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %211, label %175

175:                                              ; preds = %162
  %176 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %177 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %176, i32 0, i32 0
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  %183 = load %struct.resource*, %struct.resource** %182, align 8
  %184 = load %struct.resource*, %struct.resource** %16, align 8
  %185 = getelementptr inbounds %struct.resource, %struct.resource* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.resource*, %struct.resource** %16, align 8
  %188 = call i64 @resource_size(%struct.resource* %187)
  %189 = load i32, i32* %11, align 4
  %190 = zext i32 %189 to i64
  %191 = add nsw i64 %188, %190
  %192 = call i32 @adjust_resource(%struct.resource* %183, i32 %186, i64 %191)
  store i32 %192, i32* %15, align 4
  %193 = load i32, i32* %15, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %175
  br label %279

196:                                              ; preds = %175
  %197 = load i32, i32* %17, align 4
  %198 = load i32*, i32** %10, align 8
  store i32 %197, i32* %198, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %201 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %200, i32 0, i32 0
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = add i32 %207, %199
  store i32 %208, i32* %206, align 8
  %209 = load %struct.resource*, %struct.resource** %16, align 8
  %210 = load %struct.resource**, %struct.resource*** %13, align 8
  store %struct.resource* %209, %struct.resource** %210, align 8
  store i32 0, i32* %7, align 4
  br label %285

211:                                              ; preds = %162
  br label %212

212:                                              ; preds = %211, %157
  %213 = load %struct.resource*, %struct.resource** %16, align 8
  %214 = getelementptr inbounds %struct.resource, %struct.resource* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %11, align 4
  %217 = sub i32 %215, %216
  store i32 %217, i32* %17, align 4
  %218 = load i32*, i32** %10, align 8
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %212
  %222 = load i32*, i32** %10, align 8
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %17, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %278

226:                                              ; preds = %221, %212
  %227 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %228 = load %struct.resource*, %struct.resource** %16, align 8
  %229 = getelementptr inbounds %struct.resource, %struct.resource* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %11, align 4
  %232 = sub i32 %230, %231
  %233 = load %struct.resource*, %struct.resource** %16, align 8
  %234 = getelementptr inbounds %struct.resource, %struct.resource* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @__nonstatic_adjust_io_region(%struct.pcmcia_socket* %227, i32 %232, i32 %235)
  store i32 %236, i32* %15, align 4
  %237 = load i32, i32* %15, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %277, label %239

239:                                              ; preds = %226
  %240 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %241 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %240, i32 0, i32 0
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = load i32, i32* %14, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 1
  %247 = load %struct.resource*, %struct.resource** %246, align 8
  %248 = load %struct.resource*, %struct.resource** %16, align 8
  %249 = getelementptr inbounds %struct.resource, %struct.resource* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %11, align 4
  %252 = sub i32 %250, %251
  %253 = load %struct.resource*, %struct.resource** %16, align 8
  %254 = call i64 @resource_size(%struct.resource* %253)
  %255 = load i32, i32* %11, align 4
  %256 = zext i32 %255 to i64
  %257 = add nsw i64 %254, %256
  %258 = call i32 @adjust_resource(%struct.resource* %247, i32 %252, i64 %257)
  store i32 %258, i32* %15, align 4
  %259 = load i32, i32* %15, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %239
  br label %279

262:                                              ; preds = %239
  %263 = load i32, i32* %17, align 4
  %264 = load i32*, i32** %10, align 8
  store i32 %263, i32* %264, align 4
  %265 = load i32, i32* %11, align 4
  %266 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %267 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %266, i32 0, i32 0
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** %267, align 8
  %269 = load i32, i32* %14, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = add i32 %273, %265
  store i32 %274, i32* %272, align 8
  %275 = load %struct.resource*, %struct.resource** %16, align 8
  %276 = load %struct.resource**, %struct.resource*** %13, align 8
  store %struct.resource* %275, %struct.resource** %276, align 8
  store i32 0, i32* %7, align 4
  br label %285

277:                                              ; preds = %226
  br label %278

278:                                              ; preds = %277, %221
  br label %279

279:                                              ; preds = %278, %261, %195, %88
  %280 = load i32, i32* %14, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %14, align 4
  br label %63

282:                                              ; preds = %63
  %283 = load i32, i32* @EINVAL, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %7, align 4
  br label %285

285:                                              ; preds = %282, %262, %196, %115, %112, %55
  %286 = load i32, i32* %7, align 4
  ret i32 %286
}

declare dso_local %struct.resource* @__nonstatic_find_io_region(%struct.pcmcia_socket*, i32, i32, i32) #1

declare dso_local i32 @__nonstatic_adjust_io_region(%struct.pcmcia_socket*, i32, i32) #1

declare dso_local i32 @adjust_resource(%struct.resource*, i32, i64) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
