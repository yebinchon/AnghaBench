; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetCRT1Group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiS_SetCRT1Group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i16 }

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
  store i16 %9, i16* %11, align 2
  %12 = load i16, i16* %5, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp sle i32 %13, 19
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i16 0, i16* %7, align 2
  br label %17

16:                                               ; preds = %3
  store i16 1, i16* %7, align 2
  br label %17

17:                                               ; preds = %16, %15
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %19 = call i32 @SiS_ResetSegmentRegisters(%struct.SiS_Private* %18)
  %20 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %21 = load i16, i16* %7, align 2
  %22 = call i32 @SiS_SetSeqRegs(%struct.SiS_Private* %20, i16 zeroext %21)
  %23 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %24 = load i16, i16* %7, align 2
  %25 = call i32 @SiS_SetMiscRegs(%struct.SiS_Private* %23, i16 zeroext %24)
  %26 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %27 = load i16, i16* %7, align 2
  %28 = call i32 @SiS_SetCRTCRegs(%struct.SiS_Private* %26, i16 zeroext %27)
  %29 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %30 = load i16, i16* %7, align 2
  %31 = call i32 @SiS_SetATTRegs(%struct.SiS_Private* %29, i16 zeroext %30)
  %32 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %33 = load i16, i16* %7, align 2
  %34 = call i32 @SiS_SetGRCRegs(%struct.SiS_Private* %32, i16 zeroext %33)
  %35 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %36 = load i16, i16* %5, align 2
  %37 = call i32 @SiS_ClearExt1Regs(%struct.SiS_Private* %35, i16 zeroext %36)
  %38 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %39 = load i16, i16* %5, align 2
  %40 = load i16, i16* %6, align 2
  %41 = call zeroext i16 @SiS_GetRatePtr(%struct.SiS_Private* %38, i16 zeroext %39, i16 zeroext %40)
  store i16 %41, i16* %8, align 2
  %42 = load i16, i16* %8, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp ne i32 %43, 65535
  br i1 %44, label %45, label %63

45:                                               ; preds = %17
  %46 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %47 = load i16, i16* %8, align 2
  %48 = call i32 @SiS_SetCRT1Sync(%struct.SiS_Private* %46, i16 zeroext %47)
  %49 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %50 = load i16, i16* %5, align 2
  %51 = load i16, i16* %6, align 2
  %52 = load i16, i16* %8, align 2
  %53 = call i32 @SiS_SetCRT1CRTC(%struct.SiS_Private* %49, i16 zeroext %50, i16 zeroext %51, i16 zeroext %52)
  %54 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %55 = load i16, i16* %5, align 2
  %56 = load i16, i16* %6, align 2
  %57 = load i16, i16* %8, align 2
  %58 = call i32 @SiS_SetCRT1Offset(%struct.SiS_Private* %54, i16 zeroext %55, i16 zeroext %56, i16 zeroext %57)
  %59 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %60 = load i16, i16* %5, align 2
  %61 = load i16, i16* %8, align 2
  %62 = call i32 @SiS_SetCRT1VCLK(%struct.SiS_Private* %59, i16 zeroext %60, i16 zeroext %61)
  br label %63

63:                                               ; preds = %45, %17
  %64 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %65 = load i16, i16* %5, align 2
  %66 = load i16, i16* %6, align 2
  %67 = call i32 @SiS_SetCRT1FIFO_310(%struct.SiS_Private* %64, i16 zeroext %65, i16 zeroext %66)
  %68 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %69 = load i16, i16* %5, align 2
  %70 = load i16, i16* %6, align 2
  %71 = load i16, i16* %8, align 2
  %72 = call i32 @SiS_SetCRT1ModeRegs(%struct.SiS_Private* %68, i16 zeroext %69, i16 zeroext %70, i16 zeroext %71)
  %73 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %74 = load i16, i16* %5, align 2
  %75 = load i16, i16* %6, align 2
  %76 = call i32 @SiS_LoadDAC(%struct.SiS_Private* %73, i16 zeroext %74, i16 zeroext %75)
  %77 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %78 = call i32 @SiS_DisplayOn(%struct.SiS_Private* %77)
  ret void
}

declare dso_local i32 @SiS_ResetSegmentRegisters(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetSeqRegs(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local i32 @SiS_SetMiscRegs(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local i32 @SiS_SetCRTCRegs(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local i32 @SiS_SetATTRegs(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local i32 @SiS_SetGRCRegs(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local i32 @SiS_ClearExt1Regs(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local zeroext i16 @SiS_GetRatePtr(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetCRT1Sync(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local i32 @SiS_SetCRT1CRTC(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetCRT1Offset(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetCRT1VCLK(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetCRT1FIFO_310(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetCRT1ModeRegs(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_LoadDAC(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_DisplayOn(%struct.SiS_Private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
