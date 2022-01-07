; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_spi_geni_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_spi_geni_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_geni_master = type { i32, i32, i32, i64, i32, %struct.geni_se }
%struct.geni_se = type { i32 }

@GENI_SE_SPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid proto %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_geni_master*)* @spi_geni_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_geni_init(%struct.spi_geni_master* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_geni_master*, align 8
  %4 = alloca %struct.geni_se*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_geni_master* %0, %struct.spi_geni_master** %3, align 8
  %9 = load %struct.spi_geni_master*, %struct.spi_geni_master** %3, align 8
  %10 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %9, i32 0, i32 5
  store %struct.geni_se* %10, %struct.geni_se** %4, align 8
  %11 = load %struct.spi_geni_master*, %struct.spi_geni_master** %3, align 8
  %12 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pm_runtime_get_sync(i32 %13)
  %15 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %16 = call i32 @geni_se_read_proto(%struct.geni_se* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @GENI_SE_SPI, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %1
  %21 = load %struct.spi_geni_master*, %struct.spi_geni_master** %3, align 8
  %22 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.spi_geni_master*, %struct.spi_geni_master** %3, align 8
  %27 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pm_runtime_put(i32 %28)
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %71

32:                                               ; preds = %1
  %33 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %34 = call i64 @geni_se_get_tx_fifo_depth(%struct.geni_se* %33)
  %35 = load %struct.spi_geni_master*, %struct.spi_geni_master** %3, align 8
  %36 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %38 = call i32 @geni_se_get_tx_fifo_width(%struct.geni_se* %37)
  %39 = load %struct.spi_geni_master*, %struct.spi_geni_master** %3, align 8
  %40 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %42 = load %struct.spi_geni_master*, %struct.spi_geni_master** %3, align 8
  %43 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, 2
  %46 = call i32 @geni_se_init(%struct.geni_se* %41, i32 0, i64 %45)
  %47 = load %struct.spi_geni_master*, %struct.spi_geni_master** %3, align 8
  %48 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %50 = call i32 @geni_se_get_qup_hw_version(%struct.geni_se* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @GENI_SE_VERSION_MAJOR(i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @GENI_SE_VERSION_MINOR(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %63

57:                                               ; preds = %32
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.spi_geni_master*, %struct.spi_geni_master** %3, align 8
  %62 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %61, i32 0, i32 1
  store i32 2, i32* %62, align 4
  br label %66

63:                                               ; preds = %57, %32
  %64 = load %struct.spi_geni_master*, %struct.spi_geni_master** %3, align 8
  %65 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.spi_geni_master*, %struct.spi_geni_master** %3, align 8
  %68 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @pm_runtime_put(i32 %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %66, %20
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @geni_se_read_proto(%struct.geni_se*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i64 @geni_se_get_tx_fifo_depth(%struct.geni_se*) #1

declare dso_local i32 @geni_se_get_tx_fifo_width(%struct.geni_se*) #1

declare dso_local i32 @geni_se_init(%struct.geni_se*, i32, i64) #1

declare dso_local i32 @geni_se_get_qup_hw_version(%struct.geni_se*) #1

declare dso_local i32 @GENI_SE_VERSION_MAJOR(i32) #1

declare dso_local i32 @GENI_SE_VERSION_MINOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
