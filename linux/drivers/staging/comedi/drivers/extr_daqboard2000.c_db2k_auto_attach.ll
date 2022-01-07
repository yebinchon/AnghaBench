; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_daqboard2000.c_db2k_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_daqboard2000.c_db2k_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db2k_boardtype = type { i64, i64 }
%struct.comedi_device = type { %struct.comedi_subdevice*, i8*, i64, %struct.db2k_boardtype* }
%struct.comedi_subdevice = type { i32, i32, i32, i32*, i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.db2k_private = type { i8* }

@db2k_boardtypes = common dso_local global %struct.db2k_boardtype* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DB2K_FIRMWARE = common dso_local global i32 0, align 4
@db2k_load_firmware = common dso_local global i32 0, align 4
@COMEDI_SUBD_AI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_GROUND = common dso_local global i32 0, align 4
@db2k_ai_insn_read = common dso_local global i32 0, align 4
@db2k_ai_range = common dso_local global i32 0, align 4
@COMEDI_SUBD_AO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@db2k_ao_insn_write = common dso_local global i32 0, align 4
@range_bipolar10 = common dso_local global i32 0, align 4
@db2k_8255_cb = common dso_local global i32 0, align 4
@DB2K_REG_DIO_P2_EXP_IO_8_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @db2k_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db2k_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.db2k_boardtype*, align 8
  %8 = alloca %struct.db2k_private*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.db2k_boardtype*, %struct.db2k_boardtype** @db2k_boardtypes, align 8
  %15 = call i64 @ARRAY_SIZE(%struct.db2k_boardtype* %14)
  %16 = icmp uge i64 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %161

20:                                               ; preds = %2
  %21 = load %struct.db2k_boardtype*, %struct.db2k_boardtype** @db2k_boardtypes, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.db2k_boardtype, %struct.db2k_boardtype* %21, i64 %22
  store %struct.db2k_boardtype* %23, %struct.db2k_boardtype** %7, align 8
  %24 = load %struct.db2k_boardtype*, %struct.db2k_boardtype** %7, align 8
  %25 = getelementptr inbounds %struct.db2k_boardtype, %struct.db2k_boardtype* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %161

31:                                               ; preds = %20
  %32 = load %struct.db2k_boardtype*, %struct.db2k_boardtype** %7, align 8
  %33 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 3
  store %struct.db2k_boardtype* %32, %struct.db2k_boardtype** %34, align 8
  %35 = load %struct.db2k_boardtype*, %struct.db2k_boardtype** %7, align 8
  %36 = getelementptr inbounds %struct.db2k_boardtype, %struct.db2k_boardtype* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %41 = call %struct.db2k_private* @comedi_alloc_devpriv(%struct.comedi_device* %40, i32 8)
  store %struct.db2k_private* %41, %struct.db2k_private** %8, align 8
  %42 = load %struct.db2k_private*, %struct.db2k_private** %8, align 8
  %43 = icmp ne %struct.db2k_private* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %31
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %161

47:                                               ; preds = %31
  %48 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %49 = call i32 @comedi_pci_enable(%struct.comedi_device* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %3, align 4
  br label %161

54:                                               ; preds = %47
  %55 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %56 = call i8* @pci_ioremap_bar(%struct.pci_dev* %55, i32 0)
  %57 = load %struct.db2k_private*, %struct.db2k_private** %8, align 8
  %58 = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %60 = call i8* @pci_ioremap_bar(%struct.pci_dev* %59, i32 2)
  %61 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.db2k_private*, %struct.db2k_private** %8, align 8
  %64 = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %54
  %68 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %67, %54
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %161

75:                                               ; preds = %67
  %76 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %77 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %76, i32 3)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %3, align 4
  br label %161

82:                                               ; preds = %75
  %83 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %84 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %85 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %84)
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = load i32, i32* @DB2K_FIRMWARE, align 4
  %88 = load i32, i32* @db2k_load_firmware, align 4
  %89 = call i32 @comedi_load_firmware(%struct.comedi_device* %83, i32* %86, i32 %87, i32 %88, i32 0)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %3, align 4
  br label %161

94:                                               ; preds = %82
  %95 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %96 = call i32 @db2k_initialize_adc(%struct.comedi_device* %95)
  %97 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %98 = call i32 @db2k_dac_disarm(%struct.comedi_device* %97)
  %99 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %100 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %99, i32 0, i32 0
  %101 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %100, align 8
  %102 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %101, i64 0
  store %struct.comedi_subdevice* %102, %struct.comedi_subdevice** %9, align 8
  %103 = load i32, i32* @COMEDI_SUBD_AI, align 4
  %104 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %105 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @SDF_READABLE, align 4
  %107 = load i32, i32* @SDF_GROUND, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %110 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %112 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %111, i32 0, i32 1
  store i32 24, i32* %112, align 4
  %113 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %114 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %113, i32 0, i32 2
  store i32 65535, i32* %114, align 8
  %115 = load i32, i32* @db2k_ai_insn_read, align 4
  %116 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %117 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 8
  %118 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %119 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %118, i32 0, i32 3
  store i32* @db2k_ai_range, i32** %119, align 8
  %120 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %121 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %120, i32 0, i32 0
  %122 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %121, align 8
  %123 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %122, i64 1
  store %struct.comedi_subdevice* %123, %struct.comedi_subdevice** %9, align 8
  %124 = load i32, i32* @COMEDI_SUBD_AO, align 4
  %125 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %126 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @SDF_WRITABLE, align 4
  %128 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %129 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.db2k_boardtype*, %struct.db2k_boardtype** %7, align 8
  %131 = getelementptr inbounds %struct.db2k_boardtype, %struct.db2k_boardtype* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 2, i32 4
  %136 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %137 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %139 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %138, i32 0, i32 2
  store i32 65535, i32* %139, align 8
  %140 = load i32, i32* @db2k_ao_insn_write, align 4
  %141 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %142 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  %143 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %144 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %143, i32 0, i32 3
  store i32* @range_bipolar10, i32** %144, align 8
  %145 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %146 = call i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice* %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %94
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %3, align 4
  br label %161

151:                                              ; preds = %94
  %152 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %153 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %152, i32 0, i32 0
  %154 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %153, align 8
  %155 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %154, i64 2
  store %struct.comedi_subdevice* %155, %struct.comedi_subdevice** %9, align 8
  %156 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %157 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %158 = load i32, i32* @db2k_8255_cb, align 4
  %159 = load i32, i32* @DB2K_REG_DIO_P2_EXP_IO_8_BIT, align 4
  %160 = call i32 @subdev_8255_init(%struct.comedi_device* %156, %struct.comedi_subdevice* %157, i32 %158, i32 %159)
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %151, %149, %92, %80, %72, %52, %44, %28, %17
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.db2k_boardtype*) #1

declare dso_local %struct.db2k_private* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

declare dso_local i8* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_load_firmware(%struct.comedi_device*, i32*, i32, i32, i32) #1

declare dso_local i32 @db2k_initialize_adc(%struct.comedi_device*) #1

declare dso_local i32 @db2k_dac_disarm(%struct.comedi_device*) #1

declare dso_local i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice*) #1

declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
