; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1760.c_pci1760_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1760.c_pci1760_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.pci_dev = type { i32 }

@COMEDI_SUBD_DI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@pci1760_di_insn_bits = common dso_local global i32 0, align 4
@COMEDI_SUBD_DO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@pci1760_do_insn_bits = common dso_local global i32 0, align 4
@PCI1760_CMD_GET_DO = common dso_local global i32 0, align 4
@COMEDI_SUBD_PWM = common dso_local global i32 0, align 4
@SDF_PWM_COUNTER = common dso_local global i32 0, align 4
@pci1760_pwm_insn_config = common dso_local global i32 0, align 4
@COMEDI_SUBD_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @pci1760_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci1760_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
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
  br label %102

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %19 = call i32 @pci_resource_start(%struct.pci_dev* %18, i32 0)
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %23 = call i32 @pci1760_reset(%struct.comedi_device* %22)
  %24 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %25 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %24, i32 4)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %102

30:                                               ; preds = %17
  %31 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 0
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %32, align 8
  %34 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %33, i64 0
  store %struct.comedi_subdevice* %34, %struct.comedi_subdevice** %7, align 8
  %35 = load i32, i32* @COMEDI_SUBD_DI, align 4
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @SDF_READABLE, align 4
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 0
  store i32 8, i32* %42, align 8
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %44 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 7
  store i32* @range_digital, i32** %46, align 8
  %47 = load i32, i32* @pci1760_di_insn_bits, align 4
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %51, align 8
  %53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i64 1
  store %struct.comedi_subdevice* %53, %struct.comedi_subdevice** %7, align 8
  %54 = load i32, i32* @COMEDI_SUBD_DO, align 4
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %56 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @SDF_WRITABLE, align 4
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 0
  store i32 8, i32* %61, align 8
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 7
  store i32* @range_digital, i32** %65, align 8
  %66 = load i32, i32* @pci1760_do_insn_bits, align 4
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %68 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 8
  %69 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %70 = load i32, i32* @PCI1760_CMD_GET_DO, align 4
  %71 = call i32 @pci1760_cmd(%struct.comedi_device* %69, i32 %70, i32 0)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %30
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %102

76:                                               ; preds = %30
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %79 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %81 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %80, i32 0, i32 0
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %81, align 8
  %83 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %82, i64 2
  store %struct.comedi_subdevice* %83, %struct.comedi_subdevice** %7, align 8
  %84 = load i32, i32* @COMEDI_SUBD_PWM, align 4
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %86 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @SDF_PWM_COUNTER, align 4
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %89 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %91 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %90, i32 0, i32 0
  store i32 2, i32* %91, align 8
  %92 = load i32, i32* @pci1760_pwm_insn_config, align 4
  %93 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %94 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %96 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %95, i32 0, i32 0
  %97 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %96, align 8
  %98 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %97, i64 3
  store %struct.comedi_subdevice* %98, %struct.comedi_subdevice** %7, align 8
  %99 = load i32, i32* @COMEDI_SUBD_UNUSED, align 4
  %100 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %101 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %76, %74, %28, %15
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci1760_reset(%struct.comedi_device*) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @pci1760_cmd(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
