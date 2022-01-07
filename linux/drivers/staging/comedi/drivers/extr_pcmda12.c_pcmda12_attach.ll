; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmda12.c_pcmda12_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmda12.c_pcmda12_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.comedi_devconfig = type { i32* }
%struct.pcmda12_private = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_AO = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@pcmda12_ranges = common dso_local global i32 0, align 4
@pcmda12_ao_insn_write = common dso_local global i32 0, align 4
@pcmda12_ao_insn_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @pcmda12_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmda12_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.pcmda12_private*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %11 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @comedi_request_region(%struct.comedi_device* %9, i32 %14, i32 16)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %77

20:                                               ; preds = %2
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = call %struct.pcmda12_private* @comedi_alloc_devpriv(%struct.comedi_device* %21, i32 4)
  store %struct.pcmda12_private* %22, %struct.pcmda12_private** %6, align 8
  %23 = load %struct.pcmda12_private*, %struct.pcmda12_private** %6, align 8
  %24 = icmp ne %struct.pcmda12_private* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %77

28:                                               ; preds = %20
  %29 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %30 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.pcmda12_private*, %struct.pcmda12_private** %6, align 8
  %35 = getelementptr inbounds %struct.pcmda12_private, %struct.pcmda12_private* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %37 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %36, i32 1)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %77

42:                                               ; preds = %28
  %43 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %44, align 8
  %46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i64 0
  store %struct.comedi_subdevice* %46, %struct.comedi_subdevice** %7, align 8
  %47 = load i32, i32* @COMEDI_SUBD_AO, align 4
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @SDF_READABLE, align 4
  %51 = load i32, i32* @SDF_WRITABLE, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %56 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 1
  store i32 8, i32* %56, align 4
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %58 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 2
  store i32 4095, i32* %58, align 8
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %60 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 5
  store i32* @pcmda12_ranges, i32** %60, align 8
  %61 = load i32, i32* @pcmda12_ao_insn_write, align 4
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @pcmda12_ao_insn_read, align 4
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %66 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %68 = call i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %42
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %77

73:                                               ; preds = %42
  %74 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %76 = call i32 @pcmda12_ao_reset(%struct.comedi_device* %74, %struct.comedi_subdevice* %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %71, %40, %25, %18
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @comedi_request_region(%struct.comedi_device*, i32, i32) #1

declare dso_local %struct.pcmda12_private* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice*) #1

declare dso_local i32 @pcmda12_ao_reset(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
