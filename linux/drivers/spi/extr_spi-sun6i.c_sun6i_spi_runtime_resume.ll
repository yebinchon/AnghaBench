; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sun6i.c_sun6i_spi_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sun6i.c_sun6i_spi_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_master = type { i32 }
%struct.sun6i_spi = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Couldn't enable AHB clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Couldn't enable module clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Couldn't deassert the device from reset\0A\00", align 1
@SUN6I_GBL_CTL_REG = common dso_local global i32 0, align 4
@SUN6I_GBL_CTL_BUS_ENABLE = common dso_local global i32 0, align 4
@SUN6I_GBL_CTL_MASTER = common dso_local global i32 0, align 4
@SUN6I_GBL_CTL_TP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sun6i_spi_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_spi_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.sun6i_spi*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.spi_master* @dev_get_drvdata(%struct.device* %7)
  store %struct.spi_master* %8, %struct.spi_master** %4, align 8
  %9 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %10 = call %struct.sun6i_spi* @spi_master_get_devdata(%struct.spi_master* %9)
  store %struct.sun6i_spi* %10, %struct.sun6i_spi** %5, align 8
  %11 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %12 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_prepare_enable(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %59

20:                                               ; preds = %1
  %21 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %22 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_prepare_enable(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %54

30:                                               ; preds = %20
  %31 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %32 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @reset_control_deassert(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %49

40:                                               ; preds = %30
  %41 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %42 = load i32, i32* @SUN6I_GBL_CTL_REG, align 4
  %43 = load i32, i32* @SUN6I_GBL_CTL_BUS_ENABLE, align 4
  %44 = load i32, i32* @SUN6I_GBL_CTL_MASTER, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @SUN6I_GBL_CTL_TP, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @sun6i_spi_write(%struct.sun6i_spi* %41, i32 %42, i32 %47)
  store i32 0, i32* %2, align 4
  br label %61

49:                                               ; preds = %37
  %50 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %51 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @clk_disable_unprepare(i32 %52)
  br label %54

54:                                               ; preds = %49, %27
  %55 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %56 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @clk_disable_unprepare(i32 %57)
  br label %59

59:                                               ; preds = %54, %17
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %40
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.spi_master* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sun6i_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @sun6i_spi_write(%struct.sun6i_spi*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
