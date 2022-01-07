; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_setup_gpios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_setup_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.ad2s1210_state = type { i32*, %struct.spi_device* }
%struct.spi_device = type { i32 }

@gpios = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"ad2s1210: failed to request %s GPIO: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad2s1210_state*)* @ad2s1210_setup_gpios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad2s1210_setup_gpios(%struct.ad2s1210_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad2s1210_state*, align 8
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ad2s1210_state* %0, %struct.ad2s1210_state** %3, align 8
  %7 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %3, align 8
  %8 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %7, i32 0, i32 1
  %9 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  store %struct.spi_device* %9, %struct.spi_device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %67, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gpios, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %70

15:                                               ; preds = %10
  %16 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gpios, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gpios, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @devm_gpiod_get(i32* %17, i32 %23, i32 %29)
  %31 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %3, align 8
  %32 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %30, i32* %36, align 4
  %37 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %3, align 8
  %38 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %15
  %47 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %3, align 8
  %48 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %56 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gpios, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %71

66:                                               ; preds = %15
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %10

70:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %46
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @devm_gpiod_get(i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
