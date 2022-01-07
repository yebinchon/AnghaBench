; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetCRT1ModeRegs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetCRT1ModeRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i64, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i16 }
%struct.TYPE_5__ = type { i16 }
%struct.TYPE_4__ = type { i16 }

@ModeEGA = common dso_local global i64 0, align 8
@ModeVGA = common dso_local global i32 0, align 4
@InterlaceMode = common dso_local global i16 0, align 2
@HalfDCLK = common dso_local global i16 0, align 2
@LineCompareOff = common dso_local global i16 0, align 2
@ModeText = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_SetCRT1ModeRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetCRT1ModeRegs(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  store i16 0, i16* %10, align 2
  %14 = load i16, i16* %6, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp sle i32 %15, 19
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %19 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %18, i32 0, i32 5
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i16, i16* %7, align 2
  %22 = zext i16 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 2
  store i16 %25, i16* %11, align 2
  br label %43

26:                                               ; preds = %4
  %27 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %28 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %27, i32 0, i32 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i16, i16* %7, align 2
  %31 = zext i16 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i16, i16* %33, align 2
  store i16 %34, i16* %11, align 2
  %35 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %36 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i16, i16* %8, align 2
  %39 = zext i16 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i16, i16* %41, align 2
  store i16 %42, i16* %10, align 2
  br label %43

43:                                               ; preds = %26, %17
  %44 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %45 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %46 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @SiS_SetRegAND(%struct.SiS_Private* %44, i32 %47, i32 31, i32 63)
  store i16 0, i16* %9, align 2
  %49 = load i16, i16* %6, align 2
  %50 = zext i16 %49 to i32
  %51 = icmp sgt i32 %50, 19
  br i1 %51, label %52, label %87

52:                                               ; preds = %43
  %53 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %54 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ModeEGA, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = load i16, i16* %9, align 2
  %60 = zext i16 %59 to i32
  %61 = or i32 %60, 2
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %9, align 2
  %63 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %64 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @ModeVGA, align 4
  %67 = sext i32 %66 to i64
  %68 = sub nsw i64 %65, %67
  %69 = shl i64 %68, 2
  %70 = load i16, i16* %9, align 2
  %71 = zext i16 %70 to i64
  %72 = or i64 %71, %69
  %73 = trunc i64 %72 to i16
  store i16 %73, i16* %9, align 2
  br label %74

74:                                               ; preds = %58, %52
  %75 = load i16, i16* %10, align 2
  %76 = zext i16 %75 to i32
  %77 = load i16, i16* @InterlaceMode, align 2
  %78 = zext i16 %77 to i32
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load i16, i16* %9, align 2
  %83 = zext i16 %82 to i32
  %84 = or i32 %83, 32
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %9, align 2
  br label %86

86:                                               ; preds = %81, %74
  br label %87

87:                                               ; preds = %86, %43
  %88 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %89 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %90 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i16, i16* %9, align 2
  %93 = call i32 @SiS_SetRegANDOR(%struct.SiS_Private* %88, i32 %91, i32 6, i32 192, i16 zeroext %92)
  store i16 0, i16* %9, align 2
  %94 = load i16, i16* %10, align 2
  %95 = zext i16 %94 to i32
  %96 = load i16, i16* @InterlaceMode, align 2
  %97 = zext i16 %96 to i32
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %139

100:                                              ; preds = %87
  %101 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %102 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %103 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @SiS_GetReg(%struct.SiS_Private* %101, i32 %104, i32 4)
  %106 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %107 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %108 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @SiS_GetReg(%struct.SiS_Private* %106, i32 %109, i32 11)
  %111 = and i32 %110, 192
  %112 = shl i32 %111, 2
  %113 = or i32 %105, %112
  %114 = sub nsw i32 %113, 3
  %115 = trunc i32 %114 to i16
  store i16 %115, i16* %12, align 2
  %116 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %117 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %118 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @SiS_GetReg(%struct.SiS_Private* %116, i32 %119, i32 0)
  %121 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %122 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %123 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @SiS_GetReg(%struct.SiS_Private* %121, i32 %124, i32 11)
  %126 = and i32 %125, 3
  %127 = shl i32 %126, 8
  %128 = or i32 %120, %127
  %129 = add nsw i32 %128, 5
  %130 = trunc i32 %129 to i16
  store i16 %130, i16* %13, align 2
  %131 = load i16, i16* %12, align 2
  %132 = zext i16 %131 to i32
  %133 = load i16, i16* %13, align 2
  %134 = zext i16 %133 to i32
  %135 = ashr i32 %134, 1
  %136 = sub nsw i32 %132, %135
  %137 = add nsw i32 %136, 3
  %138 = trunc i32 %137 to i16
  store i16 %138, i16* %9, align 2
  br label %139

139:                                              ; preds = %100, %87
  %140 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %141 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %142 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i16, i16* %9, align 2
  %145 = zext i16 %144 to i32
  %146 = and i32 %145, 255
  %147 = call i32 @SiS_SetReg(%struct.SiS_Private* %140, i32 %143, i32 25, i32 %146)
  %148 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %149 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %150 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i16, i16* %9, align 2
  %153 = zext i16 %152 to i32
  %154 = ashr i32 %153, 8
  %155 = trunc i32 %154 to i16
  %156 = call i32 @SiS_SetRegANDOR(%struct.SiS_Private* %148, i32 %151, i32 26, i32 252, i16 zeroext %155)
  %157 = load i16, i16* %11, align 2
  %158 = zext i16 %157 to i32
  %159 = load i16, i16* @HalfDCLK, align 2
  %160 = zext i16 %159 to i32
  %161 = and i32 %158, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %139
  %164 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %165 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %166 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @SiS_SetRegOR(%struct.SiS_Private* %164, i32 %167, i32 1, i32 8)
  br label %169

169:                                              ; preds = %163, %139
  store i16 0, i16* %9, align 2
  %170 = load i16, i16* %11, align 2
  %171 = zext i16 %170 to i32
  %172 = load i16, i16* @LineCompareOff, align 2
  %173 = zext i16 %172 to i32
  %174 = and i32 %171, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  store i16 8, i16* %9, align 2
  br label %177

177:                                              ; preds = %176, %169
  %178 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %179 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %180 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load i16, i16* %9, align 2
  %183 = call i32 @SiS_SetRegANDOR(%struct.SiS_Private* %178, i32 %181, i32 15, i32 183, i16 zeroext %182)
  %184 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %185 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @ModeEGA, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %199

189:                                              ; preds = %177
  %190 = load i16, i16* %6, align 2
  %191 = zext i16 %190 to i32
  %192 = icmp sgt i32 %191, 19
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %195 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %196 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @SiS_SetRegOR(%struct.SiS_Private* %194, i32 %197, i32 15, i32 64)
  br label %199

199:                                              ; preds = %193, %189, %177
  %200 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %201 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %202 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @SiS_SetRegAND(%struct.SiS_Private* %200, i32 %203, i32 49, i32 251)
  store i16 96, i16* %9, align 2
  %205 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %206 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @ModeText, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %226

210:                                              ; preds = %199
  %211 = load i16, i16* %9, align 2
  %212 = zext i16 %211 to i32
  %213 = xor i32 %212, 96
  %214 = trunc i32 %213 to i16
  store i16 %214, i16* %9, align 2
  %215 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %216 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @ModeEGA, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %210
  %221 = load i16, i16* %9, align 2
  %222 = zext i16 %221 to i32
  %223 = xor i32 %222, 160
  %224 = trunc i32 %223 to i16
  store i16 %224, i16* %9, align 2
  br label %225

225:                                              ; preds = %220, %210
  br label %226

226:                                              ; preds = %225, %199
  %227 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %228 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %229 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load i16, i16* %9, align 2
  %232 = call i32 @SiS_SetRegANDOR(%struct.SiS_Private* %227, i32 %230, i32 33, i32 31, i16 zeroext %231)
  %233 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %234 = load i16, i16* %6, align 2
  %235 = load i16, i16* %8, align 2
  %236 = call i32 @SiS_SetVCLKState(%struct.SiS_Private* %233, i16 zeroext %234, i16 zeroext %235)
  %237 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %238 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %239 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @SiS_GetReg(%struct.SiS_Private* %237, i32 %240, i32 49)
  %242 = and i32 %241, 64
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %226
  %245 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %246 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %247 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @SiS_SetReg(%struct.SiS_Private* %245, i32 %248, i32 82, i32 44)
  br label %256

250:                                              ; preds = %226
  %251 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %252 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %253 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @SiS_SetReg(%struct.SiS_Private* %251, i32 %254, i32 82, i32 108)
  br label %256

256:                                              ; preds = %250, %244
  ret void
}

declare dso_local i32 @SiS_SetRegAND(%struct.SiS_Private*, i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegANDOR(%struct.SiS_Private*, i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @SiS_GetReg(%struct.SiS_Private*, i32, i32) #1

declare dso_local i32 @SiS_SetReg(%struct.SiS_Private*, i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegOR(%struct.SiS_Private*, i32, i32, i32) #1

declare dso_local i32 @SiS_SetVCLKState(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
