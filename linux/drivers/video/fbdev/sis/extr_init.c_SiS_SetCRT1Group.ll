; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_SetCRT1Group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_SetCRT1Group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i16, i32, i32, i32, i64, i32, i32, i32, i64 }

@LowModeTests = common dso_local global i32 0, align 4
@SetSimuScanMode = common dso_local global i32 0, align 4
@SwitchCRT2 = common dso_local global i32 0, align 4
@ProgrammingCRT2 = common dso_local global i32 0, align 4
@SetInSlaveMode = common dso_local global i32 0, align 4
@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@XGI_20 = common dso_local global i32 0, align 4
@XGI_40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16)* @SiS_SetCRT1Group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetCRT1Group(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %9 = load i16, i16* %5, align 2
  %10 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %11 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %10, i32 0, i32 0
  store i16 %9, i16* %11, align 8
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %13 = load i16, i16* %5, align 2
  %14 = load i16, i16* %6, align 2
  %15 = call zeroext i16 @SiS_GetModePtr(%struct.SiS_Private* %12, i16 zeroext %13, i16 zeroext %14)
  store i16 %15, i16* %7, align 2
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LowModeTests, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %24 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SetSimuScanMode, align 4
  %27 = load i32, i32* @SwitchCRT2, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %33 = call i32 @SiS_DisableBridge(%struct.SiS_Private* %32)
  br label %34

34:                                               ; preds = %31, %22
  br label %35

35:                                               ; preds = %34, %3
  %36 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %37 = call i32 @SiS_ResetSegmentRegisters(%struct.SiS_Private* %36)
  %38 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %39 = load i16, i16* %7, align 2
  %40 = call i32 @SiS_SetSeqRegs(%struct.SiS_Private* %38, i16 zeroext %39)
  %41 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %42 = load i16, i16* %7, align 2
  %43 = call i32 @SiS_SetMiscRegs(%struct.SiS_Private* %41, i16 zeroext %42)
  %44 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %45 = load i16, i16* %7, align 2
  %46 = call i32 @SiS_SetCRTCRegs(%struct.SiS_Private* %44, i16 zeroext %45)
  %47 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %48 = load i16, i16* %7, align 2
  %49 = call i32 @SiS_SetATTRegs(%struct.SiS_Private* %47, i16 zeroext %48)
  %50 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %51 = load i16, i16* %7, align 2
  %52 = call i32 @SiS_SetGRCRegs(%struct.SiS_Private* %50, i16 zeroext %51)
  %53 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %54 = load i16, i16* %5, align 2
  %55 = call i32 @SiS_ClearExt1Regs(%struct.SiS_Private* %53, i16 zeroext %54)
  %56 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %57 = call i32 @SiS_ResetCRT1VCLK(%struct.SiS_Private* %56)
  %58 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %59 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %58, i32 0, i32 8
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @ProgrammingCRT2, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %63 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %67 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SetSimuScanMode, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %35
  %73 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %74 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SetInSlaveMode, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32, i32* @ProgrammingCRT2, align 4
  %81 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %82 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %72
  br label %86

86:                                               ; preds = %85, %35
  %87 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %88 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @SetCRT2ToLCDA, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i32, i32* @ProgrammingCRT2, align 4
  %95 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %96 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %86
  %100 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %101 = load i16, i16* %5, align 2
  %102 = load i16, i16* %6, align 2
  %103 = call zeroext i16 @SiS_GetRatePtr(%struct.SiS_Private* %100, i16 zeroext %101, i16 zeroext %102)
  store i16 %103, i16* %8, align 2
  %104 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %105 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SetCRT2ToLCDA, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %99
  %111 = load i32, i32* @ProgrammingCRT2, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %114 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %110, %99
  %118 = load i16, i16* %8, align 2
  %119 = zext i16 %118 to i32
  %120 = icmp ne i32 %119, 65535
  br i1 %120, label %121, label %140

121:                                              ; preds = %117
  %122 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %123 = load i16, i16* %8, align 2
  %124 = call i32 @SiS_SetCRT1Sync(%struct.SiS_Private* %122, i16 zeroext %123)
  %125 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %126 = load i16, i16* %5, align 2
  %127 = load i16, i16* %6, align 2
  %128 = load i16, i16* %8, align 2
  %129 = call i32 @SiS_SetCRT1CRTC(%struct.SiS_Private* %125, i16 zeroext %126, i16 zeroext %127, i16 zeroext %128)
  %130 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %131 = load i16, i16* %5, align 2
  %132 = load i16, i16* %6, align 2
  %133 = load i16, i16* %8, align 2
  %134 = call i32 @SiS_SetCRT1Offset(%struct.SiS_Private* %130, i16 zeroext %131, i16 zeroext %132, i16 zeroext %133)
  %135 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %136 = load i16, i16* %5, align 2
  %137 = load i16, i16* %6, align 2
  %138 = load i16, i16* %8, align 2
  %139 = call i32 @SiS_SetCRT1VCLK(%struct.SiS_Private* %135, i16 zeroext %136, i16 zeroext %137, i16 zeroext %138)
  br label %140

140:                                              ; preds = %121, %117
  %141 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %142 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  switch i32 %143, label %144 [
  ]

144:                                              ; preds = %140
  br label %145

145:                                              ; preds = %144
  %146 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %147 = load i16, i16* %5, align 2
  %148 = load i16, i16* %6, align 2
  %149 = load i16, i16* %8, align 2
  %150 = call i32 @SiS_SetCRT1ModeRegs(%struct.SiS_Private* %146, i16 zeroext %147, i16 zeroext %148, i16 zeroext %149)
  %151 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %152 = load i16, i16* %5, align 2
  %153 = load i16, i16* %6, align 2
  %154 = call i32 @SiS_LoadDAC(%struct.SiS_Private* %151, i16 zeroext %152, i16 zeroext %153)
  %155 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %156 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %145
  %160 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %161 = load i16, i16* %5, align 2
  %162 = call i32 @SiS_ClearBuffer(%struct.SiS_Private* %160, i16 zeroext %161)
  br label %163

163:                                              ; preds = %159, %145
  %164 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %165 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @SetSimuScanMode, align 4
  %168 = load i32, i32* @SwitchCRT2, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @SetCRT2ToLCDA, align 4
  %171 = or i32 %169, %170
  %172 = and i32 %166, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %163
  %175 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %176 = call i32 @SiS_WaitRetrace1(%struct.SiS_Private* %175)
  %177 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %178 = call i32 @SiS_DisplayOn(%struct.SiS_Private* %177)
  br label %179

179:                                              ; preds = %174, %163
  ret void
}

declare dso_local zeroext i16 @SiS_GetModePtr(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_DisableBridge(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_ResetSegmentRegisters(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetSeqRegs(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local i32 @SiS_SetMiscRegs(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local i32 @SiS_SetCRTCRegs(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local i32 @SiS_SetATTRegs(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local i32 @SiS_SetGRCRegs(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local i32 @SiS_ClearExt1Regs(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local i32 @SiS_ResetCRT1VCLK(%struct.SiS_Private*) #1

declare dso_local zeroext i16 @SiS_GetRatePtr(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetCRT1Sync(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local i32 @SiS_SetCRT1CRTC(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetCRT1Offset(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetCRT1VCLK(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetCRT1ModeRegs(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_LoadDAC(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_ClearBuffer(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local i32 @SiS_WaitRetrace1(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_DisplayOn(%struct.SiS_Private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
