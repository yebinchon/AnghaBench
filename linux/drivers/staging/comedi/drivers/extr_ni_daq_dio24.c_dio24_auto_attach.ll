; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_daq_dio24.c_dio24_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_daq_dio24.c_dio24_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.pcmcia_device = type { %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }

@CONF_AUTO_SET_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @dio24_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio24_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pcmcia_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = call %struct.pcmcia_device* @comedi_to_pcmcia_dev(%struct.comedi_device* %9)
  store %struct.pcmcia_device* %10, %struct.pcmcia_device** %6, align 8
  %11 = load i32, i32* @CONF_AUTO_SET_IO, align 4
  %12 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %13 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = call i32 @comedi_pcmcia_enable(%struct.comedi_device* %16, i32* null)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %46

22:                                               ; preds = %2
  %23 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %24 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %32, i32 1)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %46

38:                                               ; preds = %22
  %39 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %40, align 8
  %42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i64 0
  store %struct.comedi_subdevice* %42, %struct.comedi_subdevice** %7, align 8
  %43 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %45 = call i32 @subdev_8255_init(%struct.comedi_device* %43, %struct.comedi_subdevice* %44, i32* null, i32 0)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %38, %36, %20
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.pcmcia_device* @comedi_to_pcmcia_dev(%struct.comedi_device*) #1

declare dso_local i32 @comedi_pcmcia_enable(%struct.comedi_device*, i32*) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
