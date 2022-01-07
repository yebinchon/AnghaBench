; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_SetCRT1CRTC.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_SetCRT1CRTC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i8*, i64, i64, i32, i32, %struct.TYPE_2__*, i64, i32, i64 }
%struct.TYPE_2__ = type { i32* }

@DoubleScanMode = common dso_local global i16 0, align 2
@ModeVGA = common dso_local global i64 0, align 8
@XGI_20 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_SetCRT1CRTC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetCRT1CRTC(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i8*, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  store i8* null, i8** %13, align 8
  %14 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %15 = load i16, i16* %6, align 2
  %16 = load i16, i16* %7, align 2
  %17 = call zeroext i16 @SiS_GetModeFlag(%struct.SiS_Private* %14, i16 zeroext %15, i16 zeroext %16)
  store i16 %17, i16* %12, align 2
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %19 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %18, i32 0, i32 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %24 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8* %26, i8** %13, align 8
  br label %54

27:                                               ; preds = %4
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %29 = load i16, i16* %8, align 2
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = call zeroext i16 @SiS_GetRefCRT1CRTC(%struct.SiS_Private* %28, i16 zeroext %29, i32 %32)
  store i16 %33, i16* %9, align 2
  %34 = load i16, i16* %9, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %39 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i16 87, i16* %9, align 2
  br label %43

43:                                               ; preds = %42, %37, %27
  %44 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %45 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %44, i32 0, i32 5
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i16, i16* %9, align 2
  %48 = zext i16 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = bitcast i32* %52 to i8*
  store i8* %53, i8** %13, align 8
  br label %54

54:                                               ; preds = %43, %22
  %55 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %56 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @SiS_SetRegAND(i32 %57, i32 17, i32 127)
  store i16 0, i16* %10, align 2
  store i16 0, i16* %11, align 2
  br label %59

59:                                               ; preds = %75, %54
  %60 = load i16, i16* %10, align 2
  %61 = zext i16 %60 to i32
  %62 = icmp sle i32 %61, 7
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %65 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i16, i16* %11, align 2
  %68 = zext i16 %67 to i32
  %69 = load i8*, i8** %13, align 8
  %70 = load i16, i16* %10, align 2
  %71 = zext i16 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = call i32 @SiS_SetReg(i32 %66, i32 %68, i8 zeroext %73)
  br label %75

75:                                               ; preds = %63
  %76 = load i16, i16* %10, align 2
  %77 = add i16 %76, 1
  store i16 %77, i16* %10, align 2
  %78 = load i16, i16* %11, align 2
  %79 = add i16 %78, 1
  store i16 %79, i16* %11, align 2
  br label %59

80:                                               ; preds = %59
  store i16 16, i16* %11, align 2
  br label %81

81:                                               ; preds = %97, %80
  %82 = load i16, i16* %10, align 2
  %83 = zext i16 %82 to i32
  %84 = icmp sle i32 %83, 10
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %87 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load i16, i16* %11, align 2
  %90 = zext i16 %89 to i32
  %91 = load i8*, i8** %13, align 8
  %92 = load i16, i16* %10, align 2
  %93 = zext i16 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = call i32 @SiS_SetReg(i32 %88, i32 %90, i8 zeroext %95)
  br label %97

97:                                               ; preds = %85
  %98 = load i16, i16* %10, align 2
  %99 = add i16 %98, 1
  store i16 %99, i16* %10, align 2
  %100 = load i16, i16* %11, align 2
  %101 = add i16 %100, 1
  store i16 %101, i16* %11, align 2
  br label %81

102:                                              ; preds = %81
  store i16 21, i16* %11, align 2
  br label %103

103:                                              ; preds = %119, %102
  %104 = load i16, i16* %10, align 2
  %105 = zext i16 %104 to i32
  %106 = icmp sle i32 %105, 12
  br i1 %106, label %107, label %124

107:                                              ; preds = %103
  %108 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %109 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load i16, i16* %11, align 2
  %112 = zext i16 %111 to i32
  %113 = load i8*, i8** %13, align 8
  %114 = load i16, i16* %10, align 2
  %115 = zext i16 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = call i32 @SiS_SetReg(i32 %110, i32 %112, i8 zeroext %117)
  br label %119

119:                                              ; preds = %107
  %120 = load i16, i16* %10, align 2
  %121 = add i16 %120, 1
  store i16 %121, i16* %10, align 2
  %122 = load i16, i16* %11, align 2
  %123 = add i16 %122, 1
  store i16 %123, i16* %11, align 2
  br label %103

124:                                              ; preds = %103
  store i16 10, i16* %11, align 2
  br label %125

125:                                              ; preds = %141, %124
  %126 = load i16, i16* %10, align 2
  %127 = zext i16 %126 to i32
  %128 = icmp sle i32 %127, 15
  br i1 %128, label %129, label %146

129:                                              ; preds = %125
  %130 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %131 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load i16, i16* %11, align 2
  %134 = zext i16 %133 to i32
  %135 = load i8*, i8** %13, align 8
  %136 = load i16, i16* %10, align 2
  %137 = zext i16 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = call i32 @SiS_SetReg(i32 %132, i32 %134, i8 zeroext %139)
  br label %141

141:                                              ; preds = %129
  %142 = load i16, i16* %10, align 2
  %143 = add i16 %142, 1
  store i16 %143, i16* %10, align 2
  %144 = load i16, i16* %11, align 2
  %145 = add i16 %144, 1
  store i16 %145, i16* %11, align 2
  br label %125

146:                                              ; preds = %125
  %147 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %148 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load i8*, i8** %13, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 16
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = and i32 %153, 224
  %155 = trunc i32 %154 to i8
  %156 = call i32 @SiS_SetReg(i32 %149, i32 14, i8 zeroext %155)
  %157 = load i8*, i8** %13, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 16
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = and i32 %160, 1
  %162 = shl i32 %161, 5
  %163 = trunc i32 %162 to i16
  store i16 %163, i16* %9, align 2
  %164 = load i16, i16* %12, align 2
  %165 = zext i16 %164 to i32
  %166 = load i16, i16* @DoubleScanMode, align 2
  %167 = zext i16 %166 to i32
  %168 = and i32 %165, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %146
  %171 = load i16, i16* %9, align 2
  %172 = zext i16 %171 to i32
  %173 = or i32 %172, 128
  %174 = trunc i32 %173 to i16
  store i16 %174, i16* %9, align 2
  br label %175

175:                                              ; preds = %170, %146
  %176 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %177 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = load i16, i16* %9, align 2
  %180 = call i32 @SiS_SetRegANDOR(i32 %178, i32 9, i32 95, i16 zeroext %179)
  %181 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %182 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @ModeVGA, align 8
  %185 = icmp sgt i64 %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %175
  %187 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %188 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @SiS_SetReg(i32 %189, i32 20, i8 zeroext 79)
  br label %191

191:                                              ; preds = %186, %175
  ret void
}

declare dso_local zeroext i16 @SiS_GetModeFlag(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local zeroext i16 @SiS_GetRefCRT1CRTC(%struct.SiS_Private*, i16 zeroext, i32) #1

declare dso_local i32 @SiS_SetRegAND(i32, i32, i32) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i8 zeroext) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
