; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_spi_geni_set_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_spi_geni_set_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_geni_master = type { i32, i32, i32, %struct.geni_se }
%struct.geni_se = type { i32 }
%struct.spi_master = type { i32 }

@SPI_CS_HIGH = common dso_local global i32 0, align 4
@CMD_CS = common dso_local global i32 0, align 4
@SPI_CS_ASSERT = common dso_local global i32 0, align 4
@SPI_CS_DEASSERT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @spi_geni_set_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_geni_set_cs(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_geni_master*, align 8
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca %struct.geni_se*, align 8
  %8 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.spi_geni_master* @spi_master_get_devdata(i32 %11)
  store %struct.spi_geni_master* %12, %struct.spi_geni_master** %5, align 8
  %13 = load %struct.spi_geni_master*, %struct.spi_geni_master** %5, align 8
  %14 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.spi_master* @dev_get_drvdata(i32 %15)
  store %struct.spi_master* %16, %struct.spi_master** %6, align 8
  %17 = load %struct.spi_geni_master*, %struct.spi_geni_master** %5, align 8
  %18 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %17, i32 0, i32 3
  store %struct.geni_se* %18, %struct.geni_se** %7, align 8
  %19 = load %struct.spi_geni_master*, %struct.spi_geni_master** %5, align 8
  %20 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %19, i32 0, i32 1
  %21 = call i32 @reinit_completion(i32* %20)
  %22 = load %struct.spi_geni_master*, %struct.spi_geni_master** %5, align 8
  %23 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pm_runtime_get_sync(i32 %24)
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SPI_CS_HIGH, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %32, %2
  %38 = load i32, i32* @CMD_CS, align 4
  %39 = load %struct.spi_geni_master*, %struct.spi_geni_master** %5, align 8
  %40 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.geni_se*, %struct.geni_se** %7, align 8
  %45 = load i32, i32* @SPI_CS_ASSERT, align 4
  %46 = call i32 @geni_se_setup_m_cmd(%struct.geni_se* %44, i32 %45, i32 0)
  br label %51

47:                                               ; preds = %37
  %48 = load %struct.geni_se*, %struct.geni_se** %7, align 8
  %49 = load i32, i32* @SPI_CS_DEASSERT, align 4
  %50 = call i32 @geni_se_setup_m_cmd(%struct.geni_se* %48, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.spi_geni_master*, %struct.spi_geni_master** %5, align 8
  %53 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %52, i32 0, i32 1
  %54 = load i32, i32* @HZ, align 4
  %55 = call i64 @wait_for_completion_timeout(i32* %53, i32 %54)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %60 = call i32 @handle_fifo_timeout(%struct.spi_master* %59, i32* null)
  br label %61

61:                                               ; preds = %58, %51
  %62 = load %struct.spi_geni_master*, %struct.spi_geni_master** %5, align 8
  %63 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pm_runtime_put(i32 %64)
  ret void
}

declare dso_local %struct.spi_geni_master* @spi_master_get_devdata(i32) #1

declare dso_local %struct.spi_master* @dev_get_drvdata(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @geni_se_setup_m_cmd(%struct.geni_se*, i32, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @handle_fifo_timeout(%struct.spi_master*, i32*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
