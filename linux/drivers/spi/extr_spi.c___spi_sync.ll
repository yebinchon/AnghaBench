; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c___spi_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c___spi_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.spi_controller* }
%struct.spi_controller = type { i64, i32, i32 }
%struct.spi_message = type { i32, i32*, %struct.spi_device*, i32 }

@done = common dso_local global i32 0, align 4
@spi_complete = common dso_local global i32 0, align 4
@spi_sync = common dso_local global i32 0, align 4
@spi_queued_transfer = common dso_local global i64 0, align 8
@spi_sync_immediate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_message*)* @__spi_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__spi_sync(%struct.spi_device* %0, %struct.spi_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_message*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_controller*, align 8
  %8 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_message* %1, %struct.spi_message** %5, align 8
  %9 = load i32, i32* @done, align 4
  %10 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %9)
  %11 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 1
  %13 = load %struct.spi_controller*, %struct.spi_controller** %12, align 8
  store %struct.spi_controller* %13, %struct.spi_controller** %7, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %15 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %16 = call i32 @__spi_validate(%struct.spi_device* %14, %struct.spi_message* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %90

21:                                               ; preds = %2
  %22 = load i32, i32* @spi_complete, align 4
  %23 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %24 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %26 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %25, i32 0, i32 1
  store i32* @done, i32** %26, align 8
  %27 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %28 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %29 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %28, i32 0, i32 2
  store %struct.spi_device* %27, %struct.spi_device** %29, align 8
  %30 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %31 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %30, i32 0, i32 1
  %32 = load i32, i32* @spi_sync, align 4
  %33 = call i32 @SPI_STATISTICS_INCREMENT_FIELD(i32* %31, i32 %32)
  %34 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 0
  %36 = load i32, i32* @spi_sync, align 4
  %37 = call i32 @SPI_STATISTICS_INCREMENT_FIELD(i32* %35, i32 %36)
  %38 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %39 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @spi_queued_transfer, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %21
  %44 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %45 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %44, i32 0, i32 2
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %49 = call i32 @trace_spi_message_submit(%struct.spi_message* %48)
  %50 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %51 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %52 = call i32 @__spi_queued_transfer(%struct.spi_device* %50, %struct.spi_message* %51, i32 0)
  store i32 %52, i32* %6, align 4
  %53 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %54 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %53, i32 0, i32 2
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  br label %61

57:                                               ; preds = %21
  %58 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %59 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %60 = call i32 @spi_async_locked(%struct.spi_device* %58, %struct.spi_message* %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %43
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %61
  %65 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %66 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @spi_queued_transfer, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %72 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %71, i32 0, i32 1
  %73 = load i32, i32* @spi_sync_immediate, align 4
  %74 = call i32 @SPI_STATISTICS_INCREMENT_FIELD(i32* %72, i32 %73)
  %75 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %76 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %75, i32 0, i32 0
  %77 = load i32, i32* @spi_sync_immediate, align 4
  %78 = call i32 @SPI_STATISTICS_INCREMENT_FIELD(i32* %76, i32 %77)
  %79 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %80 = call i32 @__spi_pump_messages(%struct.spi_controller* %79, i32 0)
  br label %81

81:                                               ; preds = %70, %64
  %82 = call i32 @wait_for_completion(i32* @done)
  %83 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %84 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %81, %61
  %87 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %88 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %87, i32 0, i32 1
  store i32* null, i32** %88, align 8
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %19
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @__spi_validate(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i32 @SPI_STATISTICS_INCREMENT_FIELD(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @trace_spi_message_submit(%struct.spi_message*) #1

declare dso_local i32 @__spi_queued_transfer(%struct.spi_device*, %struct.spi_message*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spi_async_locked(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i32 @__spi_pump_messages(%struct.spi_controller*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
