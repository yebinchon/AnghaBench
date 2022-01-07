; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiSUSBSetMode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_init.c_SiSUSBSetMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i64, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ModeTypeMask = common dso_local global i32 0, align 4
@LowModeTests = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SiSUSBSetMode(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  %8 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %9 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %12 = call i32 @SiSUSB_InitPtr(%struct.SiS_Private* %11)
  %13 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @SiSUSBRegInit(%struct.SiS_Private* %13, i64 %14)
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %17 = call i32 @SiS_GetSysFlags(%struct.SiS_Private* %16)
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %19 = call i32 @SiS_SearchModeID(%struct.SiS_Private* %18, i16* %5, i16* %6)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

22:                                               ; preds = %2
  %23 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %25 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @SiS_SetReg(%struct.SiS_Private* %23, i32 %26, i32 5, i16 zeroext 134)
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %29 = call i32 @SiSInitPCIetc(%struct.SiS_Private* %28)
  %30 = load i16, i16* %5, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 127
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %5, align 2
  %34 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %35 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %34, i32 0, i32 5
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i16, i16* %6, align 2
  %38 = zext i16 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ModeTypeMask, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %45 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @LowModeTests, align 4
  %47 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %48 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %50 = load i16, i16* %5, align 2
  %51 = load i16, i16* %6, align 2
  %52 = call i32 @SiS_SetCRT1Group(%struct.SiS_Private* %49, i16 zeroext %50, i16 zeroext %51)
  %53 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %54 = call i32 @SiS_HandleCRT1(%struct.SiS_Private* %53)
  %55 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %56 = call i32 @SiS_DisplayOn(%struct.SiS_Private* %55)
  %57 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %58 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %59 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @SiS_SetRegByte(%struct.SiS_Private* %57, i32 %60, i32 255)
  %62 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %63 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %64 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i16, i16* %5, align 2
  %67 = call i32 @SiS_SetReg(%struct.SiS_Private* %62, i32 %65, i32 52, i16 zeroext %66)
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %22, %21
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @SiSUSB_InitPtr(%struct.SiS_Private*) #1

declare dso_local i32 @SiSUSBRegInit(%struct.SiS_Private*, i64) #1

declare dso_local i32 @SiS_GetSysFlags(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SearchModeID(%struct.SiS_Private*, i16*, i16*) #1

declare dso_local i32 @SiS_SetReg(%struct.SiS_Private*, i32, i32, i16 zeroext) #1

declare dso_local i32 @SiSInitPCIetc(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetCRT1Group(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_HandleCRT1(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_DisplayOn(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetRegByte(%struct.SiS_Private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
