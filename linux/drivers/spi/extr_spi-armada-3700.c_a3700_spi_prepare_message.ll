; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_prepare_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_prepare_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_message = type { %struct.spi_device* }
%struct.spi_device = type { i32, i32 }
%struct.a3700_spi = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"failed to enable clk with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_message*)* @a3700_spi_prepare_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a3700_spi_prepare_message(%struct.spi_master* %0, %struct.spi_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_message*, align 8
  %6 = alloca %struct.a3700_spi*, align 8
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_message* %1, %struct.spi_message** %5, align 8
  %9 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %10 = call %struct.a3700_spi* @spi_master_get_devdata(%struct.spi_master* %9)
  store %struct.a3700_spi* %10, %struct.a3700_spi** %6, align 8
  %11 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %12 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %11, i32 0, i32 0
  %13 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  store %struct.spi_device* %13, %struct.spi_device** %7, align 8
  %14 = load %struct.a3700_spi*, %struct.a3700_spi** %6, align 8
  %15 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_enable(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 1
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %39

26:                                               ; preds = %2
  %27 = load %struct.a3700_spi*, %struct.a3700_spi** %6, align 8
  %28 = call i32 @a3700_spi_fifo_flush(%struct.a3700_spi* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %39

33:                                               ; preds = %26
  %34 = load %struct.a3700_spi*, %struct.a3700_spi** %6, align 8
  %35 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @a3700_spi_mode_set(%struct.a3700_spi* %34, i32 %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %33, %31, %20
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.a3700_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @a3700_spi_fifo_flush(%struct.a3700_spi*) #1

declare dso_local i32 @a3700_spi_mode_set(%struct.a3700_spi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
