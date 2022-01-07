; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c___spi_queued_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c___spi_queued_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.spi_controller* }
%struct.spi_controller = type { i32, i32, i32, i32, i32, i32 }
%struct.spi_message = type { i32, i32, i64 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_message*, i32)* @__spi_queued_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__spi_queued_transfer(%struct.spi_device* %0, %struct.spi_message* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_message*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_controller*, align 8
  %9 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store %struct.spi_message* %1, %struct.spi_message** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = load %struct.spi_controller*, %struct.spi_controller** %11, align 8
  store %struct.spi_controller* %12, %struct.spi_controller** %8, align 8
  %13 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  %14 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %13, i32 0, i32 0
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  %18 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  %23 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %22, i32 0, i32 0
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i32, i32* @ESHUTDOWN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %58

28:                                               ; preds = %3
  %29 = load %struct.spi_message*, %struct.spi_message** %6, align 8
  %30 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @EINPROGRESS, align 4
  %32 = sub nsw i32 0, %31
  %33 = load %struct.spi_message*, %struct.spi_message** %6, align 8
  %34 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.spi_message*, %struct.spi_message** %6, align 8
  %36 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %35, i32 0, i32 0
  %37 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  %38 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %37, i32 0, i32 4
  %39 = call i32 @list_add_tail(i32* %36, i32* %38)
  %40 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  %41 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %28
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  %49 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %48, i32 0, i32 2
  %50 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  %51 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %50, i32 0, i32 1
  %52 = call i32 @kthread_queue_work(i32* %49, i32* %51)
  br label %53

53:                                               ; preds = %47, %44, %28
  %54 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  %55 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %54, i32 0, i32 0
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %53, %21
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kthread_queue_work(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
