; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_mode4_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_mode4_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.pci9118_private* }
%struct.pci9118_private = type { i32, %struct.pci9118_dmabuf* }
%struct.pci9118_dmabuf = type { i32 }

@PCI9118_AI_CFG_PDTRG = common dso_local global i32 0, align 4
@PCI9118_AI_CFG_PETRG = common dso_local global i32 0, align 4
@PCI9118_AI_CFG_AM = common dso_local global i32 0, align 4
@PCI9118_AI_CFG_REG = common dso_local global i64 0, align 8
@I8254_MODE0 = common dso_local global i32 0, align 4
@I8254_BINARY = common dso_local global i32 0, align 4
@PCI9118_AI_CFG_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @pci9118_ai_mode4_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci9118_ai_mode4_switch(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci9118_private*, align 8
  %6 = alloca %struct.pci9118_dmabuf*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 2
  %9 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  store %struct.pci9118_private* %9, %struct.pci9118_private** %5, align 8
  %10 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %11 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %10, i32 0, i32 1
  %12 = load %struct.pci9118_dmabuf*, %struct.pci9118_dmabuf** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.pci9118_dmabuf, %struct.pci9118_dmabuf* %12, i64 %14
  store %struct.pci9118_dmabuf* %15, %struct.pci9118_dmabuf** %6, align 8
  %16 = load i32, i32* @PCI9118_AI_CFG_PDTRG, align 4
  %17 = load i32, i32* @PCI9118_AI_CFG_PETRG, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PCI9118_AI_CFG_AM, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %22 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %24 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PCI9118_AI_CFG_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outl(i32 %25, i64 %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.pci9118_dmabuf*, %struct.pci9118_dmabuf** %6, align 8
  %36 = getelementptr inbounds %struct.pci9118_dmabuf, %struct.pci9118_dmabuf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 1
  %39 = load i32, i32* @I8254_MODE0, align 4
  %40 = load i32, i32* @I8254_BINARY, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @comedi_8254_load(i32 %34, i32 0, i32 %38, i32 %41)
  %43 = load i32, i32* @PCI9118_AI_CFG_START, align 4
  %44 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %45 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %49 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PCI9118_AI_CFG_REG, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @outl(i32 %50, i64 %55)
  ret void
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @comedi_8254_load(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
