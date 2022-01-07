; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds2404.c_ds2404_gpio_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds2404.c_ds2404_gpio_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.ds2404 = type { %struct.TYPE_3__* }
%struct.platform_device = type { i32 }
%struct.ds2404_platform_data = type { i32, i32, i32 }

@ds2404_gpio = common dso_local global %struct.TYPE_3__* null, align 8
@DS2404_RST = common dso_local global i64 0, align 8
@DS2404_CLK = common dso_local global i64 0, align 8
@DS2404_DQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"error mapping gpio %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds2404*, %struct.platform_device*, %struct.ds2404_platform_data*)* @ds2404_gpio_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2404_gpio_map(%struct.ds2404* %0, %struct.platform_device* %1, %struct.ds2404_platform_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ds2404*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.ds2404_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ds2404* %0, %struct.ds2404** %5, align 8
  store %struct.platform_device* %1, %struct.platform_device** %6, align 8
  store %struct.ds2404_platform_data* %2, %struct.ds2404_platform_data** %7, align 8
  %10 = load %struct.ds2404_platform_data*, %struct.ds2404_platform_data** %7, align 8
  %11 = getelementptr inbounds %struct.ds2404_platform_data, %struct.ds2404_platform_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ds2404_gpio, align 8
  %14 = load i64, i64* @DS2404_RST, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 4
  %17 = load %struct.ds2404_platform_data*, %struct.ds2404_platform_data** %7, align 8
  %18 = getelementptr inbounds %struct.ds2404_platform_data, %struct.ds2404_platform_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ds2404_gpio, align 8
  %21 = load i64, i64* @DS2404_CLK, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.ds2404_platform_data*, %struct.ds2404_platform_data** %7, align 8
  %25 = getelementptr inbounds %struct.ds2404_platform_data, %struct.ds2404_platform_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ds2404_gpio, align 8
  %28 = load i64, i64* @DS2404_DQ, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %77, %3
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ds2404_gpio, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %80

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ds2404_gpio, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ds2404_gpio, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @gpio_request(i32 %42, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %36
  %53 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ds2404_gpio, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  br label %84

63:                                               ; preds = %36
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @DS2404_DQ, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ds2404_gpio, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @gpio_direction_output(i32 %74, i32 1)
  br label %76

76:                                               ; preds = %68, %63
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %31

80:                                               ; preds = %31
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ds2404_gpio, align 8
  %82 = load %struct.ds2404*, %struct.ds2404** %5, align 8
  %83 = getelementptr inbounds %struct.ds2404, %struct.ds2404* %82, i32 0, i32 0
  store %struct.TYPE_3__* %81, %struct.TYPE_3__** %83, align 8
  store i32 0, i32* %4, align 4
  br label %99

84:                                               ; preds = %52
  br label %85

85:                                               ; preds = %89, %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %8, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ds2404_gpio, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @gpio_free(i32 %95)
  br label %85

97:                                               ; preds = %85
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %80
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
