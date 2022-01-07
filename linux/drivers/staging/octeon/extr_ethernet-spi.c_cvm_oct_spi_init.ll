; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-spi.c_cvm_oct_spi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-spi.c_cvm_oct_spi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.octeon_ethernet = type { i32, i32 }

@number_spi_ports = common dso_local global i64 0, align 8
@OCTEON_IRQ_RML = common dso_local global i32 0, align 4
@cvm_oct_spi_rml_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"SPI\00", align 1
@cvm_oct_spi_poll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_spi_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.octeon_ethernet*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %6)
  store %struct.octeon_ethernet* %7, %struct.octeon_ethernet** %5, align 8
  %8 = load i64, i64* @number_spi_ports, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32, i32* @OCTEON_IRQ_RML, align 4
  %12 = load i32, i32* @cvm_oct_spi_rml_interrupt, align 4
  %13 = load i32, i32* @IRQF_SHARED, align 4
  %14 = call i32 @request_irq(i32 %11, i32 %12, i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* @number_spi_ports)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %44

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i64, i64* @number_spi_ports, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* @number_spi_ports, align 8
  %23 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %24 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %29 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 16
  br i1 %31, label %32, label %41

32:                                               ; preds = %27, %20
  %33 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %34 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @INTERFACE(i32 %35)
  %37 = call i32 @cvm_oct_spi_enable_error_reporting(i32 %36)
  %38 = load i32, i32* @cvm_oct_spi_poll, align 4
  %39 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %40 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %32, %27
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @cvm_oct_common_init(%struct.net_device* %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %17
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i64*) #1

declare dso_local i32 @cvm_oct_spi_enable_error_reporting(i32) #1

declare dso_local i32 @INTERFACE(i32) #1

declare dso_local i32 @cvm_oct_common_init(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
