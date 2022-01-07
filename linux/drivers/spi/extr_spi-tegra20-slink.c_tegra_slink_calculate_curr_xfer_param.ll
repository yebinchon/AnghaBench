; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_calculate_curr_xfer_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_calculate_curr_xfer_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.tegra_slink_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_transfer = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.tegra_slink_data*, %struct.spi_transfer*)* @tegra_slink_calculate_curr_xfer_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_slink_calculate_curr_xfer_param(%struct.spi_device* %0, %struct.tegra_slink_data* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.tegra_slink_data*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.tegra_slink_data* %1, %struct.tegra_slink_data** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %16 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 %14, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @DIV_ROUND_UP(i32 %22, i32 8)
  %24 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %25 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 8
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %31, label %38

31:                                               ; preds = %28, %3
  %32 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %33 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %32, i32 0, i32 2
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = udiv i32 32, %34
  %36 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %37 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  br label %43

38:                                               ; preds = %28
  %39 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %40 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %39, i32 0, i32 2
  store i32 0, i32* %40, align 4
  %41 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %42 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %41, i32 0, i32 3
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %31
  %44 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %45 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %46 = call i32 @tegra_slink_get_packed_size(%struct.tegra_slink_data* %44, %struct.spi_transfer* %45)
  %47 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %48 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %50 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %43
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %56 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @min(i32 %54, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %61 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = udiv i32 %59, %62
  %64 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %65 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %10, align 4
  %67 = udiv i32 %66, 4
  store i32 %67, i32* %11, align 4
  br label %86

68:                                               ; preds = %43
  %69 = load i32, i32* %7, align 4
  %70 = sub i32 %69, 1
  %71 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %72 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = udiv i32 %70, %73
  %75 = add i32 %74, 1
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %78 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %79, 4
  %81 = call i32 @min(i32 %76, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %5, align 8
  %84 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %68, %53
  %87 = load i32, i32* %11, align 4
  ret i32 %87
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @tegra_slink_get_packed_size(%struct.tegra_slink_data*, %struct.spi_transfer*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
