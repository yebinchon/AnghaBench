; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_setaitimer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_setaitimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@DMM32AT_CTRDIO_CFG_REG = common dso_local global i64 0, align 8
@DMM32AT_CTRL_PAGE_8254 = common dso_local global i8 0, align 1
@DMM32AT_CTRL_REG = common dso_local global i64 0, align 8
@DMM32AT_CLKCT1 = common dso_local global i8 0, align 1
@DMM32AT_CLKCT = common dso_local global i64 0, align 8
@DMM32AT_CLK1 = common dso_local global i64 0, align 8
@DMM32AT_CLKCT2 = common dso_local global i8 0, align 1
@DMM32AT_CLK2 = common dso_local global i64 0, align 8
@DMM32AT_INTCLK_ADINT = common dso_local global i8 0, align 1
@DMM32AT_INTCLK_CLKEN = common dso_local global i8 0, align 1
@DMM32AT_INTCLK_CLKSEL = common dso_local global i8 0, align 1
@DMM32AT_INTCLK_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @dmm32at_setaitimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmm32at_setaitimer(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8 -56, i8* %5, align 1
  %9 = load i32, i32* %4, align 4
  %10 = udiv i32 %9, 20000
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* %8, align 2
  %12 = load i16, i16* %8, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 65280
  %15 = ashr i32 %14, 8
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %7, align 1
  %17 = load i16, i16* %8, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 255
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %6, align 1
  %21 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DMM32AT_CTRDIO_CFG_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i8 zeroext 0, i64 %25)
  %27 = load i8, i8* @DMM32AT_CTRL_PAGE_8254, align 1
  %28 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DMM32AT_CTRL_REG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outb(i8 zeroext %27, i64 %32)
  %34 = load i8, i8* @DMM32AT_CLKCT1, align 1
  %35 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DMM32AT_CLKCT, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb(i8 zeroext %34, i64 %39)
  %41 = load i8, i8* %5, align 1
  %42 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DMM32AT_CLK1, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outb(i8 zeroext %41, i64 %46)
  %48 = load i8, i8* @DMM32AT_CLKCT2, align 1
  %49 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DMM32AT_CLKCT, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @outb(i8 zeroext %48, i64 %53)
  %55 = load i8, i8* %6, align 1
  %56 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DMM32AT_CLK2, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @outb(i8 zeroext %55, i64 %60)
  %62 = load i8, i8* %7, align 1
  %63 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DMM32AT_CLK2, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @outb(i8 zeroext %62, i64 %67)
  %69 = load i8, i8* @DMM32AT_INTCLK_ADINT, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* @DMM32AT_INTCLK_CLKEN, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %70, %72
  %74 = load i8, i8* @DMM32AT_INTCLK_CLKSEL, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %73, %75
  %77 = trunc i32 %76 to i8
  %78 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %79 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @DMM32AT_INTCLK_REG, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @outb(i8 zeroext %77, i64 %82)
  ret void
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
