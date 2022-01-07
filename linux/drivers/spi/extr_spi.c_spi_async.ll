; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.spi_controller* }
%struct.spi_controller = type { i32, i64 }
%struct.spi_message = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_async(%struct.spi_device* %0, %struct.spi_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_message*, align 8
  %6 = alloca %struct.spi_controller*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_message* %1, %struct.spi_message** %5, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = load %struct.spi_controller*, %struct.spi_controller** %10, align 8
  store %struct.spi_controller* %11, %struct.spi_controller** %6, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %13 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %14 = call i32 @__spi_validate(%struct.spi_device* %12, %struct.spi_message* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %41

19:                                               ; preds = %2
  %20 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %21 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %20, i32 0, i32 0
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %25 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %35

31:                                               ; preds = %19
  %32 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %33 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %34 = call i32 @__spi_async(%struct.spi_device* %32, %struct.spi_message* %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %37 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %36, i32 0, i32 0
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @__spi_validate(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__spi_async(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
