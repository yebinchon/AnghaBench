; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_config_chanlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_config_chanlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i64 }
%struct.comedi_subdevice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32, i32)* @ni_ao_config_chanlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ao_config_chanlist(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ni_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %7, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.ni_private*, %struct.ni_private** %14, align 8
  store %struct.ni_private* %15, %struct.ni_private** %12, align 8
  %16 = load %struct.ni_private*, %struct.ni_private** %12, align 8
  %17 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @ni_m_series_ao_config_chanlist(%struct.comedi_device* %21, %struct.comedi_subdevice* %22, i32* %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %33

27:                                               ; preds = %5
  %28 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @ni_old_ao_config_chanlist(%struct.comedi_device* %28, %struct.comedi_subdevice* %29, i32* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %27, %20
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @ni_m_series_ao_config_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32, i32) #1

declare dso_local i32 @ni_old_ao_config_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
