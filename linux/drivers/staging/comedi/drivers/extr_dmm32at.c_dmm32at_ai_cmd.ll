; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i32, i32, i32, i32* }

@DMM32AT_CTRL_INTRST = common dso_local global i32 0, align 4
@DMM32AT_CTRL_REG = common dso_local global i64 0, align 8
@dmm32at_ai_status = common dso_local global i32 0, align 4
@DMM32AT_AI_READBACK_REG = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i64 0, align 8
@DMM32AT_INTCLK_ADINT = common dso_local global i32 0, align 4
@DMM32AT_INTCLK_REG = common dso_local global i64 0, align 8
@DMM32AT_AI_START_CONV_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @dmm32at_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmm32at_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %8 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %9 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.comedi_cmd* %11, %struct.comedi_cmd** %6, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dmm32at_ai_set_chanspec(%struct.comedi_device* %12, %struct.comedi_subdevice* %13, i32 %18, i32 %21)
  %23 = load i32, i32* @DMM32AT_CTRL_INTRST, align 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DMM32AT_CTRL_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i32 %23, i64 %28)
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %32 = load i32, i32* @dmm32at_ai_status, align 4
  %33 = load i32, i32* @DMM32AT_AI_READBACK_REG, align 4
  %34 = call i32 @comedi_timeout(%struct.comedi_device* %30, %struct.comedi_subdevice* %31, i32* null, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %71

39:                                               ; preds = %2
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %41 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TRIG_NONE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %47 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %56

50:                                               ; preds = %45, %39
  %51 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %53 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dmm32at_setaitimer(%struct.comedi_device* %51, i32 %54)
  br label %70

56:                                               ; preds = %45
  %57 = load i32, i32* @DMM32AT_INTCLK_ADINT, align 4
  %58 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %59 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DMM32AT_INTCLK_REG, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @outb(i32 %57, i64 %62)
  %64 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DMM32AT_AI_START_CONV_REG, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @outb(i32 255, i64 %68)
  br label %70

70:                                               ; preds = %56, %50
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %37
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @dmm32at_ai_set_chanspec(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32, i32) #1

declare dso_local i32 @dmm32at_setaitimer(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
