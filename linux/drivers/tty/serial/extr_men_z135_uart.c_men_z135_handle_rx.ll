; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_handle_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_handle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.men_z135_port = type { %struct.TYPE_5__*, i32, %struct.uart_port }
%struct.TYPE_5__ = type { i32 }
%struct.uart_port = type { %struct.TYPE_6__, i64, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@MEN_Z135_FIFO_WATERMARK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Not enough room in flip buffer, truncating to %d\0A\00", align 1
@MEN_Z135_RX_RAM = common dso_local global i64 0, align 8
@MEN_Z135_RX_CTRL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Only copied %d instead of %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.men_z135_port*)* @men_z135_handle_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @men_z135_handle_rx(%struct.men_z135_port* %0) #0 {
  %2 = alloca %struct.men_z135_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.tty_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.men_z135_port* %0, %struct.men_z135_port** %2, align 8
  %8 = load %struct.men_z135_port*, %struct.men_z135_port** %2, align 8
  %9 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %8, i32 0, i32 2
  store %struct.uart_port* %9, %struct.uart_port** %3, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.tty_port* %13, %struct.tty_port** %4, align 8
  %14 = load %struct.men_z135_port*, %struct.men_z135_port** %2, align 8
  %15 = call i32 @get_rx_fifo_content(%struct.men_z135_port* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %88

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MEN_Z135_FIFO_WATERMARK, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @MEN_Z135_FIFO_WATERMARK, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @tty_buffer_request_room(%struct.tty_port* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.men_z135_port*, %struct.men_z135_port** %2, align 8
  %34 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %36, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %32, %25
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %88

43:                                               ; preds = %39
  %44 = load %struct.men_z135_port*, %struct.men_z135_port** %2, align 8
  %45 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MEN_Z135_RX_RAM, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @memcpy_fromio(i32 %46, i64 %51, i32 %52)
  %54 = call i32 (...) @mb()
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %57 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MEN_Z135_RX_CTRL, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @iowrite32(i32 %55, i64 %60)
  %62 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %63 = load %struct.men_z135_port*, %struct.men_z135_port** %2, align 8
  %64 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @tty_insert_flip_string(%struct.tty_port* %62, i32 %65, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %43
  %72 = load %struct.men_z135_port*, %struct.men_z135_port** %2, align 8
  %73 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %71, %43
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, %80
  store i32 %85, i32* %83, align 8
  %86 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %87 = call i32 @tty_flip_buffer_push(%struct.tty_port* %86)
  br label %88

88:                                               ; preds = %79, %42, %18
  ret void
}

declare dso_local i32 @get_rx_fifo_content(%struct.men_z135_port*) #1

declare dso_local i32 @tty_buffer_request_room(%struct.tty_port*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, ...) #1

declare dso_local i32 @memcpy_fromio(i32, i64, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_port*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
