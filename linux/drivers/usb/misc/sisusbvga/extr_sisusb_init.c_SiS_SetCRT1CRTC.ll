; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetCRT1CRTC.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetCRT1CRTC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i64, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i8 }
%struct.TYPE_4__ = type { i16 }

@DoubleScanMode = common dso_local global i16 0, align 2
@ModeVGA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_SetCRT1CRTC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetCRT1CRTC(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %14 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %15 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %16 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @SiS_SetRegAND(%struct.SiS_Private* %14, i32 %17, i32 17, i32 127)
  %19 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %20 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %19, i32 0, i32 5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i16, i16* %7, align 2
  %23 = zext i16 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 2
  store i16 %26, i16* %13, align 2
  %27 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %28 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %27, i32 0, i32 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i16, i16* %8, align 2
  %31 = zext i16 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %9, align 1
  store i16 0, i16* %11, align 2
  store i16 0, i16* %12, align 2
  br label %35

35:                                               ; preds = %59, %4
  %36 = load i16, i16* %11, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp sle i32 %37, 7
  br i1 %38, label %39, label %64

39:                                               ; preds = %35
  %40 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %41 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %42 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i16, i16* %12, align 2
  %45 = zext i16 %44 to i32
  %46 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %47 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i8, i8* %9, align 1
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i16, i16* %11, align 2
  %55 = zext i16 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @SiS_SetReg(%struct.SiS_Private* %40, i32 %43, i32 %45, i32 %57)
  br label %59

59:                                               ; preds = %39
  %60 = load i16, i16* %11, align 2
  %61 = add i16 %60, 1
  store i16 %61, i16* %11, align 2
  %62 = load i16, i16* %12, align 2
  %63 = add i16 %62, 1
  store i16 %63, i16* %12, align 2
  br label %35

64:                                               ; preds = %35
  store i16 16, i16* %12, align 2
  br label %65

65:                                               ; preds = %89, %64
  %66 = load i16, i16* %11, align 2
  %67 = zext i16 %66 to i32
  %68 = icmp sle i32 %67, 10
  br i1 %68, label %69, label %94

69:                                               ; preds = %65
  %70 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %71 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %72 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i16, i16* %12, align 2
  %75 = zext i16 %74 to i32
  %76 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %77 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %76, i32 0, i32 2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i8, i8* %9, align 1
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i16, i16* %11, align 2
  %85 = zext i16 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @SiS_SetReg(%struct.SiS_Private* %70, i32 %73, i32 %75, i32 %87)
  br label %89

89:                                               ; preds = %69
  %90 = load i16, i16* %11, align 2
  %91 = add i16 %90, 1
  store i16 %91, i16* %11, align 2
  %92 = load i16, i16* %12, align 2
  %93 = add i16 %92, 1
  store i16 %93, i16* %12, align 2
  br label %65

94:                                               ; preds = %65
  store i16 21, i16* %12, align 2
  br label %95

95:                                               ; preds = %119, %94
  %96 = load i16, i16* %11, align 2
  %97 = zext i16 %96 to i32
  %98 = icmp sle i32 %97, 12
  br i1 %98, label %99, label %124

99:                                               ; preds = %95
  %100 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %101 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %102 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i16, i16* %12, align 2
  %105 = zext i16 %104 to i32
  %106 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %107 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %106, i32 0, i32 2
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i8, i8* %9, align 1
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i16, i16* %11, align 2
  %115 = zext i16 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @SiS_SetReg(%struct.SiS_Private* %100, i32 %103, i32 %105, i32 %117)
  br label %119

119:                                              ; preds = %99
  %120 = load i16, i16* %11, align 2
  %121 = add i16 %120, 1
  store i16 %121, i16* %11, align 2
  %122 = load i16, i16* %12, align 2
  %123 = add i16 %122, 1
  store i16 %123, i16* %12, align 2
  br label %95

124:                                              ; preds = %95
  store i16 10, i16* %12, align 2
  br label %125

125:                                              ; preds = %149, %124
  %126 = load i16, i16* %11, align 2
  %127 = zext i16 %126 to i32
  %128 = icmp sle i32 %127, 15
  br i1 %128, label %129, label %154

129:                                              ; preds = %125
  %130 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %131 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %132 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i16, i16* %12, align 2
  %135 = zext i16 %134 to i32
  %136 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %137 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %136, i32 0, i32 2
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i8, i8* %9, align 1
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i16, i16* %11, align 2
  %145 = zext i16 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @SiS_SetReg(%struct.SiS_Private* %130, i32 %133, i32 %135, i32 %147)
  br label %149

149:                                              ; preds = %129
  %150 = load i16, i16* %11, align 2
  %151 = add i16 %150, 1
  store i16 %151, i16* %11, align 2
  %152 = load i16, i16* %12, align 2
  %153 = add i16 %152, 1
  store i16 %153, i16* %12, align 2
  br label %125

154:                                              ; preds = %125
  %155 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %156 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %155, i32 0, i32 2
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load i8, i8* %9, align 1
  %159 = zext i8 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 16
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 224
  %166 = trunc i32 %165 to i16
  store i16 %166, i16* %10, align 2
  %167 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %168 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %169 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load i16, i16* %10, align 2
  %172 = zext i16 %171 to i32
  %173 = call i32 @SiS_SetReg(%struct.SiS_Private* %167, i32 %170, i32 14, i32 %172)
  %174 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %175 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %174, i32 0, i32 2
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load i8, i8* %9, align 1
  %178 = zext i8 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 16
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 1
  %185 = shl i32 %184, 5
  %186 = trunc i32 %185 to i16
  store i16 %186, i16* %10, align 2
  %187 = load i16, i16* %13, align 2
  %188 = zext i16 %187 to i32
  %189 = load i16, i16* @DoubleScanMode, align 2
  %190 = zext i16 %189 to i32
  %191 = and i32 %188, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %154
  %194 = load i16, i16* %10, align 2
  %195 = zext i16 %194 to i32
  %196 = or i32 %195, 128
  %197 = trunc i32 %196 to i16
  store i16 %197, i16* %10, align 2
  br label %198

198:                                              ; preds = %193, %154
  %199 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %200 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %201 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load i16, i16* %10, align 2
  %204 = call i32 @SiS_SetRegANDOR(%struct.SiS_Private* %199, i32 %202, i32 9, i32 95, i16 zeroext %203)
  %205 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %206 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @ModeVGA, align 8
  %209 = icmp sgt i64 %207, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %198
  %211 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %212 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %213 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @SiS_SetReg(%struct.SiS_Private* %211, i32 %214, i32 20, i32 79)
  br label %216

216:                                              ; preds = %210, %198
  ret void
}

declare dso_local i32 @SiS_SetRegAND(%struct.SiS_Private*, i32, i32, i32) #1

declare dso_local i32 @SiS_SetReg(%struct.SiS_Private*, i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegANDOR(%struct.SiS_Private*, i32, i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
