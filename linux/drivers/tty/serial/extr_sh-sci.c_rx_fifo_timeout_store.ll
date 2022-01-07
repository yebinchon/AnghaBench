; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_rx_fifo_timeout_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_rx_fifo_timeout_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.uart_port = type { i64 }
%struct.sci_port = type { i64, i64, i32 }

@PORT_HSCIF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@HSSCR_TOT_SHIFT = common dso_local global i64 0, align 8
@rx_fifo_timer_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @rx_fifo_timeout_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_fifo_timeout_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.uart_port*, align 8
  %11 = alloca %struct.sci_port*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.uart_port* @dev_get_drvdata(%struct.device* %14)
  store %struct.uart_port* %15, %struct.uart_port** %10, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %17 = call %struct.sci_port* @to_sci_port(%struct.uart_port* %16)
  store %struct.sci_port* %17, %struct.sci_port** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtol(i8* %18, i32 0, i64* %13)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %62

24:                                               ; preds = %4
  %25 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PORT_HSCIF, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load i64, i64* %13, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %13, align 8
  %35 = icmp sgt i64 %34, 3
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %62

39:                                               ; preds = %33
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* @HSSCR_TOT_SHIFT, align 8
  %42 = shl i64 %40, %41
  %43 = load %struct.sci_port*, %struct.sci_port** %11, align 8
  %44 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %59

45:                                               ; preds = %24
  %46 = load i64, i64* %13, align 8
  %47 = load %struct.sci_port*, %struct.sci_port** %11, align 8
  %48 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %50 = call i32 @scif_set_rtrg(%struct.uart_port* %49, i32 1)
  %51 = load i64, i64* %13, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.sci_port*, %struct.sci_port** %11, align 8
  %55 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %54, i32 0, i32 2
  %56 = load i32, i32* @rx_fifo_timer_fn, align 4
  %57 = call i32 @timer_setup(i32* %55, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %53, %45
  br label %59

59:                                               ; preds = %58, %39
  %60 = load i64, i64* %9, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %36, %22
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.uart_port* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sci_port* @to_sci_port(%struct.uart_port*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @scif_set_rtrg(%struct.uart_port*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
