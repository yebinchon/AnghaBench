; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifx_spi_device = type { i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MR_START = common dso_local global i32 0, align 4
@MR_COMPLETE = common dso_local global i32 0, align 4
@IFX_RESET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Modem reset timeout: (state:%lx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifx_spi_device*)* @ifx_spi_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifx_spi_reset(%struct.ifx_spi_device* %0) #0 {
  %2 = alloca %struct.ifx_spi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ifx_spi_device* %0, %struct.ifx_spi_device** %2, align 8
  %4 = load i32, i32* @MR_START, align 4
  %5 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %6 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %5, i32 0, i32 0
  %7 = call i32 @set_bit(i32 %4, i64* %6)
  %8 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %9 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @gpio_set_value(i32 %11, i32 0)
  %13 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %14 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gpio_set_value(i32 %16, i32 0)
  %18 = call i32 @msleep(i32 25)
  %19 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %20 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @gpio_set_value(i32 %22, i32 1)
  %24 = call i32 @msleep(i32 1)
  %25 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %26 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gpio_set_value(i32 %28, i32 1)
  %30 = call i32 @msleep(i32 1)
  %31 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %32 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @gpio_set_value(i32 %34, i32 0)
  %36 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %37 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MR_COMPLETE, align 4
  %40 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %41 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %40, i32 0, i32 0
  %42 = call i32 @test_bit(i32 %39, i64* %41)
  %43 = load i32, i32* @IFX_RESET_TIMEOUT, align 4
  %44 = call i32 @wait_event_timeout(i32 %38, i32 %42, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %1
  %48 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %49 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %53 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @dev_warn(i32* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %47, %1
  %57 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %2, align 8
  %58 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
