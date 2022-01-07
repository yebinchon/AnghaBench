; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_ai_set_chanspec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_ai_set_chanspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }

@DMM32AT_FIFO_CTRL_FIFORST = common dso_local global i32 0, align 4
@DMM32AT_FIFO_CTRL_REG = common dso_local global i64 0, align 8
@DMM32AT_FIFO_CTRL_SCANEN = common dso_local global i32 0, align 4
@DMM32AT_AI_LO_CHAN_REG = common dso_local global i64 0, align 8
@DMM32AT_AI_HI_CHAN_REG = common dso_local global i64 0, align 8
@dmm32at_rangebits = common dso_local global i32* null, align 8
@DMM32AT_AI_CFG_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32)* @dmm32at_ai_set_chanspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmm32at_ai_set_chanspec(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @CR_CHAN(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @CR_RANGE(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add i32 %16, %17
  %19 = sub i32 %18, 1
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = urem i32 %19, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @DMM32AT_FIFO_CTRL_FIFORST, align 4
  %25 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DMM32AT_FIFO_CTRL_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outb(i32 %24, i64 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %41

33:                                               ; preds = %4
  %34 = load i32, i32* @DMM32AT_FIFO_CTRL_SCANEN, align 4
  %35 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DMM32AT_FIFO_CTRL_REG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb(i32 %34, i64 %39)
  br label %41

41:                                               ; preds = %33, %4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DMM32AT_AI_LO_CHAN_REG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outb(i32 %42, i64 %47)
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DMM32AT_AI_HI_CHAN_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @outb(i32 %49, i64 %54)
  %56 = load i32*, i32** @dmm32at_rangebits, align 8
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DMM32AT_AI_CFG_REG, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @outb(i32 %60, i64 %65)
  ret void
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
