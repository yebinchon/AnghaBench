; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8255.c_subdev_8255_do_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8255.c_subdev_8255_do_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32, %struct.subdev_8255_private* }
%struct.subdev_8255_private = type { i64, i32 (%struct.comedi_device.0*, i32, i32, i32, i64)* }
%struct.comedi_device.0 = type opaque

@I8255_CTRL_CW = common dso_local global i32 0, align 4
@I8255_CTRL_A_IO = common dso_local global i32 0, align 4
@I8255_CTRL_B_IO = common dso_local global i32 0, align 4
@I8255_CTRL_C_LO_IO = common dso_local global i32 0, align 4
@I8255_CTRL_C_HI_IO = common dso_local global i32 0, align 4
@I8255_CTRL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @subdev_8255_do_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subdev_8255_do_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.subdev_8255_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %8 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %8, i32 0, i32 1
  %10 = load %struct.subdev_8255_private*, %struct.subdev_8255_private** %9, align 8
  store %struct.subdev_8255_private* %10, %struct.subdev_8255_private** %5, align 8
  %11 = load %struct.subdev_8255_private*, %struct.subdev_8255_private** %5, align 8
  %12 = getelementptr inbounds %struct.subdev_8255_private, %struct.subdev_8255_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i32, i32* @I8255_CTRL_CW, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 255
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @I8255_CTRL_A_IO, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %26 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 65280
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @I8255_CTRL_B_IO, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %24
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 983040
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @I8255_CTRL_C_LO_IO, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, 15728640
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @I8255_CTRL_C_HI_IO, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %50, %44
  %55 = load %struct.subdev_8255_private*, %struct.subdev_8255_private** %5, align 8
  %56 = getelementptr inbounds %struct.subdev_8255_private, %struct.subdev_8255_private* %55, i32 0, i32 1
  %57 = load i32 (%struct.comedi_device.0*, i32, i32, i32, i64)*, i32 (%struct.comedi_device.0*, i32, i32, i32, i64)** %56, align 8
  %58 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %59 = bitcast %struct.comedi_device* %58 to %struct.comedi_device.0*
  %60 = load i32, i32* @I8255_CTRL_REG, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i64, i64* %6, align 8
  %63 = call i32 %57(%struct.comedi_device.0* %59, i32 1, i32 %60, i32 %61, i64 %62)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
