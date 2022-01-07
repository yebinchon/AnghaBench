; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_dio200_subdev_8254_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_dio200_subdev_8254_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, %struct.dio200_board* }
%struct.dio200_board = type { i64 }
%struct.comedi_subdevice = type { %struct.comedi_8254* }
%struct.comedi_8254 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @dio200_subdev_8254_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio200_subdev_8254_offset(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.dio200_board*, align 8
  %6 = alloca %struct.comedi_8254*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 2
  %10 = load %struct.dio200_board*, %struct.dio200_board** %9, align 8
  store %struct.dio200_board* %10, %struct.dio200_board** %5, align 8
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 0
  %13 = load %struct.comedi_8254*, %struct.comedi_8254** %12, align 8
  store %struct.comedi_8254* %13, %struct.comedi_8254** %6, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.comedi_8254*, %struct.comedi_8254** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub i32 %21, %24
  store i32 %25, i32* %7, align 4
  br label %34

26:                                               ; preds = %2
  %27 = load %struct.comedi_8254*, %struct.comedi_8254** %6, align 8
  %28 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub i32 %29, %32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %26, %18
  %35 = load %struct.dio200_board*, %struct.dio200_board** %5, align 8
  %36 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = lshr i32 %40, 3
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
