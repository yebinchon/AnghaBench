; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.comedi_subdevice*, i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"spurious interrupt\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DMM32AT_INTCLK_REG = common dso_local global i64 0, align 8
@DMM32AT_INTCLK_ADINT = common dso_local global i8 0, align 1
@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@DMM32AT_CTRL_INTRST = common dso_local global i32 0, align 4
@DMM32AT_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dmm32at_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmm32at_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.comedi_subdevice*, align 8
  %11 = alloca %struct.comedi_cmd*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.comedi_device*
  store %struct.comedi_device* %13, %struct.comedi_device** %6, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %3, align 4
  br label %97

24:                                               ; preds = %2
  %25 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DMM32AT_INTCLK_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call zeroext i8 @inb(i64 %29)
  store i8 %30, i8* %7, align 1
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @DMM32AT_INTCLK_ADINT, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %88

37:                                               ; preds = %24
  %38 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 1
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %39, align 8
  store %struct.comedi_subdevice* %40, %struct.comedi_subdevice** %10, align 8
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store %struct.comedi_cmd* %44, %struct.comedi_cmd** %11, align 8
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %57, %37
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %54 = call i32 @dmm32at_ai_get_sample(%struct.comedi_device* %52, %struct.comedi_subdevice* %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %56 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %55, i32* %8, i32 1)
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %45

60:                                               ; preds = %45
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %62 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TRIG_COUNT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %60
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %68 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %71, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %66
  %77 = load i32, i32* @COMEDI_CB_EOA, align 4
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %79 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %77
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %76, %66, %60
  %85 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %87 = call i32 @comedi_handle_events(%struct.comedi_device* %85, %struct.comedi_subdevice* %86)
  br label %88

88:                                               ; preds = %84, %24
  %89 = load i32, i32* @DMM32AT_CTRL_INTRST, align 4
  %90 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %91 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DMM32AT_CTRL_REG, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @outb(i32 %89, i64 %94)
  %96 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %88, %18
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @dmm32at_ai_get_sample(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32*, i32) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
