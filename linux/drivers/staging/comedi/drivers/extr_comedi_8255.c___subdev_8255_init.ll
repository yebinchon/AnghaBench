; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8255.c___subdev_8255_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8255.c___subdev_8255_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.subdev_8255_private = type { i32 (%struct.comedi_device.0*, i32, i32, i32, i64)*, i64 }
%struct.comedi_device.0 = type opaque

@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_DIO = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@subdev_8255_insn = common dso_local global i32 0, align 4
@subdev_8255_insn_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32 (%struct.comedi_device*, i32, i32, i32, i64)*, i64, i32)* @__subdev_8255_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subdev_8255_init(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 (%struct.comedi_device*, i32, i32, i32, i64)* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32 (%struct.comedi_device*, i32, i32, i32, i64)*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.subdev_8255_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %7, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %8, align 8
  store i32 (%struct.comedi_device*, i32, i32, i32, i64)* %2, i32 (%struct.comedi_device*, i32, i32, i32, i64)** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %14 = call %struct.subdev_8255_private* @comedi_alloc_spriv(%struct.comedi_subdevice* %13, i32 16)
  store %struct.subdev_8255_private* %14, %struct.subdev_8255_private** %12, align 8
  %15 = load %struct.subdev_8255_private*, %struct.subdev_8255_private** %12, align 8
  %16 = icmp ne %struct.subdev_8255_private* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %65

20:                                               ; preds = %5
  %21 = load i32 (%struct.comedi_device*, i32, i32, i32, i64)*, i32 (%struct.comedi_device*, i32, i32, i32, i64)** %9, align 8
  %22 = icmp ne i32 (%struct.comedi_device*, i32, i32, i32, i64)* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32 (%struct.comedi_device*, i32, i32, i32, i64)*, i32 (%struct.comedi_device*, i32, i32, i32, i64)** %9, align 8
  %25 = bitcast i32 (%struct.comedi_device*, i32, i32, i32, i64)* %24 to i32 (%struct.comedi_device.0*, i32, i32, i32, i64)*
  %26 = load %struct.subdev_8255_private*, %struct.subdev_8255_private** %12, align 8
  %27 = getelementptr inbounds %struct.subdev_8255_private, %struct.subdev_8255_private* %26, i32 0, i32 0
  store i32 (%struct.comedi_device.0*, i32, i32, i32, i64)* %25, i32 (%struct.comedi_device.0*, i32, i32, i32, i64)** %27, align 8
  br label %38

28:                                               ; preds = %20
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.subdev_8255_private*, %struct.subdev_8255_private** %12, align 8
  %33 = getelementptr inbounds %struct.subdev_8255_private, %struct.subdev_8255_private* %32, i32 0, i32 0
  store i32 (%struct.comedi_device.0*, i32, i32, i32, i64)* bitcast (i32 (%struct.comedi_device*, i32, i32, i32, i64)* @subdev_8255_mmio to i32 (%struct.comedi_device.0*, i32, i32, i32, i64)*), i32 (%struct.comedi_device.0*, i32, i32, i32, i64)** %33, align 8
  br label %37

34:                                               ; preds = %28
  %35 = load %struct.subdev_8255_private*, %struct.subdev_8255_private** %12, align 8
  %36 = getelementptr inbounds %struct.subdev_8255_private, %struct.subdev_8255_private* %35, i32 0, i32 0
  store i32 (%struct.comedi_device.0*, i32, i32, i32, i64)* bitcast (i32 (%struct.comedi_device*, i32, i32, i32, i64)* @subdev_8255_io to i32 (%struct.comedi_device.0*, i32, i32, i32, i64)*), i32 (%struct.comedi_device.0*, i32, i32, i32, i64)** %36, align 8
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.subdev_8255_private*, %struct.subdev_8255_private** %12, align 8
  %41 = getelementptr inbounds %struct.subdev_8255_private, %struct.subdev_8255_private* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %44 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @SDF_READABLE, align 4
  %46 = load i32, i32* @SDF_WRITABLE, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %51 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i32 0, i32 1
  store i32 24, i32* %51, align 4
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 5
  store i32* @range_digital, i32** %53, align 8
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %55 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 2
  store i32 1, i32* %55, align 8
  %56 = load i32, i32* @subdev_8255_insn, align 4
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %58 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @subdev_8255_insn_config, align 4
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %64 = call i32 @subdev_8255_do_config(%struct.comedi_device* %62, %struct.comedi_subdevice* %63)
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %38, %17
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.subdev_8255_private* @comedi_alloc_spriv(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @subdev_8255_mmio(%struct.comedi_device*, i32, i32, i32, i64) #1

declare dso_local i32 @subdev_8255_io(%struct.comedi_device*, i32, i32, i32, i64) #1

declare dso_local i32 @subdev_8255_do_config(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
