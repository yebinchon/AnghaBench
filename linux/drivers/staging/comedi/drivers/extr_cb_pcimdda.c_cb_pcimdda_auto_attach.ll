; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcimdda.c_cb_pcimdda_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcimdda.c_cb_pcimdda_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.pci_dev = type { i32 }

@COMEDI_SUBD_AO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@range_bipolar5 = common dso_local global i32 0, align 4
@cb_pcimdda_ao_insn_write = common dso_local global i32 0, align 4
@cb_pcimdda_ao_insn_read = common dso_local global i32 0, align 4
@PCIMDDA_8255_BASE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @cb_pcimdda_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcimdda_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %6, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = call i32 @comedi_pci_enable(%struct.comedi_device* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %68

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %19 = call i32 @pci_resource_start(%struct.pci_dev* %18, i32 3)
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %23 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %22, i32 2)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %68

28:                                               ; preds = %17
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %30, align 8
  %32 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %31, i64 0
  store %struct.comedi_subdevice* %32, %struct.comedi_subdevice** %7, align 8
  %33 = load i32, i32* @COMEDI_SUBD_AO, align 4
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %35 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @SDF_WRITABLE, align 4
  %37 = load i32, i32* @SDF_READABLE, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 1
  store i32 6, i32* %42, align 4
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %44 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %43, i32 0, i32 2
  store i32 65535, i32* %44, align 8
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 5
  store i32* @range_bipolar5, i32** %46, align 8
  %47 = load i32, i32* @cb_pcimdda_ao_insn_write, align 4
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @cb_pcimdda_ao_insn_read, align 4
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %54 = call i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %28
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %68

59:                                               ; preds = %28
  %60 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 0
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %61, align 8
  %63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i64 1
  store %struct.comedi_subdevice* %63, %struct.comedi_subdevice** %7, align 8
  %64 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %66 = load i32, i32* @PCIMDDA_8255_BASE_REG, align 4
  %67 = call i32 @subdev_8255_init(%struct.comedi_device* %64, %struct.comedi_subdevice* %65, i32* null, i32 %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %59, %57, %26, %15
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice*) #1

declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
