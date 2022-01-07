; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_spi.c_cw1200_spi_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_spi.c_cw1200_spi_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_platform_data_spi = type { i64, i64, i64 (%struct.cw1200_platform_data_spi*, i32)*, i64 (%struct.cw1200_platform_data_spi*, i32)* }

@.str = private unnamed_addr constant [18 x i8] c"cw1200_wlan_reset\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"cw1200_wlan_powerup\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"power_ctrl() failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"clk_ctrl() failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_platform_data_spi*)* @cw1200_spi_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_spi_on(%struct.cw1200_platform_data_spi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cw1200_platform_data_spi*, align 8
  store %struct.cw1200_platform_data_spi* %0, %struct.cw1200_platform_data_spi** %3, align 8
  %4 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %3, align 8
  %5 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %3, align 8
  %10 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @gpio_request(i64 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %3, align 8
  %14 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @gpio_direction_output(i64 %15, i32 0)
  br label %17

17:                                               ; preds = %8, %1
  %18 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %3, align 8
  %19 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %3, align 8
  %24 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @gpio_request(i64 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %3, align 8
  %28 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @gpio_direction_output(i64 %29, i32 0)
  br label %31

31:                                               ; preds = %22, %17
  %32 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %3, align 8
  %33 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %3, align 8
  %38 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %31
  %42 = call i32 @msleep(i32 10)
  br label %43

43:                                               ; preds = %41, %36
  %44 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %3, align 8
  %45 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %44, i32 0, i32 3
  %46 = load i64 (%struct.cw1200_platform_data_spi*, i32)*, i64 (%struct.cw1200_platform_data_spi*, i32)** %45, align 8
  %47 = icmp ne i64 (%struct.cw1200_platform_data_spi*, i32)* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %3, align 8
  %50 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %49, i32 0, i32 3
  %51 = load i64 (%struct.cw1200_platform_data_spi*, i32)*, i64 (%struct.cw1200_platform_data_spi*, i32)** %50, align 8
  %52 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %3, align 8
  %53 = call i64 %51(%struct.cw1200_platform_data_spi* %52, i32 1)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %97

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %43
  %59 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %3, align 8
  %60 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %59, i32 0, i32 2
  %61 = load i64 (%struct.cw1200_platform_data_spi*, i32)*, i64 (%struct.cw1200_platform_data_spi*, i32)** %60, align 8
  %62 = icmp ne i64 (%struct.cw1200_platform_data_spi*, i32)* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %3, align 8
  %65 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %64, i32 0, i32 2
  %66 = load i64 (%struct.cw1200_platform_data_spi*, i32)*, i64 (%struct.cw1200_platform_data_spi*, i32)** %65, align 8
  %67 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %3, align 8
  %68 = call i64 %66(%struct.cw1200_platform_data_spi* %67, i32 1)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %97

72:                                               ; preds = %63
  %73 = call i32 @msleep(i32 10)
  br label %74

74:                                               ; preds = %72, %58
  %75 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %3, align 8
  %76 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %3, align 8
  %81 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @gpio_set_value(i64 %82, i32 1)
  %84 = call i32 @msleep(i32 250)
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %3, align 8
  %87 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.cw1200_platform_data_spi*, %struct.cw1200_platform_data_spi** %3, align 8
  %92 = getelementptr inbounds %struct.cw1200_platform_data_spi, %struct.cw1200_platform_data_spi* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @gpio_set_value(i64 %93, i32 1)
  %95 = call i32 @msleep(i32 50)
  br label %96

96:                                               ; preds = %90, %85
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %70, %55
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @gpio_request(i64, i8*) #1

declare dso_local i32 @gpio_direction_output(i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @gpio_set_value(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
