; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tle62x0.c_tle62x0_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tle62x0.c_tle62x0_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.tle62x0_state = type { i32, i32, i32, %struct.spi_device* }
%struct.tle62x0_pdata = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"no device data specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dev_attr_status_show = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot create status attribute\0A\00", align 1
@gpio_attrs = common dso_local global i32** null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot create gpio attribute\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @tle62x0_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tle62x0_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.tle62x0_state*, align 8
  %5 = alloca %struct.tle62x0_pdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = call %struct.tle62x0_pdata* @dev_get_platdata(i32* %9)
  store %struct.tle62x0_pdata* %10, %struct.tle62x0_pdata** %5, align 8
  %11 = load %struct.tle62x0_pdata*, %struct.tle62x0_pdata** %5, align 8
  %12 = icmp eq %struct.tle62x0_pdata* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %105

19:                                               ; preds = %1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.tle62x0_state* @kzalloc(i32 24, i32 %20)
  store %struct.tle62x0_state* %21, %struct.tle62x0_state** %4, align 8
  %22 = load %struct.tle62x0_state*, %struct.tle62x0_state** %4, align 8
  %23 = icmp eq %struct.tle62x0_state* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %105

27:                                               ; preds = %19
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = load %struct.tle62x0_state*, %struct.tle62x0_state** %4, align 8
  %30 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %29, i32 0, i32 3
  store %struct.spi_device* %28, %struct.spi_device** %30, align 8
  %31 = load %struct.tle62x0_pdata*, %struct.tle62x0_pdata** %5, align 8
  %32 = getelementptr inbounds %struct.tle62x0_pdata, %struct.tle62x0_pdata* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tle62x0_state*, %struct.tle62x0_state** %4, align 8
  %35 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.tle62x0_pdata*, %struct.tle62x0_pdata** %5, align 8
  %37 = getelementptr inbounds %struct.tle62x0_pdata, %struct.tle62x0_pdata* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tle62x0_state*, %struct.tle62x0_state** %4, align 8
  %40 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.tle62x0_state*, %struct.tle62x0_state** %4, align 8
  %42 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %41, i32 0, i32 1
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 0
  %46 = call i32 @device_create_file(i32* %45, i32* @dev_attr_status_show)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %51 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %101

53:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %76, %53
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.tle62x0_pdata*, %struct.tle62x0_pdata** %5, align 8
  %57 = getelementptr inbounds %struct.tle62x0_pdata, %struct.tle62x0_pdata* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %54
  %61 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 0
  %63 = load i32**, i32*** @gpio_attrs, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @device_create_file(i32* %62, i32* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %73 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %72, i32 0, i32 0
  %74 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %83

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %54

79:                                               ; preds = %54
  %80 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %81 = load %struct.tle62x0_state*, %struct.tle62x0_state** %4, align 8
  %82 = call i32 @spi_set_drvdata(%struct.spi_device* %80, %struct.tle62x0_state* %81)
  store i32 0, i32* %2, align 4
  br label %105

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %88, %83
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %6, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %90 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %89, i32 0, i32 0
  %91 = load i32**, i32*** @gpio_attrs, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @device_remove_file(i32* %90, i32* %95)
  br label %84

97:                                               ; preds = %84
  %98 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %99 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %98, i32 0, i32 0
  %100 = call i32 @device_remove_file(i32* %99, i32* @dev_attr_status_show)
  br label %101

101:                                              ; preds = %97, %49
  %102 = load %struct.tle62x0_state*, %struct.tle62x0_state** %4, align 8
  %103 = call i32 @kfree(%struct.tle62x0_state* %102)
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %79, %24, %13
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.tle62x0_pdata* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.tle62x0_state* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.tle62x0_state*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.tle62x0_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
