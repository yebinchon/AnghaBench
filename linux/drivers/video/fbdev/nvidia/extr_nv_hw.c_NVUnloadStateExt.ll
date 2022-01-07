; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_hw.c_NVUnloadStateExt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_hw.c_NVUnloadStateExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i64, i32, i32, i64, i32, i64, i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@NV_ARCH_30 = common dso_local global i64 0, align 8
@NV_ARCH_40 = common dso_local global i64 0, align 8
@NV_ARCH_10 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NVUnloadStateExt(%struct.nvidia_par* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.nvidia_par*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.nvidia_par* %0, %struct.nvidia_par** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %6 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @VGA_WR08(i32 %7, i32 980, i32 25)
  %9 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %10 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @VGA_RD08(i32 %11, i32 981)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %16 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @VGA_WR08(i32 %17, i32 980, i32 26)
  %19 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %20 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @VGA_RD08(i32 %21, i32 981)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %26 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @VGA_WR08(i32 %27, i32 980, i32 37)
  %29 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %30 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @VGA_RD08(i32 %31, i32 981)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %36 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @VGA_WR08(i32 %37, i32 980, i32 40)
  %39 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %40 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @VGA_RD08(i32 %41, i32 981)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %46 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @VGA_WR08(i32 %47, i32 980, i32 45)
  %49 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %50 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @VGA_RD08(i32 %51, i32 981)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %56 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @VGA_WR08(i32 %57, i32 980, i32 28)
  %59 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %60 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @VGA_RD08(i32 %61, i32 981)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %66 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @VGA_WR08(i32 %67, i32 980, i32 27)
  %69 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %70 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @VGA_RD08(i32 %71, i32 981)
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %76 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @VGA_WR08(i32 %77, i32 980, i32 32)
  %79 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %80 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @VGA_RD08(i32 %81, i32 981)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 4
  %85 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %86 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NV_ARCH_30, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %2
  %91 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %92 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @VGA_WR08(i32 %93, i32 980, i32 71)
  %95 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %96 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @VGA_RD08(i32 %97, i32 981)
  %99 = and i32 %98, 1
  %100 = shl i32 %99, 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %90, %2
  %106 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %107 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @VGA_WR08(i32 %108, i32 980, i32 48)
  %110 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %111 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @VGA_RD08(i32 %112, i32 981)
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 8
  store i32 %113, i32* %115, align 8
  %116 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %117 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @VGA_WR08(i32 %118, i32 980, i32 49)
  %120 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %121 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @VGA_RD08(i32 %122, i32 981)
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 9
  store i32 %123, i32* %125, align 4
  %126 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %127 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @VGA_WR08(i32 %128, i32 980, i32 47)
  %130 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %131 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @VGA_RD08(i32 %132, i32 981)
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 10
  store i32 %133, i32* %135, align 8
  %136 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %137 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @VGA_WR08(i32 %138, i32 980, i32 57)
  %140 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %141 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @VGA_RD08(i32 %142, i32 981)
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 11
  store i32 %143, i32* %145, align 4
  %146 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %147 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 8
  %149 = call i8* @NV_RD32(i32 %148, i32 1288)
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 28
  store i8* %149, i8** %151, align 8
  %152 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %153 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %105
  %157 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %158 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %157, i32 0, i32 8
  %159 = load i32, i32* %158, align 8
  %160 = call i8* @NV_RD32(i32 %159, i32 1312)
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 27
  store i8* %160, i8** %162, align 8
  br label %163

163:                                              ; preds = %156, %105
  %164 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %165 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %164, i32 0, i32 10
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %163
  %169 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %170 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 8
  %172 = call i8* @NV_RD32(i32 %171, i32 1400)
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 26
  store i8* %172, i8** %174, align 8
  %175 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %176 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %175, i32 0, i32 8
  %177 = load i32, i32* %176, align 8
  %178 = call i8* @NV_RD32(i32 %177, i32 1404)
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 25
  store i8* %178, i8** %180, align 8
  br label %181

181:                                              ; preds = %168, %163
  %182 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %183 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %182, i32 0, i32 8
  %184 = load i32, i32* %183, align 8
  %185 = call i8* @NV_RD32(i32 %184, i32 1292)
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 24
  store i8* %185, i8** %187, align 8
  %188 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %189 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = call i8* @NV_RD32(i32 %190, i32 1536)
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 23
  store i8* %191, i8** %193, align 8
  %194 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %195 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = call i8* @NV_RD32(i32 %196, i32 2120)
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 22
  store i8* %197, i8** %199, align 8
  %200 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %201 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %200, i32 0, i32 9
  %202 = load i32, i32* %201, align 4
  %203 = call i8* @NV_RD32(i32 %202, i32 512)
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 21
  store i8* %203, i8** %205, align 8
  %206 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %207 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @NV_ARCH_40, align 8
  %210 = icmp sge i64 %208, %209
  br i1 %210, label %211, label %223

211:                                              ; preds = %181
  %212 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %213 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %223, label %216

216:                                              ; preds = %211
  %217 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %218 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %217, i32 0, i32 8
  %219 = load i32, i32* %218, align 8
  %220 = call i8* @NV_RD32(i32 %219, i32 1408)
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 20
  store i8* %220, i8** %222, align 8
  br label %223

223:                                              ; preds = %216, %211, %181
  %224 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %225 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @NV_ARCH_10, align 8
  %228 = icmp sge i64 %226, %227
  br i1 %228, label %229, label %326

229:                                              ; preds = %223
  %230 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %231 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %230, i32 0, i32 5
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %257

234:                                              ; preds = %229
  %235 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %236 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 4
  %238 = call i8* @NV_RD32(i32 %237, i32 2144)
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 19
  store i8* %238, i8** %240, align 8
  %241 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %242 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %241, i32 0, i32 7
  %243 = load i32, i32* %242, align 4
  %244 = call i8* @NV_RD32(i32 %243, i32 10336)
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 18
  store i8* %244, i8** %246, align 8
  %247 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %248 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @VGA_WR08(i32 %249, i32 980, i32 68)
  %251 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %252 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @VGA_RD08(i32 %253, i32 981)
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 12
  store i32 %254, i32* %256, align 8
  br label %257

257:                                              ; preds = %234, %229
  %258 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %259 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @VGA_WR08(i32 %260, i32 980, i32 65)
  %262 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %263 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @VGA_RD08(i32 %264, i32 981)
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 13
  store i32 %265, i32* %267, align 4
  %268 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %269 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 8
  %271 = call i8* @NV_RD32(i32 %270, i32 2064)
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 17
  store i8* %271, i8** %273, align 8
  %274 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %275 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = and i32 %276, 4080
  %278 = icmp eq i32 %277, 272
  br i1 %278, label %279, label %286

279:                                              ; preds = %257
  %280 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %281 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = call i8* @NV_RD32(i32 %282, i32 1320)
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 16
  store i8* %283, i8** %285, align 8
  br label %299

286:                                              ; preds = %257
  %287 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %288 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %287, i32 0, i32 5
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %286
  %292 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %293 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = call i8* @NV_RD32(i32 %294, i32 2108)
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 16
  store i8* %295, i8** %297, align 8
  br label %298

298:                                              ; preds = %291, %286
  br label %299

299:                                              ; preds = %298, %279
  %300 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %301 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %325

304:                                              ; preds = %299
  %305 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %306 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @VGA_WR08(i32 %307, i32 980, i32 83)
  %309 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %310 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @VGA_RD08(i32 %311, i32 981)
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 14
  store i32 %312, i32* %314, align 8
  %315 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %316 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @VGA_WR08(i32 %317, i32 980, i32 84)
  %319 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %320 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @VGA_RD08(i32 %321, i32 981)
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 15
  store i32 %322, i32* %324, align 4
  br label %325

325:                                              ; preds = %304, %299
  br label %326

326:                                              ; preds = %325, %223
  ret void
}

declare dso_local i32 @VGA_WR08(i32, i32, i32) #1

declare dso_local i32 @VGA_RD08(i32, i32) #1

declare dso_local i8* @NV_RD32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
