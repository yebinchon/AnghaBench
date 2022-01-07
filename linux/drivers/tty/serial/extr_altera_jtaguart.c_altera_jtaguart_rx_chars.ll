; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_altera_jtaguart.c_altera_jtaguart_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_altera_jtaguart.c_altera_jtaguart_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_jtaguart = type { %struct.uart_port }
%struct.uart_port = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ALTERA_JTAGUART_DATA_REG = common dso_local global i64 0, align 8
@ALTERA_JTAGUART_DATA_RVALID_MSK = common dso_local global i64 0, align 8
@ALTERA_JTAGUART_DATA_DATA_MSK = common dso_local global i64 0, align 8
@TTY_NORMAL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altera_jtaguart*)* @altera_jtaguart_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_jtaguart_rx_chars(%struct.altera_jtaguart* %0) #0 {
  %2 = alloca %struct.altera_jtaguart*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.altera_jtaguart* %0, %struct.altera_jtaguart** %2, align 8
  %7 = load %struct.altera_jtaguart*, %struct.altera_jtaguart** %2, align 8
  %8 = getelementptr inbounds %struct.altera_jtaguart, %struct.altera_jtaguart* %7, i32 0, i32 0
  store %struct.uart_port* %8, %struct.uart_port** %3, align 8
  br label %9

9:                                                ; preds = %35, %34, %1
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ALTERA_JTAGUART_DATA_REG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @readl(i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* @ALTERA_JTAGUART_DATA_RVALID_MSK, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %9
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @ALTERA_JTAGUART_DATA_DATA_MSK, align 8
  %22 = and i64 %20, %21
  %23 = trunc i64 %22 to i8
  store i8 %23, i8* %4, align 1
  %24 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %24, i8* %5, align 1
  %25 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %31 = load i8, i8* %4, align 1
  %32 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %30, i8 zeroext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %9

35:                                               ; preds = %19
  %36 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %37 = load i8, i8* %4, align 1
  %38 = load i8, i8* %5, align 1
  %39 = call i32 @uart_insert_char(%struct.uart_port* %36, i32 0, i32 0, i8 zeroext %37, i8 zeroext %38)
  br label %9

40:                                               ; preds = %9
  %41 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @tty_flip_buffer_push(i32* %47)
  %49 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 0
  %51 = call i32 @spin_lock(i32* %50)
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i8 zeroext) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
