; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_dio200_subdev_8255_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_dio200_subdev_8255_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.dio200_subdev_8255 = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_DIO = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@dio200_subdev_8255_bits = common dso_local global i32 0, align 4
@dio200_subdev_8255_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @dio200_subdev_8255_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio200_subdev_8255_init(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dio200_subdev_8255*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %10 = call %struct.dio200_subdev_8255* @comedi_alloc_spriv(%struct.comedi_subdevice* %9, i32 4)
  store %struct.dio200_subdev_8255* %10, %struct.dio200_subdev_8255** %8, align 8
  %11 = load %struct.dio200_subdev_8255*, %struct.dio200_subdev_8255** %8, align 8
  %12 = icmp ne %struct.dio200_subdev_8255* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %43

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.dio200_subdev_8255*, %struct.dio200_subdev_8255** %8, align 8
  %19 = getelementptr inbounds %struct.dio200_subdev_8255, %struct.dio200_subdev_8255* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %22 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @SDF_READABLE, align 4
  %24 = load i32, i32* @SDF_WRITABLE, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 1
  store i32 24, i32* %29, align 4
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %31 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %30, i32 0, i32 5
  store i32* @range_digital, i32** %31, align 8
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %33 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i32 0, i32 2
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* @dio200_subdev_8255_bits, align 4
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @dio200_subdev_8255_config, align 4
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %39 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %42 = call i32 @dio200_subdev_8255_set_dir(%struct.comedi_device* %40, %struct.comedi_subdevice* %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %16, %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.dio200_subdev_8255* @comedi_alloc_spriv(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @dio200_subdev_8255_set_dir(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
