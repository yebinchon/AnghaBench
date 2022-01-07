; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetCRT2Sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetCRT2Sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i16, i32, i32, i32, i64, i64, i32, i64, i32, i32, i64, i64, i32, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i16 }

@SetCRT2ToTV = common dso_local global i32 0, align 4
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@LCDSync = common dso_local global i32 0, align 4
@LCDRGB18Bit = common dso_local global i32 0, align 4
@CUT_BARCO1366 = common dso_local global i64 0, align 8
@CUT_BARCO1024 = common dso_local global i64 0, align 8
@CUT_PANEL848 = common dso_local global i64 0, align 8
@CUT_PANEL856 = common dso_local global i64 0, align 8
@SIS_315H = common dso_local global i64 0, align 8
@VB_SISVB = common dso_local global i32 0, align 4
@CUT_CLEVO1400 = common dso_local global i64 0, align 8
@CUT_COMPAQ1280 = common dso_local global i64 0, align 8
@LCDPass11 = common dso_local global i32 0, align 4
@Panel_1280x1024 = common dso_local global i64 0, align 8
@Panel_1400x1050 = common dso_local global i64 0, align 8
@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@SetCRT2ToRAMDAC = common dso_local global i32 0, align 4
@VB_NoLCD = common dso_local global i32 0, align 4
@VB_SIS30xBLV = common dso_local global i32 0, align 4
@VB_SIS30xC = common dso_local global i32 0, align 4
@VB_SISLVDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16)* @SiS_SetCRT2Sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetCRT2Sync(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  store i16 0, i16* %7, align 2
  store i16 192, i16* %8, align 2
  %10 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %11 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %10, i32 0, i32 11
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %16 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 8
  store i16 %17, i16* %9, align 2
  br label %27

18:                                               ; preds = %3
  %19 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %20 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %19, i32 0, i32 16
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i16, i16* %6, align 2
  %23 = zext i16 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 2
  store i16 %26, i16* %9, align 2
  br label %27

27:                                               ; preds = %18, %14
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %29 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %197

32:                                               ; preds = %27
  %33 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %34 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SetCRT2ToTV, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i16 0, i16* %7, align 2
  br label %65

40:                                               ; preds = %32
  %41 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %42 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SetCRT2ToLCD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %49 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @LCDSync, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %56 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %7, align 2
  br label %64

59:                                               ; preds = %47, %40
  %60 = load i16, i16* %9, align 2
  %61 = zext i16 %60 to i32
  %62 = ashr i32 %61, 8
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %7, align 2
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i16, i16* %7, align 2
  %67 = zext i16 %66 to i32
  %68 = and i32 %67, 192
  %69 = trunc i32 %68 to i16
  store i16 %69, i16* %7, align 2
  %70 = load i16, i16* %7, align 2
  %71 = zext i16 %70 to i32
  %72 = or i32 %71, 32
  %73 = trunc i32 %72 to i16
  store i16 %73, i16* %7, align 2
  %74 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %75 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @LCDRGB18Bit, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %65
  %81 = load i16, i16* %7, align 2
  %82 = zext i16 %81 to i32
  %83 = or i32 %82, 16
  %84 = trunc i32 %83 to i16
  store i16 %84, i16* %7, align 2
  br label %85

85:                                               ; preds = %80, %65
  %86 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %87 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SetCRT2ToLCD, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %157

92:                                               ; preds = %85
  %93 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %94 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CUT_BARCO1366, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %100 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @CUT_BARCO1024, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98, %92
  %105 = load i16, i16* %7, align 2
  %106 = zext i16 %105 to i32
  %107 = or i32 %106, 240
  %108 = trunc i32 %107 to i16
  store i16 %108, i16* %7, align 2
  br label %109

109:                                              ; preds = %104, %98
  %110 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %111 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %110, i32 0, i32 14
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %136, label %114

114:                                              ; preds = %109
  %115 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %116 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %115, i32 0, i32 13
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %136, label %119

119:                                              ; preds = %114
  %120 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %121 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %120, i32 0, i32 15
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %136, label %124

124:                                              ; preds = %119
  %125 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %126 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @CUT_PANEL848, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %136, label %130

130:                                              ; preds = %124
  %131 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %132 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @CUT_PANEL856, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %130, %124, %119, %114, %109
  %137 = load i16, i16* %7, align 2
  %138 = zext i16 %137 to i32
  %139 = or i32 %138, 48
  %140 = trunc i32 %139 to i16
  store i16 %140, i16* %7, align 2
  br label %141

141:                                              ; preds = %136, %130
  %142 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %143 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %142, i32 0, i32 14
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %148 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %147, i32 0, i32 13
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146, %141
  %152 = load i16, i16* %7, align 2
  %153 = zext i16 %152 to i32
  %154 = and i32 %153, -193
  %155 = trunc i32 %154 to i16
  store i16 %155, i16* %7, align 2
  br label %156

156:                                              ; preds = %151, %146
  br label %157

157:                                              ; preds = %156, %85
  %158 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %159 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @SetCRT2ToTV, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %190

164:                                              ; preds = %157
  %165 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %166 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @SIS_315H, align 8
  %169 = icmp sge i64 %167, %168
  br i1 %169, label %170, label %184

170:                                              ; preds = %164
  %171 = load i16, i16* %7, align 2
  %172 = zext i16 %171 to i32
  %173 = ashr i32 %172, 3
  %174 = trunc i32 %173 to i16
  store i16 %174, i16* %7, align 2
  %175 = load i16, i16* %7, align 2
  %176 = zext i16 %175 to i32
  %177 = and i32 %176, 24
  %178 = trunc i32 %177 to i16
  store i16 %178, i16* %7, align 2
  %179 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %180 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %179, i32 0, i32 9
  %181 = load i32, i32* %180, align 4
  %182 = load i16, i16* %7, align 2
  %183 = call i32 @SiS_SetRegANDOR(i32 %181, i32 19, i32 231, i16 zeroext %182)
  br label %189

184:                                              ; preds = %164
  %185 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %186 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %185, i32 0, i32 9
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @SiS_SetRegANDOR(i32 %187, i32 25, i32 15, i16 zeroext 224)
  br label %189

189:                                              ; preds = %184, %170
  br label %196

190:                                              ; preds = %157
  %191 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %192 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %191, i32 0, i32 9
  %193 = load i32, i32* %192, align 4
  %194 = load i16, i16* %7, align 2
  %195 = call i32 @SiS_SetRegANDOR(i32 %193, i32 25, i32 15, i16 zeroext %194)
  br label %196

196:                                              ; preds = %190, %189
  br label %214

197:                                              ; preds = %27
  %198 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %199 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @VB_SISVB, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %197
  %205 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %206 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @SIS_315H, align 8
  %209 = icmp slt i64 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %204
  br label %212

211:                                              ; preds = %204
  br label %212

212:                                              ; preds = %211, %210
  br label %213

213:                                              ; preds = %212, %197
  br label %214

214:                                              ; preds = %213, %196
  ret void
}

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
