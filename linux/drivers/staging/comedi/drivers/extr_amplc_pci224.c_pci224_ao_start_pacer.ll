; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_start_pacer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_start_pacer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pci224_private* }
%struct.pci224_private = type { i64 }
%struct.comedi_subdevice = type { i32 }

@GAT_VCC = common dso_local global i32 0, align 4
@PCI224_ZGAT_SCE = common dso_local global i64 0, align 8
@CLK_10MHZ = common dso_local global i32 0, align 4
@PCI224_ZCLK_SCE = common dso_local global i64 0, align 8
@CLK_OUTNM1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci224_ao_start_pacer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci224_ao_start_pacer(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pci224_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 1
  %8 = load %struct.pci224_private*, %struct.pci224_private** %7, align 8
  store %struct.pci224_private* %8, %struct.pci224_private** %5, align 8
  %9 = load i32, i32* @GAT_VCC, align 4
  %10 = call i32 @pci224_gat_config(i32 0, i32 %9)
  %11 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %12 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PCI224_ZGAT_SCE, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @outb(i32 %10, i64 %15)
  %17 = load i32, i32* @GAT_VCC, align 4
  %18 = call i32 @pci224_gat_config(i32 2, i32 %17)
  %19 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %20 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCI224_ZGAT_SCE, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outb(i32 %18, i64 %23)
  %25 = load i32, i32* @CLK_10MHZ, align 4
  %26 = call i32 @pci224_clk_config(i32 2, i32 %25)
  %27 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %28 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCI224_ZCLK_SCE, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outb(i32 %26, i64 %31)
  %33 = load i32, i32* @CLK_OUTNM1, align 4
  %34 = call i32 @pci224_clk_config(i32 0, i32 %33)
  %35 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %36 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PCI224_ZCLK_SCE, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb(i32 %34, i64 %39)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @comedi_8254_pacer_enable(i32 %43, i32 2, i32 0, i32 0)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @pci224_gat_config(i32, i32) #1

declare dso_local i32 @pci224_clk_config(i32, i32) #1

declare dso_local i32 @comedi_8254_pacer_enable(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
