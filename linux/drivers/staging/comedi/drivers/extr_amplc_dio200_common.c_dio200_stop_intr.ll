; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_dio200_stop_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_dio200_stop_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.dio200_board* }
%struct.dio200_board = type { i64 }
%struct.comedi_subdevice = type { %struct.dio200_subdev_intr* }
%struct.dio200_subdev_intr = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @dio200_stop_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dio200_stop_intr(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.dio200_board*, align 8
  %6 = alloca %struct.dio200_subdev_intr*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load %struct.dio200_board*, %struct.dio200_board** %8, align 8
  store %struct.dio200_board* %9, %struct.dio200_board** %5, align 8
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 0
  %12 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %11, align 8
  store %struct.dio200_subdev_intr* %12, %struct.dio200_subdev_intr** %6, align 8
  %13 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %14 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %16 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.dio200_board*, %struct.dio200_board** %5, align 8
  %18 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %23 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %24 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dio200_write8(%struct.comedi_device* %22, i32 %25, i32 0)
  br label %27

27:                                               ; preds = %21, %2
  ret void
}

declare dso_local i32 @dio200_write8(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
