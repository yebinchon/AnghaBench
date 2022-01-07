; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci6208.c_pci6208_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci6208.c_pci6208_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32*, i8*, i32, i32 }
%struct.pci_dev = type { i32 }

@COMEDI_SUBD_AO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i8* null, align 8
@range_bipolar10 = common dso_local global i32 0, align 4
@pci6208_ao_insn_write = common dso_local global i32 0, align 4
@COMEDI_SUBD_DI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i8* null, align 8
@range_digital = common dso_local global i32 0, align 4
@pci6208_di_insn_bits = common dso_local global i32 0, align 4
@COMEDI_SUBD_DO = common dso_local global i32 0, align 4
@pci6208_do_insn_bits = common dso_local global i32 0, align 4
@PCI6208_DIO = common dso_local global i64 0, align 8
@PCI6208_DIO_DO_MASK = common dso_local global i32 0, align 4
@PCI6208_DIO_DO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @pci6208_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci6208_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = call i32 @comedi_pci_enable(%struct.comedi_device* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %3, align 4
  br label %108

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %20 = call i64 @pci_resource_start(%struct.pci_dev* %19, i32 2)
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %24 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %23, i32 3)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %108

29:                                               ; preds = %18
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 1
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %31, align 8
  %33 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i64 0
  store %struct.comedi_subdevice* %33, %struct.comedi_subdevice** %7, align 8
  %34 = load i32, i32* @COMEDI_SUBD_AO, align 4
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** @SDF_WRITABLE, align 8
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %41 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %40, i32 0, i32 0
  store i32 16, i32* %41, align 8
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 1
  store i32 65535, i32* %43, align 4
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 4
  store i32* @range_bipolar10, i32** %45, align 8
  %46 = load i32, i32* @pci6208_ao_insn_write, align 4
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %50 = call i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %29
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %108

55:                                               ; preds = %29
  %56 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 1
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %57, align 8
  %59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i64 1
  store %struct.comedi_subdevice* %59, %struct.comedi_subdevice** %7, align 8
  %60 = load i32, i32* @COMEDI_SUBD_DI, align 4
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %62 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load i8*, i8** @SDF_READABLE, align 8
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 0
  store i32 4, i32* %67, align 8
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %71 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 4
  store i32* @range_digital, i32** %71, align 8
  %72 = load i32, i32* @pci6208_di_insn_bits, align 4
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %74 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 1
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %76, align 8
  %78 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i64 2
  store %struct.comedi_subdevice* %78, %struct.comedi_subdevice** %7, align 8
  %79 = load i32, i32* @COMEDI_SUBD_DO, align 4
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load i8*, i8** @SDF_WRITABLE, align 8
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %84 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %86 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %85, i32 0, i32 0
  store i32 4, i32* %86, align 8
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %88 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %90 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %89, i32 0, i32 4
  store i32* @range_digital, i32** %90, align 8
  %91 = load i32, i32* @pci6208_do_insn_bits, align 4
  %92 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %93 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %95 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PCI6208_DIO, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @inw(i64 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @PCI6208_DIO_DO_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @PCI6208_DIO_DO_SHIFT, align 4
  %104 = lshr i32 %102, %103
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %107 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %55, %53, %27, %16
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice*) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
