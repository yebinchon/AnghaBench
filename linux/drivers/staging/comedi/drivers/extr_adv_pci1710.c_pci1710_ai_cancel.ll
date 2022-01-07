; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_ai_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_ai_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.pci1710_private* }
%struct.pci1710_private = type { i32 }
%struct.comedi_subdevice = type { i32 }

@PCI171X_CTRL_CNT0 = common dso_local global i32 0, align 4
@PCI171X_CTRL_REG = common dso_local global i64 0, align 8
@PCI171X_CLRFIFO_REG = common dso_local global i64 0, align 8
@PCI171X_CLRINT_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci1710_ai_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci1710_ai_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pci1710_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 2
  %8 = load %struct.pci1710_private*, %struct.pci1710_private** %7, align 8
  store %struct.pci1710_private* %8, %struct.pci1710_private** %5, align 8
  %9 = load i32, i32* @PCI171X_CTRL_CNT0, align 4
  %10 = load %struct.pci1710_private*, %struct.pci1710_private** %5, align 8
  %11 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.pci1710_private*, %struct.pci1710_private** %5, align 8
  %15 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCI171X_CTRL_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outw(i32 %16, i64 %21)
  %23 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @comedi_8254_pacer_enable(i32 %25, i32 1, i32 2, i32 0)
  %27 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCI171X_CLRFIFO_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outb(i32 0, i64 %31)
  %33 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCI171X_CLRINT_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outb(i32 0, i64 %37)
  ret i32 0
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @comedi_8254_pacer_enable(i32, i32, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
