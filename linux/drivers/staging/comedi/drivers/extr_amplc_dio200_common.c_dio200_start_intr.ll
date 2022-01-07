; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_dio200_start_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_dio200_start_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.dio200_board* }
%struct.dio200_board = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__*, %struct.dio200_subdev_intr* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32* }
%struct.dio200_subdev_intr = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @dio200_start_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dio200_start_intr(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.dio200_board*, align 8
  %6 = alloca %struct.dio200_subdev_intr*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.dio200_board*, %struct.dio200_board** %11, align 8
  store %struct.dio200_board* %12, %struct.dio200_board** %5, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 1
  %15 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %14, align 8
  store %struct.dio200_subdev_intr* %15, %struct.dio200_subdev_intr** %6, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.comedi_cmd* %19, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %28 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CR_CHAN(i32 %38)
  %40 = shl i32 1, %39
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %8, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %25

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %49 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %55 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.dio200_board*, %struct.dio200_board** %5, align 8
  %57 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %47
  %61 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %62 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %63 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @dio200_write8(%struct.comedi_device* %61, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %60, %47
  ret void
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @dio200_write8(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
