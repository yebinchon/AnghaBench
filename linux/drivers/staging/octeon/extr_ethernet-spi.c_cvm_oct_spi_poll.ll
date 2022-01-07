; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-spi.c_cvm_oct_spi_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-spi.c_cvm_oct_spi_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.octeon_ethernet = type { i32 }

@cvm_oct_spi_poll.spi4000_port = internal global i32 0, align 4
@need_retrain = common dso_local global i64* null, align 8
@CVMX_SPI_MODE_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cvm_oct_spi_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_oct_spi_poll(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.octeon_ethernet*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %5)
  store %struct.octeon_ethernet* %6, %struct.octeon_ethernet** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %56, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %59

10:                                               ; preds = %7
  %11 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %12 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %14, 16
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %10
  %18 = load i64*, i64** @need_retrain, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @CVMX_SPI_MODE_DUPLEX, align 4
  %27 = call i64 @cvmx_spi_restart_interface(i32 %25, i32 %26, i32 10)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i64*, i64** @need_retrain, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @cvm_oct_spi_enable_error_reporting(i32 %34)
  br label %36

36:                                               ; preds = %29, %24
  br label %37

37:                                               ; preds = %36, %17, %10
  %38 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %39 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @cvm_oct_spi_poll.spi4000_port, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %46 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cvmx_spi4000_check_speed(i32 %44, i32 %47)
  %49 = load i32, i32* @cvm_oct_spi_poll.spi4000_port, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* @cvm_oct_spi_poll.spi4000_port, align 4
  %51 = load i32, i32* @cvm_oct_spi_poll.spi4000_port, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 10, i32* @cvm_oct_spi_poll.spi4000_port, align 4
  br label %54

54:                                               ; preds = %53, %43
  br label %55

55:                                               ; preds = %54, %37
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %7

59:                                               ; preds = %7
  ret void
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @cvmx_spi_restart_interface(i32, i32, i32) #1

declare dso_local i32 @cvm_oct_spi_enable_error_reporting(i32) #1

declare dso_local i32 @cvmx_spi4000_check_speed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
