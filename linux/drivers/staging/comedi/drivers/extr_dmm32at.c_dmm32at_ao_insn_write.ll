; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_ao_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_ao_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32* }
%struct.comedi_insn = type { i32, i32 }

@DMM32AT_AO_LSB_REG = common dso_local global i64 0, align 8
@DMM32AT_AO_MSB_REG = common dso_local global i64 0, align 8
@dmm32at_ao_eoc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dmm32at_ao_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmm32at_ao_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %15 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @CR_CHAN(i32 %16)
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %72, %4
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %75

24:                                               ; preds = %18
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = and i32 %30, 255
  %32 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DMM32AT_AO_LSB_REG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outb(i32 %31, i64 %36)
  %38 = load i32, i32* %12, align 4
  %39 = lshr i32 %38, 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @DMM32AT_AO_MSB_DACH(i32 %40)
  %42 = or i32 %39, %41
  %43 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DMM32AT_AO_MSB_REG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outb(i32 %42, i64 %47)
  %49 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %51 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %52 = load i32, i32* @dmm32at_ao_eoc, align 4
  %53 = call i32 @comedi_timeout(%struct.comedi_device* %49, %struct.comedi_subdevice* %50, %struct.comedi_insn* %51, i32 %52, i32 0)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %24
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %5, align 4
  br label %79

58:                                               ; preds = %24
  %59 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DMM32AT_AO_MSB_REG, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @inb(i64 %63)
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %65, i32* %71, align 4
  br label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %18

75:                                               ; preds = %18
  %76 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %77 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %56
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @DMM32AT_AO_MSB_DACH(i32) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
