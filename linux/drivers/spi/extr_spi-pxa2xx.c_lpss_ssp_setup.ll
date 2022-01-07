; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_lpss_ssp_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_lpss_ssp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.lpss_config = type { i64, i64, i64, i64 }

@LPSS_CS_CONTROL_SW_MODE = common dso_local global i32 0, align 4
@LPSS_CS_CONTROL_CS_HIGH = common dso_local global i32 0, align 4
@LPSS_GENERAL_REG_RXTO_HOLDOFF_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*)* @lpss_ssp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpss_ssp_setup(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  %3 = alloca %struct.lpss_config*, align 8
  %4 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %5 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %6 = call %struct.lpss_config* @lpss_get_config(%struct.driver_data* %5)
  store %struct.lpss_config* %6, %struct.lpss_config** %3, align 8
  %7 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %8 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.lpss_config*, %struct.lpss_config** %3, align 8
  %11 = getelementptr inbounds %struct.lpss_config, %struct.lpss_config* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %15 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %14, i32 0, i32 2
  store i64 %13, i64* %15, align 8
  %16 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %17 = load %struct.lpss_config*, %struct.lpss_config** %3, align 8
  %18 = getelementptr inbounds %struct.lpss_config, %struct.lpss_config* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @__lpss_ssp_read_priv(%struct.driver_data* %16, i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @LPSS_CS_CONTROL_SW_MODE, align 4
  %22 = load i32, i32* @LPSS_CS_CONTROL_CS_HIGH, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @LPSS_CS_CONTROL_SW_MODE, align 4
  %28 = load i32, i32* @LPSS_CS_CONTROL_CS_HIGH, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %33 = load %struct.lpss_config*, %struct.lpss_config** %3, align 8
  %34 = getelementptr inbounds %struct.lpss_config, %struct.lpss_config* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @__lpss_ssp_write_priv(%struct.driver_data* %32, i64 %35, i32 %36)
  %38 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %39 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %1
  %45 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %46 = load %struct.lpss_config*, %struct.lpss_config** %3, align 8
  %47 = getelementptr inbounds %struct.lpss_config, %struct.lpss_config* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @__lpss_ssp_write_priv(%struct.driver_data* %45, i64 %48, i32 1)
  %50 = load %struct.lpss_config*, %struct.lpss_config** %3, align 8
  %51 = getelementptr inbounds %struct.lpss_config, %struct.lpss_config* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %44
  %55 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %56 = load %struct.lpss_config*, %struct.lpss_config** %3, align 8
  %57 = getelementptr inbounds %struct.lpss_config, %struct.lpss_config* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @__lpss_ssp_read_priv(%struct.driver_data* %55, i64 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* @LPSS_GENERAL_REG_RXTO_HOLDOFF_DISABLE, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %64 = load %struct.lpss_config*, %struct.lpss_config** %3, align 8
  %65 = getelementptr inbounds %struct.lpss_config, %struct.lpss_config* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @__lpss_ssp_write_priv(%struct.driver_data* %63, i64 %66, i32 %67)
  br label %69

69:                                               ; preds = %54, %44
  br label %70

70:                                               ; preds = %69, %1
  ret void
}

declare dso_local %struct.lpss_config* @lpss_get_config(%struct.driver_data*) #1

declare dso_local i32 @__lpss_ssp_read_priv(%struct.driver_data*, i64) #1

declare dso_local i32 @__lpss_ssp_write_priv(%struct.driver_data*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
