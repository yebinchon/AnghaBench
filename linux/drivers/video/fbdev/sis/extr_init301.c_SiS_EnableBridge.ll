; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_EnableBridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_EnableBridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i64, i64, i8*, i32, i8, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@VB_SISVB = common dso_local global i32 0, align 4
@VB_SIS30xBLV = common dso_local global i32 0, align 4
@SIS_315H = common dso_local global i64 0, align 8
@SetCRT2ToRAMDAC = common dso_local global i16 0, align 2
@CUT_ASUSA2H_2 = common dso_local global i64 0, align 8
@CUT_CLEVO1024 = common dso_local global i64 0, align 8
@CUT_CLEVO1400 = common dso_local global i64 0, align 8
@CUT_COMPAL1400_2 = common dso_local global i64 0, align 8
@CUT_COMPAQ1280 = common dso_local global i64 0, align 8
@IS_SIS740 = common dso_local global i64 0, align 8
@SIS_550 = common dso_local global i64 0, align 8
@SIS_730 = common dso_local global i64 0, align 8
@SIS_740 = common dso_local global i64 0, align 8
@VB_NoLCD = common dso_local global i32 0, align 4
@VB_SISEMI = common dso_local global i32 0, align 4
@VB_SISLVDS = common dso_local global i32 0, align 4
@VB_SISPOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*)* @SiS_EnableBridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_EnableBridge(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  store i16 0, i16* %3, align 2
  %5 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %6 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @VB_SISVB, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %141

11:                                               ; preds = %1
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %13 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @VB_SIS30xBLV, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %20 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SIS_315H, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %26

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %24
  br label %140

27:                                               ; preds = %11
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %29 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SIS_315H, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %35 = call i64 @SiS_CRT2IsLCD(%struct.SiS_Private* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %39 = call i32 @SiS_SetRegSR11ANDOR(%struct.SiS_Private* %38, i32 251, i32 0)
  %40 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %41 = call i32 @SiS_PanelDelay(%struct.SiS_Private* %40, i32 0)
  br label %42

42:                                               ; preds = %37, %33
  br label %43

43:                                               ; preds = %42, %27
  %44 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %45 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %44, i32 0, i32 14
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @SiS_GetReg(i32 %46, i32 50)
  %48 = and i32 %47, 223
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %3, align 2
  %50 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %51 = call i64 @SiS_BridgeInSlavemode(%struct.SiS_Private* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %43
  %54 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %55 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %54, i32 0, i32 16
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @SiS_GetReg(i32 %56, i32 48)
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %4, align 2
  %59 = load i16, i16* %4, align 2
  %60 = zext i16 %59 to i32
  %61 = load i16, i16* @SetCRT2ToRAMDAC, align 2
  %62 = zext i16 %61 to i32
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %53
  %66 = load i16, i16* %3, align 2
  %67 = zext i16 %66 to i32
  %68 = or i32 %67, 32
  %69 = trunc i32 %68 to i16
  store i16 %69, i16* %3, align 2
  br label %70

70:                                               ; preds = %65, %53
  br label %71

71:                                               ; preds = %70, %43
  %72 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %73 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %72, i32 0, i32 14
  %74 = load i32, i32* %73, align 8
  %75 = load i16, i16* %3, align 2
  %76 = call i32 @SiS_SetReg(i32 %74, i32 50, i16 zeroext %75)
  %77 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %78 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %77, i32 0, i32 14
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @SiS_SetRegOR(i32 %79, i32 30, i32 32)
  %81 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %82 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SIS_315H, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %71
  %87 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %88 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %87, i32 0, i32 13
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @SiS_GetReg(i32 %89, i32 46)
  %91 = trunc i32 %90 to i16
  store i16 %91, i16* %3, align 2
  %92 = load i16, i16* %3, align 2
  %93 = zext i16 %92 to i32
  %94 = and i32 %93, 128
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %86
  %97 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %98 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @SiS_SetRegOR(i32 %99, i32 46, i32 128)
  br label %101

101:                                              ; preds = %96, %86
  br label %102

102:                                              ; preds = %101, %71
  %103 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %104 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %103, i32 0, i32 15
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @SiS_SetRegANDOR(i32 %105, i32 0, i32 31, i32 32)
  %107 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %108 = call i32 @SiS_VBLongWait(%struct.SiS_Private* %107)
  %109 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %110 = call i32 @SiS_DisplayOn(%struct.SiS_Private* %109)
  %111 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %112 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SIS_315H, align 8
  %115 = icmp sge i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %102
  %117 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %118 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %117, i32 0, i32 13
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @SiS_SetRegAND(i32 %119, i32 0, i32 127)
  br label %121

121:                                              ; preds = %116, %102
  %122 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %123 = call i32 @SiS_VBLongWait(%struct.SiS_Private* %122)
  %124 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %125 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @SIS_315H, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %121
  %130 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %131 = call i64 @SiS_CRT2IsLCD(%struct.SiS_Private* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %135 = call i32 @SiS_PanelDelay(%struct.SiS_Private* %134, i32 1)
  %136 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %137 = call i32 @SiS_SetRegSR11ANDOR(%struct.SiS_Private* %136, i32 247, i32 0)
  br label %138

138:                                              ; preds = %133, %129
  br label %139

139:                                              ; preds = %138, %121
  br label %140

140:                                              ; preds = %139, %26
  br label %150

141:                                              ; preds = %1
  %142 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %143 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @SIS_315H, align 8
  %146 = icmp slt i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %149

148:                                              ; preds = %141
  br label %149

149:                                              ; preds = %148, %147
  br label %150

150:                                              ; preds = %149, %140
  ret void
}

declare dso_local i64 @SiS_CRT2IsLCD(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetRegSR11ANDOR(%struct.SiS_Private*, i32, i32) #1

declare dso_local i32 @SiS_PanelDelay(%struct.SiS_Private*, i32) #1

declare dso_local i32 @SiS_GetReg(i32, i32) #1

declare dso_local i64 @SiS_BridgeInSlavemode(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i16 zeroext) #1

declare dso_local i32 @SiS_SetRegOR(i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i32) #1

declare dso_local i32 @SiS_VBLongWait(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_DisplayOn(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetRegAND(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
