; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_dio200_handle_read_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_dio200_handle_read_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.dio200_board* }
%struct.dio200_board = type { i64 }
%struct.comedi_subdevice = type { %struct.dio200_subdev_intr* }
%struct.dio200_subdev_intr = type { i32, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @dio200_handle_read_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio200_handle_read_intr(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.dio200_board*, align 8
  %6 = alloca %struct.dio200_subdev_intr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.dio200_board*, %struct.dio200_board** %12, align 8
  store %struct.dio200_board* %13, %struct.dio200_board** %5, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %15, align 8
  store %struct.dio200_subdev_intr* %16, %struct.dio200_subdev_intr** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %18 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %17, i32 0, i32 2
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.dio200_board*, %struct.dio200_board** %5, align 8
  %22 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %2
  %26 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %27 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %43, %25
  %30 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %31 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %32 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dio200_read8(%struct.comedi_device* %30, i32 %33)
  %35 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %36 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %34, %37
  %39 = load i32, i32* %7, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  store i32 %41, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %29
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %52 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %53 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @dio200_write8(%struct.comedi_device* %51, i32 %54, i32 %55)
  br label %29

57:                                               ; preds = %29
  br label %62

58:                                               ; preds = %2
  %59 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %60 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %57
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %99

65:                                               ; preds = %62
  %66 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %67 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %9, align 4
  %69 = load %struct.dio200_board*, %struct.dio200_board** %5, align 8
  %70 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %75 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %76 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @dio200_write8(%struct.comedi_device* %74, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %73, %65
  %81 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %82 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %88 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %94 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @dio200_read_scan_intr(%struct.comedi_device* %93, %struct.comedi_subdevice* %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %85
  br label %98

98:                                               ; preds = %97, %80
  br label %99

99:                                               ; preds = %98, %62
  %100 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %6, align 8
  %101 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %100, i32 0, i32 2
  %102 = load i64, i64* %10, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  %104 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %105 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %106 = call i32 @comedi_handle_events(%struct.comedi_device* %104, %struct.comedi_subdevice* %105)
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i32
  ret i32 %109
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dio200_read8(%struct.comedi_device*, i32) #1

declare dso_local i32 @dio200_write8(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @dio200_read_scan_intr(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
