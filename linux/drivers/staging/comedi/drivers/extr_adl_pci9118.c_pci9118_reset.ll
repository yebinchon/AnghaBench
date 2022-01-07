; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@PCI9118_INT_CTRL_REG = common dso_local global i64 0, align 8
@PCI9118_AI_CTRL_REG = common dso_local global i64 0, align 8
@PCI9118_AI_CFG_REG = common dso_local global i64 0, align 8
@PCI9118_AI_STATUS_REG = common dso_local global i64 0, align 8
@PCI9118_AI_BURST_NUM_REG = common dso_local global i64 0, align 8
@PCI9118_AI_AUTOSCAN_MODE_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @pci9118_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci9118_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @PCI9118_INT_CTRL_REG, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @outl(i32 0, i64 %7)
  %9 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PCI9118_AI_CTRL_REG, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @outl(i32 0, i64 %13)
  %15 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PCI9118_AI_CFG_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @outl(i32 0, i64 %19)
  %21 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %22 = call i32 @pci9118_ai_reset_fifo(%struct.comedi_device* %21)
  %23 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PCI9118_INT_CTRL_REG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @inl(i64 %27)
  %29 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PCI9118_AI_STATUS_REG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @inl(i64 %33)
  %35 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PCI9118_AI_BURST_NUM_REG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outl(i32 0, i64 %39)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PCI9118_AI_AUTOSCAN_MODE_REG, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @outl(i32 1, i64 %45)
  %47 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PCI9118_AI_AUTOSCAN_MODE_REG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outl(i32 2, i64 %51)
  %53 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @PCI9118_AO_REG(i32 0)
  %57 = add nsw i64 %55, %56
  %58 = call i32 @outl(i32 2047, i64 %57)
  %59 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @PCI9118_AO_REG(i32 1)
  %63 = add nsw i64 %61, %62
  %64 = call i32 @outl(i32 2047, i64 %63)
  ret void
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @pci9118_ai_reset_fifo(%struct.comedi_device*) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i64 @PCI9118_AO_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
