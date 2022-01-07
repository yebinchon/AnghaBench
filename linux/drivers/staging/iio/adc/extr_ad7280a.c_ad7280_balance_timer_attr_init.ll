; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_balance_timer_attr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_balance_timer_attr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev_attr = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.device = type { i32 }

@ad7280_show_balance_timer = common dso_local global i32 0, align 4
@ad7280_store_balance_timer = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"in%d-in%d_balance_timer\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev_attr*, %struct.device*, i32, i32)* @ad7280_balance_timer_attr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7280_balance_timer_attr_init(%struct.iio_dev_attr* %0, %struct.device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev_attr*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iio_dev_attr* %0, %struct.iio_dev_attr** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %6, align 8
  %12 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %6, align 8
  %14 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 420, i32* %16, align 4
  %17 = load i32, i32* @ad7280_show_balance_timer, align 4
  %18 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %6, align 8
  %19 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @ad7280_store_balance_timer, align 4
  %22 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %6, align 8
  %23 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @devm_kasprintf(%struct.device* %25, i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29)
  %31 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %6, align 8
  %32 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 %30, i32* %34, align 4
  %35 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %6, align 8
  %36 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @devm_kasprintf(%struct.device*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
