; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mlx_wdt.c_mlxreg_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mlx_wdt.c_mlxreg_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.mlxreg_wdt = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxreg_core_data* }
%struct.mlxreg_core_data = type { i32, i32 }

@MLX_WDT_TYPE1 = common dso_local global i64 0, align 8
@MLXREG_WDT_CLOCK_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @mlxreg_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxreg_wdt*, align 8
  %7 = alloca %struct.mlxreg_core_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %13 = call %struct.mlxreg_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %12)
  store %struct.mlxreg_wdt* %13, %struct.mlxreg_wdt** %6, align 8
  %14 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %6, align 8
  %15 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %17, align 8
  %19 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %6, align 8
  %20 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %18, i64 %21
  store %struct.mlxreg_core_data* %22, %struct.mlxreg_core_data** %7, align 8
  %23 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %6, align 8
  %24 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MLX_WDT_TYPE1, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %2
  %29 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %6, align 8
  %30 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %33 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @regmap_read(i32 %31, i32 %34, i32* %8)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %3, align 4
  br label %89

40:                                               ; preds = %28
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @MLXREG_WDT_CLOCK_SCALE, align 4
  %43 = mul i32 %41, %42
  %44 = call i32 @order_base_2(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %47 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %45, %48
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = load i32, i32* @MLXREG_WDT_CLOCK_SCALE, align 4
  %55 = udiv i32 %53, %54
  store i32 %55, i32* %9, align 4
  br label %59

56:                                               ; preds = %2
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %40
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %62 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %6, align 8
  %64 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %67 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @regmap_write(i32 %65, i32 %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %59
  %74 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %75 = call i64 @watchdog_active(%struct.watchdog_device* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %79 = call i32 @mlxreg_wdt_stop(%struct.watchdog_device* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %84 = call i32 @mlxreg_wdt_start(%struct.watchdog_device* %83)
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %82, %77
  br label %86

86:                                               ; preds = %85, %73
  br label %87

87:                                               ; preds = %86, %59
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %38
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.mlxreg_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i64 @watchdog_active(%struct.watchdog_device*) #1

declare dso_local i32 @mlxreg_wdt_stop(%struct.watchdog_device*) #1

declare dso_local i32 @mlxreg_wdt_start(%struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
