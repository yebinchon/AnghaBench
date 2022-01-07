; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bitbang.c_spi_bitbang_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bitbang.c_spi_bitbang_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.spi_bitbang_cs* }
%struct.spi_bitbang_cs = type { i32, i32 (%struct.spi_device*, i32, i32, %struct.spi_transfer*, i32)*, i32 }
%struct.spi_transfer = type { i64 }
%struct.spi_bitbang = type { i32 (%struct.spi_device*, i32)* }

@SPI_3WIRE = common dso_local global i32 0, align 4
@SPI_MASTER_NO_RX = common dso_local global i32 0, align 4
@SPI_MASTER_NO_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @spi_bitbang_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_bitbang_bufs(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.spi_bitbang_cs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_bitbang*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 2
  %13 = load %struct.spi_bitbang_cs*, %struct.spi_bitbang_cs** %12, align 8
  store %struct.spi_bitbang_cs* %13, %struct.spi_bitbang_cs** %6, align 8
  %14 = load %struct.spi_bitbang_cs*, %struct.spi_bitbang_cs** %6, align 8
  %15 = getelementptr inbounds %struct.spi_bitbang_cs, %struct.spi_bitbang_cs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.spi_bitbang* @spi_master_get_devdata(i32 %19)
  store %struct.spi_bitbang* %20, %struct.spi_bitbang** %8, align 8
  %21 = load %struct.spi_bitbang*, %struct.spi_bitbang** %8, align 8
  %22 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %21, i32 0, i32 0
  %23 = load i32 (%struct.spi_device*, i32)*, i32 (%struct.spi_device*, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.spi_device*, i32)* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %2
  %26 = load %struct.spi_bitbang*, %struct.spi_bitbang** %8, align 8
  %27 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %26, i32 0, i32 0
  %28 = load i32 (%struct.spi_device*, i32)*, i32 (%struct.spi_device*, i32)** %27, align 8
  %29 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 %28(%struct.spi_device* %29, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %83

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SPI_3WIRE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %43
  %51 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %52 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @SPI_MASTER_NO_RX, align 4
  br label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @SPI_MASTER_NO_TX, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %10, align 4
  %61 = load %struct.spi_bitbang_cs*, %struct.spi_bitbang_cs** %6, align 8
  %62 = getelementptr inbounds %struct.spi_bitbang_cs, %struct.spi_bitbang_cs* %61, i32 0, i32 1
  %63 = load i32 (%struct.spi_device*, i32, i32, %struct.spi_transfer*, i32)*, i32 (%struct.spi_device*, i32, i32, %struct.spi_transfer*, i32)** %62, align 8
  %64 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %65 = load %struct.spi_bitbang_cs*, %struct.spi_bitbang_cs** %6, align 8
  %66 = getelementptr inbounds %struct.spi_bitbang_cs, %struct.spi_bitbang_cs* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 %63(%struct.spi_device* %64, i32 %67, i32 %68, %struct.spi_transfer* %69, i32 %70)
  store i32 %71, i32* %3, align 4
  br label %83

72:                                               ; preds = %43
  %73 = load %struct.spi_bitbang_cs*, %struct.spi_bitbang_cs** %6, align 8
  %74 = getelementptr inbounds %struct.spi_bitbang_cs, %struct.spi_bitbang_cs* %73, i32 0, i32 1
  %75 = load i32 (%struct.spi_device*, i32, i32, %struct.spi_transfer*, i32)*, i32 (%struct.spi_device*, i32, i32, %struct.spi_transfer*, i32)** %74, align 8
  %76 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %77 = load %struct.spi_bitbang_cs*, %struct.spi_bitbang_cs** %6, align 8
  %78 = getelementptr inbounds %struct.spi_bitbang_cs, %struct.spi_bitbang_cs* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %82 = call i32 %75(%struct.spi_device* %76, i32 %79, i32 %80, %struct.spi_transfer* %81, i32 0)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %72, %59, %40
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.spi_bitbang* @spi_master_get_devdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
