; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_calculate_curr_xfer_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_calculate_curr_xfer_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.tegra_spi_data = type { i32, i32, i32, i32, i32, i32 }
%struct.spi_transfer = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.tegra_spi_data*, %struct.spi_transfer*)* @tegra_spi_calculate_curr_xfer_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_spi_calculate_curr_xfer_param(%struct.spi_device* %0, %struct.tegra_spi_data* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.tegra_spi_data*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.tegra_spi_data* %1, %struct.tegra_spi_data** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %16 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 %14, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @DIV_ROUND_UP(i32 %22, i32 8)
  %24 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %25 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 8
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 32
  br i1 %33, label %34, label %46

34:                                               ; preds = %31, %28, %3
  %35 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %36 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 3
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %41 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %40, i32 0, i32 2
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = udiv i32 32, %42
  %44 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %45 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  br label %51

46:                                               ; preds = %34, %31
  %47 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %48 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %47, i32 0, i32 2
  store i32 0, i32* %48, align 4
  %49 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %50 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %49, i32 0, i32 3
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %39
  %52 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %53 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %59 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @min(i32 %57, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %64 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = udiv i32 %62, %65
  %67 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %68 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %10, align 4
  %70 = add i32 %69, 3
  %71 = udiv i32 %70, 4
  store i32 %71, i32* %11, align 4
  br label %90

72:                                               ; preds = %51
  %73 = load i32, i32* %7, align 4
  %74 = sub i32 %73, 1
  %75 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %76 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = udiv i32 %74, %77
  %79 = add i32 %78, 1
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %82 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %83, 4
  %85 = call i32 @min(i32 %80, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %5, align 8
  %88 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %72, %56
  %91 = load i32, i32* %11, align 4
  ret i32 %91
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
