; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dyna_pci10xx.c_dyna_pci10xx_di_insn_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dyna_pci10xx.c_dyna_pci10xx_di_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.dyna_pci10xx_private* }
%struct.dyna_pci10xx_private = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dyna_pci10xx_di_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dyna_pci10xx_di_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dyna_pci10xx_private*, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.dyna_pci10xx_private*, %struct.dyna_pci10xx_private** %12, align 8
  store %struct.dyna_pci10xx_private* %13, %struct.dyna_pci10xx_private** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.dyna_pci10xx_private*, %struct.dyna_pci10xx_private** %9, align 8
  %15 = getelementptr inbounds %struct.dyna_pci10xx_private, %struct.dyna_pci10xx_private* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = call i32 (...) @smp_mb()
  %18 = load %struct.dyna_pci10xx_private*, %struct.dyna_pci10xx_private** %9, align 8
  %19 = getelementptr inbounds %struct.dyna_pci10xx_private, %struct.dyna_pci10xx_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @inw_p(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = call i32 @usleep_range(i32 10, i32 100)
  %23 = load i32, i32* %10, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dyna_pci10xx_private*, %struct.dyna_pci10xx_private** %9, align 8
  %32 = getelementptr inbounds %struct.dyna_pci10xx_private, %struct.dyna_pci10xx_private* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %35 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  ret i32 %36
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @inw_p(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
