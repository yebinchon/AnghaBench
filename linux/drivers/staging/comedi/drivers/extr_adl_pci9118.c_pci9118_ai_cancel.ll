; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.pci9118_private* }
%struct.pci9118_private = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@PCI9118_AI_CFG_PDTRG = common dso_local global i32 0, align 4
@PCI9118_AI_CFG_PETRG = common dso_local global i32 0, align 4
@PCI9118_AI_CFG_REG = common dso_local global i64 0, align 8
@PCI9118_AI_CTRL_REG = common dso_local global i64 0, align 8
@PCI9118_AI_BURST_NUM_REG = common dso_local global i64 0, align 8
@PCI9118_AI_AUTOSCAN_MODE_REG = common dso_local global i64 0, align 8
@PCI9118_INT_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci9118_ai_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9118_ai_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pci9118_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 2
  %8 = load %struct.pci9118_private*, %struct.pci9118_private** %7, align 8
  store %struct.pci9118_private* %8, %struct.pci9118_private** %5, align 8
  %9 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %10 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = call i32 @pci9118_amcc_dma_ena(%struct.comedi_device* %14, i32 0)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %18 = call i32 @pci9118_exttrg_enable(%struct.comedi_device* %17, i32 0)
  %19 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @comedi_8254_pacer_enable(i32 %21, i32 1, i32 2, i32 0)
  %23 = load i32, i32* @PCI9118_AI_CFG_PDTRG, align 4
  %24 = load i32, i32* @PCI9118_AI_CFG_PETRG, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %27 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %29 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PCI9118_AI_CFG_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outl(i32 %30, i64 %35)
  %37 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %38 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %40 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PCI9118_AI_CTRL_REG, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outl(i32 %41, i64 %46)
  %48 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %49 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PCI9118_AI_BURST_NUM_REG, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @outl(i32 0, i64 %52)
  %54 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PCI9118_AI_AUTOSCAN_MODE_REG, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outl(i32 1, i64 %58)
  %60 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PCI9118_AI_AUTOSCAN_MODE_REG, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outl(i32 2, i64 %64)
  %66 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %67 = call i32 @pci9118_ai_reset_fifo(%struct.comedi_device* %66)
  %68 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %69 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %68, i32 0, i32 2
  store i32 0, i32* %69, align 8
  %70 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %71 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PCI9118_INT_CTRL_REG, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @outl(i32 %72, i64 %77)
  %79 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %80 = call i32 @pci9118_amcc_int_ena(%struct.comedi_device* %79, i32 0)
  %81 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %82 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %81, i32 0, i32 7
  store i64 0, i64* %82, align 8
  %83 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %84 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %83, i32 0, i32 6
  store i64 0, i64* %84, align 8
  %85 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %86 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %85, i32 0, i32 5
  store i64 0, i64* %86, align 8
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %88 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  %91 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %92 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %91, i32 0, i32 4
  store i64 0, i64* %92, align 8
  %93 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %94 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %93, i32 0, i32 3
  store i64 0, i64* %94, align 8
  ret i32 0
}

declare dso_local i32 @pci9118_amcc_dma_ena(%struct.comedi_device*, i32) #1

declare dso_local i32 @pci9118_exttrg_enable(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_8254_pacer_enable(i32, i32, i32, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @pci9118_ai_reset_fifo(%struct.comedi_device*) #1

declare dso_local i32 @pci9118_amcc_int_ena(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
