; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_asiliantfb.c_asiliant_set_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_asiliantfb.c_asiliant_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@mmio_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @asiliant_set_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asiliant_set_timing(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, 8
  store i32 %16, i32* %3, align 4
  %17 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %20, %24
  %26 = sdiv i32 %25, 8
  store i32 %26, i32* %4, align 4
  %27 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %30, %34
  %36 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %35, %39
  %41 = sdiv i32 %40, 8
  store i32 %41, i32* %5, align 4
  %42 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %45, %49
  %51 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %50, %54
  %56 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %55, %59
  %61 = sdiv i32 %60, 8
  store i32 %61, i32* %6, align 4
  %62 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %7, align 4
  %66 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = add i32 %69, %73
  store i32 %74, i32* %8, align 4
  %75 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %78, %82
  %84 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = add i32 %83, %87
  store i32 %88, i32* %9, align 4
  %89 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %94 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = add i32 %92, %96
  %98 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %99 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = add i32 %97, %101
  %103 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = add i32 %102, %106
  store i32 %107, i32* %10, align 4
  %108 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %109 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %113 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 7
  %117 = sdiv i32 %116, 8
  %118 = mul nsw i32 %111, %117
  %119 = sdiv i32 %118, 8
  store i32 %119, i32* %11, align 4
  %120 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %121 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 640
  br i1 %124, label %125, label %139

125:                                              ; preds = %1
  %126 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %127 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 480
  br i1 %130, label %131, label %139

131:                                              ; preds = %125
  %132 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %133 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 10
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 39722
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = call i32 @write_fr(i32 1, i32 2)
  br label %141

139:                                              ; preds = %131, %125, %1
  %140 = call i32 @write_fr(i32 1, i32 1)
  br label %141

141:                                              ; preds = %139, %137
  %142 = load i32, i32* %9, align 4
  %143 = sub i32 %142, 1
  %144 = and i32 %143, 15
  %145 = call i32 @write_cr(i32 17, i32 %144)
  %146 = load i32, i32* %6, align 4
  %147 = sub i32 %146, 5
  %148 = and i32 %147, 255
  %149 = call i32 @write_cr(i32 0, i32 %148)
  %150 = load i32, i32* %3, align 4
  %151 = sub i32 %150, 1
  %152 = call i32 @write_cr(i32 1, i32 %151)
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @write_cr(i32 2, i32 %153)
  %155 = load i32, i32* %6, align 4
  %156 = sub i32 %155, 1
  %157 = and i32 %156, 31
  %158 = or i32 %157, 128
  %159 = call i32 @write_cr(i32 3, i32 %158)
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @write_cr(i32 4, i32 %160)
  %162 = load i32, i32* %6, align 4
  %163 = sub i32 %162, 1
  %164 = and i32 %163, 32
  %165 = shl i32 %164, 2
  %166 = load i32, i32* %5, align 4
  %167 = and i32 %166, 31
  %168 = or i32 %165, %167
  %169 = call i32 @write_cr(i32 5, i32 %168)
  %170 = load i32, i32* %6, align 4
  %171 = sub i32 %170, 1
  %172 = and i32 %171, 192
  %173 = call i32 @write_cr(i32 60, i32 %172)
  %174 = load i32, i32* %10, align 4
  %175 = sub i32 %174, 2
  %176 = and i32 %175, 255
  %177 = call i32 @write_cr(i32 6, i32 %176)
  %178 = load i32, i32* %10, align 4
  %179 = sub i32 %178, 2
  %180 = lshr i32 %179, 8
  %181 = call i32 @write_cr(i32 48, i32 %180)
  %182 = call i32 @write_cr(i32 7, i32 0)
  %183 = call i32 @write_cr(i32 8, i32 0)
  %184 = call i32 @write_cr(i32 9, i32 0)
  %185 = load i32, i32* %8, align 4
  %186 = sub i32 %185, 1
  %187 = and i32 %186, 255
  %188 = call i32 @write_cr(i32 16, i32 %187)
  %189 = load i32, i32* %8, align 4
  %190 = sub i32 %189, 1
  %191 = lshr i32 %190, 8
  %192 = and i32 %191, 15
  %193 = call i32 @write_cr(i32 50, i32 %192)
  %194 = load i32, i32* %9, align 4
  %195 = sub i32 %194, 1
  %196 = and i32 %195, 15
  %197 = or i32 %196, 128
  %198 = call i32 @write_cr(i32 17, i32 %197)
  %199 = load i32, i32* %7, align 4
  %200 = sub i32 %199, 1
  %201 = and i32 %200, 255
  %202 = call i32 @write_cr(i32 18, i32 %201)
  %203 = load i32, i32* %7, align 4
  %204 = sub i32 %203, 1
  %205 = and i32 %204, 3840
  %206 = lshr i32 %205, 8
  %207 = call i32 @write_cr(i32 49, i32 %206)
  %208 = load i32, i32* %11, align 4
  %209 = and i32 %208, 255
  %210 = call i32 @write_cr(i32 19, i32 %209)
  %211 = load i32, i32* %11, align 4
  %212 = and i32 %211, 3840
  %213 = lshr i32 %212, 8
  %214 = call i32 @write_cr(i32 65, i32 %213)
  %215 = load i32, i32* %8, align 4
  %216 = sub i32 %215, 1
  %217 = and i32 %216, 255
  %218 = call i32 @write_cr(i32 21, i32 %217)
  %219 = load i32, i32* %8, align 4
  %220 = sub i32 %219, 1
  %221 = lshr i32 %220, 8
  %222 = and i32 %221, 15
  %223 = call i32 @write_cr(i32 51, i32 %222)
  %224 = load i32, i32* %6, align 4
  %225 = sub i32 %224, 5
  %226 = and i32 %225, 256
  %227 = lshr i32 %226, 8
  %228 = call i32 @write_cr(i32 56, i32 %227)
  %229 = load i32, i32* %10, align 4
  %230 = sub i32 %229, 1
  %231 = and i32 %230, 255
  %232 = call i32 @write_cr(i32 22, i32 %231)
  %233 = call i32 @write_cr(i32 24, i32 0)
  %234 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %235 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 640
  br i1 %238, label %239, label %243

239:                                              ; preds = %141
  %240 = load i64, i64* @mmio_base, align 8
  %241 = add nsw i64 %240, 1924
  %242 = call i32 @writeb(i32 199, i64 %241)
  br label %247

243:                                              ; preds = %141
  %244 = load i64, i64* @mmio_base, align 8
  %245 = add nsw i64 %244, 1924
  %246 = call i32 @writeb(i32 7, i64 %245)
  br label %247

247:                                              ; preds = %243, %239
  ret void
}

declare dso_local i32 @write_fr(i32, i32) #1

declare dso_local i32 @write_cr(i32, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
