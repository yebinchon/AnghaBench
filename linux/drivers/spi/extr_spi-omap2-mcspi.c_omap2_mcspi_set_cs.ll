; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_set_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_set_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i64, i32 }
%struct.omap2_mcspi = type { i32 }

@SPI_CS_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to get sync: %d\0A\00", align 1
@OMAP2_MCSPI_CHCONF_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @omap2_mcspi_set_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2_mcspi_set_cs(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap2_mcspi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.omap2_mcspi* @spi_master_get_devdata(i32 %10)
  store %struct.omap2_mcspi* %11, %struct.omap2_mcspi** %5, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SPI_CS_HIGH, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %71

28:                                               ; preds = %23
  %29 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %30 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pm_runtime_get_sync(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %37 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pm_runtime_put_noidle(i32 %38)
  %40 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %41 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %71

45:                                               ; preds = %28
  %46 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %47 = call i32 @mcspi_cached_chconf0(%struct.spi_device* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* @OMAP2_MCSPI_CHCONF_FORCE, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %59

55:                                               ; preds = %45
  %56 = load i32, i32* @OMAP2_MCSPI_CHCONF_FORCE, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @mcspi_write_chconf0(%struct.spi_device* %60, i32 %61)
  %63 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %64 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pm_runtime_mark_last_busy(i32 %65)
  %67 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %68 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pm_runtime_put_autosuspend(i32 %69)
  br label %71

71:                                               ; preds = %35, %59, %23
  ret void
}

declare dso_local %struct.omap2_mcspi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mcspi_cached_chconf0(%struct.spi_device*) #1

declare dso_local i32 @mcspi_write_chconf0(%struct.spi_device*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
