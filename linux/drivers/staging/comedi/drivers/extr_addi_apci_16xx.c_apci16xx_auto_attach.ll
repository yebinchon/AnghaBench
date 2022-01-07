; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_16xx.c_apci16xx_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_16xx.c_apci16xx_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apci16xx_boardinfo = type { i32, i32 }
%struct.comedi_device = type { i64, %struct.comedi_subdevice*, i32, %struct.apci16xx_boardinfo* }
%struct.comedi_subdevice = type { i32, i32, i32, i64, i32, i32, i32*, i32 }
%struct.pci_dev = type { i32 }

@apci16xx_boardtypes = common dso_local global %struct.apci16xx_boardinfo* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@COMEDI_SUBD_DIO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@apci16xx_insn_config = common dso_local global i32 0, align 4
@apci16xx_dio_insn_bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @apci16xx_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci16xx_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.apci16xx_boardinfo*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  store %struct.apci16xx_boardinfo* null, %struct.apci16xx_boardinfo** %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.apci16xx_boardinfo*, %struct.apci16xx_boardinfo** @apci16xx_boardtypes, align 8
  %17 = call i64 @ARRAY_SIZE(%struct.apci16xx_boardinfo* %16)
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.apci16xx_boardinfo*, %struct.apci16xx_boardinfo** @apci16xx_boardtypes, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.apci16xx_boardinfo, %struct.apci16xx_boardinfo* %20, i64 %21
  store %struct.apci16xx_boardinfo* %22, %struct.apci16xx_boardinfo** %7, align 8
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.apci16xx_boardinfo*, %struct.apci16xx_boardinfo** %7, align 8
  %25 = icmp ne %struct.apci16xx_boardinfo* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %136

29:                                               ; preds = %23
  %30 = load %struct.apci16xx_boardinfo*, %struct.apci16xx_boardinfo** %7, align 8
  %31 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 3
  store %struct.apci16xx_boardinfo* %30, %struct.apci16xx_boardinfo** %32, align 8
  %33 = load %struct.apci16xx_boardinfo*, %struct.apci16xx_boardinfo** %7, align 8
  %34 = getelementptr inbounds %struct.apci16xx_boardinfo, %struct.apci16xx_boardinfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %39 = call i32 @comedi_pci_enable(%struct.comedi_device* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %3, align 4
  br label %136

44:                                               ; preds = %29
  %45 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %46 = call i64 @pci_resource_start(%struct.pci_dev* %45, i32 0)
  %47 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.apci16xx_boardinfo*, %struct.apci16xx_boardinfo** %7, align 8
  %50 = getelementptr inbounds %struct.apci16xx_boardinfo, %struct.apci16xx_boardinfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 32
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = mul i32 %53, 32
  %55 = load %struct.apci16xx_boardinfo*, %struct.apci16xx_boardinfo** %7, align 8
  %56 = getelementptr inbounds %struct.apci16xx_boardinfo, %struct.apci16xx_boardinfo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %44
  %60 = load %struct.apci16xx_boardinfo*, %struct.apci16xx_boardinfo** %7, align 8
  %61 = getelementptr inbounds %struct.apci16xx_boardinfo, %struct.apci16xx_boardinfo* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = mul i32 %63, 32
  %65 = sub i32 %62, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %69

68:                                               ; preds = %44
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %59
  %70 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %70, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %3, align 4
  br label %136

77:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %132, %77
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %135

82:                                               ; preds = %78
  %83 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %84 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %83, i32 0, i32 1
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %85, i64 %87
  store %struct.comedi_subdevice* %88, %struct.comedi_subdevice** %8, align 8
  %89 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %91 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @SDF_WRITABLE, align 4
  %93 = load i32, i32* @SDF_READABLE, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %96 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %11, align 4
  %98 = mul nsw i32 %97, 32
  %99 = load %struct.apci16xx_boardinfo*, %struct.apci16xx_boardinfo** %7, align 8
  %100 = getelementptr inbounds %struct.apci16xx_boardinfo, %struct.apci16xx_boardinfo* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %82
  br label %106

104:                                              ; preds = %82
  %105 = load i32, i32* %10, align 4
  br label %106

106:                                              ; preds = %104, %103
  %107 = phi i32 [ 32, %103 ], [ %105, %104 ]
  %108 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %109 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %111 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %110, i32 0, i32 2
  store i32 1, i32* %111, align 8
  %112 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %113 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %112, i32 0, i32 6
  store i32* @range_digital, i32** %113, align 8
  %114 = load i32, i32* @apci16xx_insn_config, align 4
  %115 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %116 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @apci16xx_dio_insn_bits, align 4
  %118 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %119 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %121 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  %122 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %123 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %126 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i64 @APCI16XX_DIR_REG(i32 %128)
  %130 = add nsw i64 %127, %129
  %131 = call i32 @outl(i64 %124, i64 %130)
  br label %132

132:                                              ; preds = %106
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %78

135:                                              ; preds = %78
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %75, %42, %26
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.apci16xx_boardinfo*) #1

declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @outl(i64, i64) #1

declare dso_local i64 @APCI16XX_DIR_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
