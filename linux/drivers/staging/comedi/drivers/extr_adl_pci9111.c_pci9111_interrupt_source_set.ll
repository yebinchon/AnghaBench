; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_interrupt_source_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_interrupt_source_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@PCI9111_AI_TRIG_CTRL_REG = common dso_local global i64 0, align 8
@irq_on_fifo_half_full = common dso_local global i32 0, align 4
@PCI9111_INT_CTRL_ISC0 = common dso_local global i32 0, align 4
@irq_on_external_trigger = common dso_local global i32 0, align 4
@PCI9111_INT_CTRL_ISC1 = common dso_local global i32 0, align 4
@PCI9111_INT_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @pci9111_interrupt_source_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci9111_interrupt_source_set(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PCI9111_AI_TRIG_CTRL_REG, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @inb(i64 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = ashr i32 %14, 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 192
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @irq_on_fifo_half_full, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @PCI9111_INT_CTRL_ISC0, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @irq_on_external_trigger, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @PCI9111_INT_CTRL_ISC1, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PCI9111_INT_CTRL_REG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb(i32 %34, i64 %39)
  ret void
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
