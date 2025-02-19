; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dac02.c_dac02_ao_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dac02.c_dac02_ao_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32*, i32 }
%struct.comedi_insn = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dac02_ao_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac02_ao_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CR_CHAN(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_RANGE(i32 %19)
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %71, %4
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %24 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %74

27:                                               ; preds = %21
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %35 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @comedi_range_is_bipolar(%struct.comedi_subdevice* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %27
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sub i32 %47, %48
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %44, %27
  %51 = load i32, i32* %11, align 4
  %52 = shl i32 %51, 4
  %53 = and i32 %52, 240
  %54 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @DAC02_AO_LSB(i32 %57)
  %59 = add nsw i64 %56, %58
  %60 = call i32 @outb(i32 %53, i64 %59)
  %61 = load i32, i32* %11, align 4
  %62 = lshr i32 %61, 4
  %63 = and i32 %62, 255
  %64 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @DAC02_AO_MSB(i32 %67)
  %69 = add nsw i64 %66, %68
  %70 = call i32 @outb(i32 %63, i64 %69)
  br label %71

71:                                               ; preds = %50
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %21

74:                                               ; preds = %21
  %75 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %76 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  ret i32 %77
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i64 @comedi_range_is_bipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @DAC02_AO_LSB(i32) #1

declare dso_local i64 @DAC02_AO_MSB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
