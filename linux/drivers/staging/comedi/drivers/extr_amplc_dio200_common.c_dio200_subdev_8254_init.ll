; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_dio200_subdev_8254_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_dio200_subdev_8254_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i64, %struct.dio200_board* }
%struct.dio200_board = type { i64, i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_8254 = type { i32 }

@I8254_IO8 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dio200_subdev_8254_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @dio200_subdev_8254_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio200_subdev_8254_init(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dio200_board*, align 8
  %9 = alloca %struct.comedi_8254*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 2
  %14 = load %struct.dio200_board*, %struct.dio200_board** %13, align 8
  store %struct.dio200_board* %14, %struct.dio200_board** %8, align 8
  %15 = load %struct.dio200_board*, %struct.dio200_board** %8, align 8
  %16 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = shl i32 %20, 3
  store i32 %21, i32* %7, align 4
  store i32 3, i32* %10, align 4
  br label %23

22:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load i32, i32* @I8254_IO8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call %struct.comedi_8254* @comedi_8254_mm_init(i64 %34, i32 0, i32 %35, i32 %36)
  store %struct.comedi_8254* %37, %struct.comedi_8254** %9, align 8
  br label %48

38:                                               ; preds = %23
  %39 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = load i32, i32* @I8254_IO8, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call %struct.comedi_8254* @comedi_8254_init(i64 %44, i32 0, i32 %45, i32 %46)
  store %struct.comedi_8254* %47, %struct.comedi_8254** %9, align 8
  br label %48

48:                                               ; preds = %38, %28
  %49 = load %struct.comedi_8254*, %struct.comedi_8254** %9, align 8
  %50 = icmp ne %struct.comedi_8254* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %85

54:                                               ; preds = %48
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %56 = load %struct.comedi_8254*, %struct.comedi_8254** %9, align 8
  %57 = call i32 @comedi_8254_subdevice_init(%struct.comedi_subdevice* %55, %struct.comedi_8254* %56)
  %58 = load i32, i32* @dio200_subdev_8254_config, align 4
  %59 = load %struct.comedi_8254*, %struct.comedi_8254** %9, align 8
  %60 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %62 = call i32 @comedi_set_spriv_auto_free(%struct.comedi_subdevice* %61)
  %63 = load %struct.dio200_board*, %struct.dio200_board** %8, align 8
  %64 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %54
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %80, %67
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 3
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @dio200_subdev_8254_set_gate_src(%struct.comedi_device* %72, %struct.comedi_subdevice* %73, i32 %74, i32 0)
  %76 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @dio200_subdev_8254_set_clock_src(%struct.comedi_device* %76, %struct.comedi_subdevice* %77, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %68

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %54
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %51
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.comedi_8254* @comedi_8254_mm_init(i64, i32, i32, i32) #1

declare dso_local %struct.comedi_8254* @comedi_8254_init(i64, i32, i32, i32) #1

declare dso_local i32 @comedi_8254_subdevice_init(%struct.comedi_subdevice*, %struct.comedi_8254*) #1

declare dso_local i32 @comedi_set_spriv_auto_free(%struct.comedi_subdevice*) #1

declare dso_local i32 @dio200_subdev_8254_set_gate_src(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @dio200_subdev_8254_set_clock_src(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
