; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1516.c_apci1516_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1516.c_apci1516_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apci1516_boardinfo = type { i64, i64, i64, i32 }
%struct.comedi_device = type { %struct.comedi_subdevice*, i8*, i32, %struct.apci1516_boardinfo* }
%struct.comedi_subdevice = type { i32, i8*, i32, i32*, i64, i32 }
%struct.pci_dev = type { i32 }
%struct.apci1516_private = type { i8* }

@apci1516_boardtypes = common dso_local global %struct.apci1516_boardinfo* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_DI = common dso_local global i8* null, align 8
@SDF_READABLE = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@apci1516_di_insn_bits = common dso_local global i32 0, align 4
@COMEDI_SUBD_UNUSED = common dso_local global i8* null, align 8
@COMEDI_SUBD_DO = common dso_local global i8* null, align 8
@SDF_WRITABLE = common dso_local global i32 0, align 4
@apci1516_do_insn_bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @apci1516_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci1516_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.apci1516_boardinfo*, align 8
  %8 = alloca %struct.apci1516_private*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %6, align 8
  store %struct.apci1516_boardinfo* null, %struct.apci1516_boardinfo** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.apci1516_boardinfo*, %struct.apci1516_boardinfo** @apci1516_boardtypes, align 8
  %15 = call i64 @ARRAY_SIZE(%struct.apci1516_boardinfo* %14)
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.apci1516_boardinfo*, %struct.apci1516_boardinfo** @apci1516_boardtypes, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.apci1516_boardinfo, %struct.apci1516_boardinfo* %18, i64 %19
  store %struct.apci1516_boardinfo* %20, %struct.apci1516_boardinfo** %7, align 8
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.apci1516_boardinfo*, %struct.apci1516_boardinfo** %7, align 8
  %23 = icmp ne %struct.apci1516_boardinfo* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %156

27:                                               ; preds = %21
  %28 = load %struct.apci1516_boardinfo*, %struct.apci1516_boardinfo** %7, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 3
  store %struct.apci1516_boardinfo* %28, %struct.apci1516_boardinfo** %30, align 8
  %31 = load %struct.apci1516_boardinfo*, %struct.apci1516_boardinfo** %7, align 8
  %32 = getelementptr inbounds %struct.apci1516_boardinfo, %struct.apci1516_boardinfo* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %37 = call %struct.apci1516_private* @comedi_alloc_devpriv(%struct.comedi_device* %36, i32 8)
  store %struct.apci1516_private* %37, %struct.apci1516_private** %8, align 8
  %38 = load %struct.apci1516_private*, %struct.apci1516_private** %8, align 8
  %39 = icmp ne %struct.apci1516_private* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %156

43:                                               ; preds = %27
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = call i32 @comedi_pci_enable(%struct.comedi_device* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %3, align 4
  br label %156

50:                                               ; preds = %43
  %51 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %52 = call i8* @pci_resource_start(%struct.pci_dev* %51, i32 1)
  %53 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %56 = call i8* @pci_resource_start(%struct.pci_dev* %55, i32 2)
  %57 = load %struct.apci1516_private*, %struct.apci1516_private** %8, align 8
  %58 = getelementptr inbounds %struct.apci1516_private, %struct.apci1516_private* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %60 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %59, i32 3)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %156

65:                                               ; preds = %50
  %66 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 0
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %67, align 8
  %69 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i64 0
  store %struct.comedi_subdevice* %69, %struct.comedi_subdevice** %9, align 8
  %70 = load %struct.apci1516_boardinfo*, %struct.apci1516_boardinfo** %7, align 8
  %71 = getelementptr inbounds %struct.apci1516_boardinfo, %struct.apci1516_boardinfo* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %65
  %75 = load i8*, i8** @COMEDI_SUBD_DI, align 8
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %77 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* @SDF_READABLE, align 4
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %80 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load %struct.apci1516_boardinfo*, %struct.apci1516_boardinfo** %7, align 8
  %82 = getelementptr inbounds %struct.apci1516_boardinfo, %struct.apci1516_boardinfo* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %85 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %84, i32 0, i32 4
  store i64 %83, i64* %85, align 8
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %87 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %89 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %88, i32 0, i32 3
  store i32* @range_digital, i32** %89, align 8
  %90 = load i32, i32* @apci1516_di_insn_bits, align 4
  %91 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %92 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  br label %97

93:                                               ; preds = %65
  %94 = load i8*, i8** @COMEDI_SUBD_UNUSED, align 8
  %95 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %96 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %93, %74
  %98 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %99 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %98, i32 0, i32 0
  %100 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %99, align 8
  %101 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %100, i64 1
  store %struct.comedi_subdevice* %101, %struct.comedi_subdevice** %9, align 8
  %102 = load %struct.apci1516_boardinfo*, %struct.apci1516_boardinfo** %7, align 8
  %103 = getelementptr inbounds %struct.apci1516_boardinfo, %struct.apci1516_boardinfo* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %97
  %107 = load i8*, i8** @COMEDI_SUBD_DO, align 8
  %108 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %109 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* @SDF_WRITABLE, align 4
  %111 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %112 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 8
  %113 = load %struct.apci1516_boardinfo*, %struct.apci1516_boardinfo** %7, align 8
  %114 = getelementptr inbounds %struct.apci1516_boardinfo, %struct.apci1516_boardinfo* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %117 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %116, i32 0, i32 4
  store i64 %115, i64* %117, align 8
  %118 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %119 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %121 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %120, i32 0, i32 3
  store i32* @range_digital, i32** %121, align 8
  %122 = load i32, i32* @apci1516_do_insn_bits, align 4
  %123 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %124 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  br label %129

125:                                              ; preds = %97
  %126 = load i8*, i8** @COMEDI_SUBD_UNUSED, align 8
  %127 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %128 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  br label %129

129:                                              ; preds = %125, %106
  %130 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %131 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %130, i32 0, i32 0
  %132 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %131, align 8
  %133 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %132, i64 2
  store %struct.comedi_subdevice* %133, %struct.comedi_subdevice** %9, align 8
  %134 = load %struct.apci1516_boardinfo*, %struct.apci1516_boardinfo** %7, align 8
  %135 = getelementptr inbounds %struct.apci1516_boardinfo, %struct.apci1516_boardinfo* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %129
  %139 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %140 = load %struct.apci1516_private*, %struct.apci1516_private** %8, align 8
  %141 = getelementptr inbounds %struct.apci1516_private, %struct.apci1516_private* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @addi_watchdog_init(%struct.comedi_subdevice* %139, i8* %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %3, align 4
  br label %156

148:                                              ; preds = %138
  br label %153

149:                                              ; preds = %129
  %150 = load i8*, i8** @COMEDI_SUBD_UNUSED, align 8
  %151 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %152 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %149, %148
  %154 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %155 = call i32 @apci1516_reset(%struct.comedi_device* %154)
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %153, %146, %63, %48, %40, %24
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.apci1516_boardinfo*) #1

declare dso_local %struct.apci1516_private* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @addi_watchdog_init(%struct.comedi_subdevice*, i8*) #1

declare dso_local i32 @apci1516_reset(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
