; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_pch_thermal.c_pch_wpt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_pch_thermal.c_pch_wpt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_thermal_device = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WPT_TSEL_ETS = common dso_local global i32 0, align 4
@WPT_TSEL = common dso_local global i64 0, align 8
@WPT_TSEL_PLDB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Sensor can't be enabled\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@WPT_CTT = common dso_local global i64 0, align 8
@WPT_PHL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pch_thermal_device*, i32*)* @pch_wpt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_wpt_init(%struct.pch_thermal_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pch_thermal_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pch_thermal_device* %0, %struct.pch_thermal_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @WPT_TSEL_ETS, align 4
  %10 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %4, align 8
  %11 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @WPT_TSEL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readb(i64 %14)
  %16 = and i32 %9, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %4, align 8
  %20 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  br label %68

21:                                               ; preds = %2
  %22 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %4, align 8
  %23 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WPT_TSEL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readb(i64 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @WPT_TSEL_PLDB, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %4, align 8
  %34 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %33, i32 0, i32 6
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %124

40:                                               ; preds = %21
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @WPT_TSEL_ETS, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %4, align 8
  %45 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @WPT_TSEL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writeb(i32 %43, i64 %48)
  %50 = load i32, i32* @WPT_TSEL_ETS, align 4
  %51 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %4, align 8
  %52 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @WPT_TSEL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readb(i64 %55)
  %57 = and i32 %50, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %40
  %60 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %4, align 8
  %61 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %60, i32 0, i32 6
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %124

67:                                               ; preds = %40
  br label %68

68:                                               ; preds = %67, %18
  %69 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %4, align 8
  %70 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %69, i32 0, i32 1
  store i32 -1, i32* %70, align 4
  %71 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %4, align 8
  %72 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @WPT_CTT, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @readw(i64 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, 511
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %68
  %82 = load i32, i32* %7, align 4
  %83 = mul nsw i32 %82, 1000
  %84 = sdiv i32 %83, 2
  %85 = sub nsw i32 %84, 50000
  %86 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %4, align 8
  %87 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %4, align 8
  %89 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %81, %68
  %94 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %4, align 8
  %95 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %94, i32 0, i32 3
  store i32 -1, i32* %95, align 4
  %96 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %4, align 8
  %97 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @WPT_PHL, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @readw(i64 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = and i32 %102, 511
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %93
  %107 = load i32, i32* %7, align 4
  %108 = mul nsw i32 %107, 1000
  %109 = sdiv i32 %108, 2
  %110 = sub nsw i32 %109, 50000
  %111 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %4, align 8
  %112 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %4, align 8
  %116 = getelementptr inbounds %struct.pch_thermal_device, %struct.pch_thermal_device* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %106, %93
  %121 = load %struct.pch_thermal_device*, %struct.pch_thermal_device** %4, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @pch_wpt_add_acpi_psv_trip(%struct.pch_thermal_device* %121, i32* %122)
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %120, %59, %32
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @pch_wpt_add_acpi_psv_trip(%struct.pch_thermal_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
