; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32 }
%struct.adt7316_chip_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"mode %d unsupported, using IRQF_TRIGGER_LOW\0A\00", align 1
@adt7316_event_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to request irq %d\0A\00", align 1
@ADT7316_INT_POLARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @adt7316_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7316_setup_irq(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.adt7316_chip_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev* %7)
  store %struct.adt7316_chip_info* %8, %struct.adt7316_chip_info** %4, align 8
  %9 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %4, align 8
  %10 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @irq_get_irq_data(i32 %12)
  %14 = call i32 @irqd_get_trigger_type(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %18 [
    i32 130, label %16
    i32 128, label %16
    i32 129, label %17
    i32 131, label %17
  ]

16:                                               ; preds = %1, %1
  br label %23

17:                                               ; preds = %1, %1
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %20 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dev_info(i32* %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 129, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %17, %16
  %24 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 0
  %26 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %4, align 8
  %27 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @adt7316_event_handler, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @IRQF_ONESHOT, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %38 = call i32 @devm_request_threaded_irq(i32* %25, i32 %29, i32* null, i32 %30, i32 %33, i32 %36, %struct.iio_dev* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %23
  %42 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 0
  %44 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %4, align 8
  %45 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %61

50:                                               ; preds = %23
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, 130
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* @ADT7316_INT_POLARITY, align 4
  %56 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %4, align 8
  %57 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %50
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %41
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @irqd_get_trigger_type(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
