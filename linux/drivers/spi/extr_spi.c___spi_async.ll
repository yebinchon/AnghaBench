; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c___spi_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c___spi_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.spi_controller* }
%struct.spi_controller = type { {}*, i32 }
%struct.spi_message = type { %struct.spi_device* }

@ENOTSUPP = common dso_local global i32 0, align 4
@spi_async = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_message*)* @__spi_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__spi_async(%struct.spi_device* %0, %struct.spi_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_message*, align 8
  %6 = alloca %struct.spi_controller*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_message* %1, %struct.spi_message** %5, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 1
  %9 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  store %struct.spi_controller* %9, %struct.spi_controller** %6, align 8
  %10 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %11 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.spi_device*, %struct.spi_message*)**
  %13 = load i32 (%struct.spi_device*, %struct.spi_message*)*, i32 (%struct.spi_device*, %struct.spi_message*)** %12, align 8
  %14 = icmp ne i32 (%struct.spi_device*, %struct.spi_message*)* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %20 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %21 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %20, i32 0, i32 0
  store %struct.spi_device* %19, %struct.spi_device** %21, align 8
  %22 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %23 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %22, i32 0, i32 1
  %24 = load i32, i32* @spi_async, align 4
  %25 = call i32 @SPI_STATISTICS_INCREMENT_FIELD(i32* %23, i32 %24)
  %26 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = load i32, i32* @spi_async, align 4
  %29 = call i32 @SPI_STATISTICS_INCREMENT_FIELD(i32* %27, i32 %28)
  %30 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %31 = call i32 @trace_spi_message_submit(%struct.spi_message* %30)
  %32 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %33 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32 (%struct.spi_device*, %struct.spi_message*)**
  %35 = load i32 (%struct.spi_device*, %struct.spi_message*)*, i32 (%struct.spi_device*, %struct.spi_message*)** %34, align 8
  %36 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %37 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %38 = call i32 %35(%struct.spi_device* %36, %struct.spi_message* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %18, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @SPI_STATISTICS_INCREMENT_FIELD(i32*, i32) #1

declare dso_local i32 @trace_spi_message_submit(%struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
