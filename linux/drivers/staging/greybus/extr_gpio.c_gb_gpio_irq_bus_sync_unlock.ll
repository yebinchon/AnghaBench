; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_irq_bus_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_irq_bus_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.gpio_chip = type { i32 }
%struct.gb_gpio_controller = type { i32, %struct.gb_gpio_line* }
%struct.gb_gpio_line = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @gb_gpio_irq_bus_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_gpio_irq_bus_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.gb_gpio_controller*, align 8
  %5 = alloca %struct.gb_gpio_line*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.gpio_chip* @irq_data_to_gpio_chip(%struct.irq_data* %6)
  store %struct.gpio_chip* %7, %struct.gpio_chip** %3, align 8
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.gb_gpio_controller* @gpio_chip_to_gb_gpio_controller(%struct.gpio_chip* %8)
  store %struct.gb_gpio_controller* %9, %struct.gb_gpio_controller** %4, align 8
  %10 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %11 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %10, i32 0, i32 1
  %12 = load %struct.gb_gpio_line*, %struct.gb_gpio_line** %11, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.gb_gpio_line, %struct.gb_gpio_line* %12, i64 %15
  store %struct.gb_gpio_line* %16, %struct.gb_gpio_line** %5, align 8
  %17 = load %struct.gb_gpio_line*, %struct.gb_gpio_line** %5, align 8
  %18 = getelementptr inbounds %struct.gb_gpio_line, %struct.gb_gpio_line* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %23 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %24 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.gb_gpio_line*, %struct.gb_gpio_line** %5, align 8
  %27 = getelementptr inbounds %struct.gb_gpio_line, %struct.gb_gpio_line* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @_gb_gpio_irq_set_type(%struct.gb_gpio_controller* %22, i64 %25, i32 %28)
  %30 = load %struct.gb_gpio_line*, %struct.gb_gpio_line** %5, align 8
  %31 = getelementptr inbounds %struct.gb_gpio_line, %struct.gb_gpio_line* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %21, %1
  %33 = load %struct.gb_gpio_line*, %struct.gb_gpio_line** %5, align 8
  %34 = getelementptr inbounds %struct.gb_gpio_line, %struct.gb_gpio_line* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = load %struct.gb_gpio_line*, %struct.gb_gpio_line** %5, align 8
  %39 = getelementptr inbounds %struct.gb_gpio_line, %struct.gb_gpio_line* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %44 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %45 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @_gb_gpio_irq_mask(%struct.gb_gpio_controller* %43, i64 %46)
  br label %54

48:                                               ; preds = %37
  %49 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %50 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %51 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @_gb_gpio_irq_unmask(%struct.gb_gpio_controller* %49, i64 %52)
  br label %54

54:                                               ; preds = %48, %42
  %55 = load %struct.gb_gpio_line*, %struct.gb_gpio_line** %5, align 8
  %56 = getelementptr inbounds %struct.gb_gpio_line, %struct.gb_gpio_line* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %32
  %58 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %59 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_to_gpio_chip(%struct.irq_data*) #1

declare dso_local %struct.gb_gpio_controller* @gpio_chip_to_gb_gpio_controller(%struct.gpio_chip*) #1

declare dso_local i32 @_gb_gpio_irq_set_type(%struct.gb_gpio_controller*, i64, i32) #1

declare dso_local i32 @_gb_gpio_irq_mask(%struct.gb_gpio_controller*, i64) #1

declare dso_local i32 @_gb_gpio_irq_unmask(%struct.gb_gpio_controller*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
