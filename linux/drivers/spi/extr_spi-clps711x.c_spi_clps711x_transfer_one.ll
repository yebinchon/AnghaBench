; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-clps711x.c_spi_clps711x_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-clps711x.c_spi_clps711x_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64, i64, i32, i32, i64 }
%struct.spi_clps711x_data = type { i32*, i32*, i32, i32, i32, i32 }

@SYNCIO_TXFRMEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @spi_clps711x_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_clps711x_transfer_one(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.spi_clps711x_data*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %9 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %10 = call %struct.spi_clps711x_data* @spi_master_get_devdata(%struct.spi_master* %9)
  store %struct.spi_clps711x_data* %10, %struct.spi_clps711x_data** %7, align 8
  %11 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %7, align 8
  %12 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %24

19:                                               ; preds = %3
  %20 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  br label %24

24:                                               ; preds = %19, %18
  %25 = phi i64 [ %16, %18 ], [ %23, %19 ]
  %26 = trunc i64 %25 to i32
  %27 = call i32 @clk_set_rate(i32 %13, i32 %26)
  %28 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %7, align 8
  %32 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %7, align 8
  %37 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %39 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %7, align 8
  %43 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %42, i32 0, i32 0
  store i32* %41, i32** %43, align 8
  %44 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %45 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %7, align 8
  %49 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  %50 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %7, align 8
  %51 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %24
  %55 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %7, align 8
  %56 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %56, align 8
  %59 = load i32, i32* %57, align 4
  br label %61

60:                                               ; preds = %24
  br label %61

61:                                               ; preds = %60, %54
  %62 = phi i32 [ %59, %54 ], [ 0, %60 ]
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %7, align 8
  %65 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @SYNCIO_FRMLEN(i32 %66)
  %68 = or i32 %63, %67
  %69 = load i32, i32* @SYNCIO_TXFRMEN, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.spi_clps711x_data*, %struct.spi_clps711x_data** %7, align 8
  %72 = getelementptr inbounds %struct.spi_clps711x_data, %struct.spi_clps711x_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @writel(i32 %70, i32 %73)
  ret i32 1
}

declare dso_local %struct.spi_clps711x_data* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @SYNCIO_FRMLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
