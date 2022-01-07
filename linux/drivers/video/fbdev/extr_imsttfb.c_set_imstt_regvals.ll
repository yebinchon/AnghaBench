; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imsttfb.c_set_imstt_regvals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imsttfb.c_set_imstt_regvals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.imstt_par* }
%struct.TYPE_2__ = type { i32 }
%struct.imstt_par = type { i64, i32, %struct.imstt_regvals }
%struct.imstt_regvals = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IBM = common dso_local global i64 0, align 8
@TVP = common dso_local global i64 0, align 8
@HES = common dso_local global i32 0, align 4
@HEB = common dso_local global i32 0, align 4
@HSB = common dso_local global i32 0, align 4
@HT = common dso_local global i32 0, align 4
@VES = common dso_local global i32 0, align 4
@VEB = common dso_local global i32 0, align 4
@VSB = common dso_local global i32 0, align 4
@VT = common dso_local global i32 0, align 4
@VIL = common dso_local global i32 0, align 4
@HCIV = common dso_local global i32 0, align 4
@VCIV = common dso_local global i32 0, align 4
@TCDR = common dso_local global i32 0, align 4
@RRCIV = common dso_local global i32 0, align 4
@RRSC = common dso_local global i32 0, align 4
@RRCR = common dso_local global i32 0, align 4
@HRIR = common dso_local global i32 0, align 4
@CMR = common dso_local global i32 0, align 4
@SRGCTL = common dso_local global i32 0, align 4
@SCR = common dso_local global i32 0, align 4
@SPR = common dso_local global i32 0, align 4
@STGCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i32)* @set_imstt_regvals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_imstt_regvals(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imstt_par*, align 8
  %6 = alloca %struct.imstt_regvals*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 1
  %13 = load %struct.imstt_par*, %struct.imstt_par** %12, align 8
  store %struct.imstt_par* %13, %struct.imstt_par** %5, align 8
  %14 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %15 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %14, i32 0, i32 2
  store %struct.imstt_regvals* %15, %struct.imstt_regvals** %6, align 8
  %16 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %17 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IBM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @set_imstt_regvals_ibm(%struct.imstt_par* %22, i32 %23)
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @set_imstt_regvals_tvp(%struct.imstt_par* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %31 [
    i32 8, label %32
    i32 16, label %37
    i32 24, label %42
    i32 32, label %51
  ]

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %29, %31
  store i32 6065, i32* %7, align 4
  %33 = load %struct.imstt_regvals*, %struct.imstt_regvals** %6, align 8
  %34 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 2
  store i32 %36, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %55

37:                                               ; preds = %29
  store i32 6067, i32* %7, align 4
  %38 = load %struct.imstt_regvals*, %struct.imstt_regvals** %6, align 8
  %39 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %8, align 4
  store i32 256, i32* %9, align 4
  br label %55

42:                                               ; preds = %29
  store i32 6073, i32* %7, align 4
  %43 = load %struct.imstt_regvals*, %struct.imstt_regvals** %6, align 8
  %44 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.imstt_regvals*, %struct.imstt_regvals** %6, align 8
  %47 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 2
  %50 = sub nsw i32 %45, %49
  store i32 %50, i32* %8, align 4
  store i32 512, i32* %9, align 4
  br label %55

51:                                               ; preds = %29
  store i32 6069, i32* %7, align 4
  %52 = load %struct.imstt_regvals*, %struct.imstt_regvals** %6, align 8
  %53 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  store i32 768, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %42, %37, %32
  %56 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %57 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TVP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %62, 48
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %61, %55
  %65 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %66 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @HES, align 4
  %69 = load %struct.imstt_regvals*, %struct.imstt_regvals** %6, align 8
  %70 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @write_reg_le32(i32 %67, i32 %68, i32 %71)
  %73 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %74 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @HEB, align 4
  %77 = load %struct.imstt_regvals*, %struct.imstt_regvals** %6, align 8
  %78 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @write_reg_le32(i32 %75, i32 %76, i32 %79)
  %81 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %82 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @HSB, align 4
  %85 = load %struct.imstt_regvals*, %struct.imstt_regvals** %6, align 8
  %86 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @write_reg_le32(i32 %83, i32 %84, i32 %87)
  %89 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %90 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @HT, align 4
  %93 = load %struct.imstt_regvals*, %struct.imstt_regvals** %6, align 8
  %94 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @write_reg_le32(i32 %91, i32 %92, i32 %95)
  %97 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %98 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @VES, align 4
  %101 = load %struct.imstt_regvals*, %struct.imstt_regvals** %6, align 8
  %102 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @write_reg_le32(i32 %99, i32 %100, i32 %103)
  %105 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %106 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @VEB, align 4
  %109 = load %struct.imstt_regvals*, %struct.imstt_regvals** %6, align 8
  %110 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @write_reg_le32(i32 %107, i32 %108, i32 %111)
  %113 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %114 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @VSB, align 4
  %117 = load %struct.imstt_regvals*, %struct.imstt_regvals** %6, align 8
  %118 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @write_reg_le32(i32 %115, i32 %116, i32 %119)
  %121 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %122 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @VT, align 4
  %125 = load %struct.imstt_regvals*, %struct.imstt_regvals** %6, align 8
  %126 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @write_reg_le32(i32 %123, i32 %124, i32 %127)
  %129 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %130 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @VIL, align 4
  %133 = load %struct.imstt_regvals*, %struct.imstt_regvals** %6, align 8
  %134 = getelementptr inbounds %struct.imstt_regvals, %struct.imstt_regvals* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @write_reg_le32(i32 %131, i32 %132, i32 %135)
  %137 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %138 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @HCIV, align 4
  %141 = call i32 @write_reg_le32(i32 %139, i32 %140, i32 1)
  %142 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %143 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @VCIV, align 4
  %146 = call i32 @write_reg_le32(i32 %144, i32 %145, i32 1)
  %147 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %148 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @TCDR, align 4
  %151 = call i32 @write_reg_le32(i32 %149, i32 %150, i32 4)
  %152 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %153 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @RRCIV, align 4
  %156 = call i32 @write_reg_le32(i32 %154, i32 %155, i32 1)
  %157 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %158 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @RRSC, align 4
  %161 = call i32 @write_reg_le32(i32 %159, i32 %160, i32 2432)
  %162 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %163 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @RRCR, align 4
  %166 = call i32 @write_reg_le32(i32 %164, i32 %165, i32 17)
  %167 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %168 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @IBM, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %188

172:                                              ; preds = %64
  %173 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %174 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @HRIR, align 4
  %177 = call i32 @write_reg_le32(i32 %175, i32 %176, i32 256)
  %178 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %179 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @CMR, align 4
  %182 = call i32 @write_reg_le32(i32 %180, i32 %181, i32 255)
  %183 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %184 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @SRGCTL, align 4
  %187 = call i32 @write_reg_le32(i32 %185, i32 %186, i32 115)
  br label %204

188:                                              ; preds = %64
  %189 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %190 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @HRIR, align 4
  %193 = call i32 @write_reg_le32(i32 %191, i32 %192, i32 512)
  %194 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %195 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @CMR, align 4
  %198 = call i32 @write_reg_le32(i32 %196, i32 %197, i32 511)
  %199 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %200 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @SRGCTL, align 4
  %203 = call i32 @write_reg_le32(i32 %201, i32 %202, i32 3)
  br label %204

204:                                              ; preds = %188, %172
  %205 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %206 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  switch i32 %208, label %212 [
    i32 2097152, label %209
  ]

209:                                              ; preds = %204
  %210 = load i32, i32* %9, align 4
  %211 = or i32 1437, %210
  store i32 %211, i32* %10, align 4
  br label %217

212:                                              ; preds = %204
  %213 = load i32, i32* %8, align 4
  %214 = ashr i32 %213, 1
  store i32 %214, i32* %8, align 4
  %215 = load i32, i32* %9, align 4
  %216 = or i32 86237, %215
  store i32 %216, i32* %10, align 4
  br label %217

217:                                              ; preds = %212, %209
  %218 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %219 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @SCR, align 4
  %222 = load i32, i32* %10, align 4
  %223 = call i32 @write_reg_le32(i32 %220, i32 %221, i32 %222)
  %224 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %225 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @SPR, align 4
  %228 = load i32, i32* %8, align 4
  %229 = call i32 @write_reg_le32(i32 %226, i32 %227, i32 %228)
  %230 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %231 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @STGCTL, align 4
  %234 = load i32, i32* %7, align 4
  %235 = call i32 @write_reg_le32(i32 %232, i32 %233, i32 %234)
  ret void
}

declare dso_local i32 @set_imstt_regvals_ibm(%struct.imstt_par*, i32) #1

declare dso_local i32 @set_imstt_regvals_tvp(%struct.imstt_par*, i32) #1

declare dso_local i32 @write_reg_le32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
