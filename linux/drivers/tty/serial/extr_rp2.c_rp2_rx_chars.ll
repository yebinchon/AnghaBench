; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rp2.c_rp2_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rp2.c_rp2_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rp2_uart_port = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@RP2_RX_FIFO_COUNT = common dso_local global i64 0, align 8
@RP2_DATA_BYTE = common dso_local global i64 0, align 8
@RP2_DUMMY_READ = common dso_local global i32 0, align 4
@RP2_DATA_BYTE_EXCEPTION_MASK = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@RP2_DATA_BYTE_BREAK_m = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@RP2_DATA_BYTE_ERR_FRAMING_m = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i8 0, align 1
@RP2_DATA_BYTE_ERR_PARITY_m = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i8 0, align 1
@RP2_DATA_BYTE_ERR_OVERRUN_m = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rp2_uart_port*)* @rp2_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rp2_rx_chars(%struct.rp2_uart_port* %0) #0 {
  %2 = alloca %struct.rp2_uart_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tty_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.rp2_uart_port* %0, %struct.rp2_uart_port** %2, align 8
  %8 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %9 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RP2_RX_FIFO_COUNT, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readw(i64 %12)
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %3, align 8
  %15 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %16 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.tty_port* %19, %struct.tty_port** %4, align 8
  br label %20

20:                                               ; preds = %96, %1
  %21 = load i64, i64* %3, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %99

23:                                               ; preds = %20
  %24 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %25 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RP2_DATA_BYTE, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readw(i64 %28)
  %30 = load i32, i32* @RP2_DUMMY_READ, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 255
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %6, align 1
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @RP2_DATA_BYTE_EXCEPTION_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %23
  %44 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %45 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %44, i32 0, i32 0
  %46 = load i8, i8* %6, align 1
  %47 = call i32 @uart_handle_sysrq_char(%struct.TYPE_7__* %45, i8 signext %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %51 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %50, i32 0, i32 0
  %52 = load i32, i32* %5, align 4
  %53 = load i8, i8* %6, align 1
  %54 = load i8, i8* @TTY_NORMAL, align 1
  %55 = call i32 @uart_insert_char(%struct.TYPE_7__* %51, i32 %52, i32 0, i8 signext %53, i8 signext %54)
  br label %56

56:                                               ; preds = %49, %43
  br label %89

57:                                               ; preds = %23
  %58 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %58, i8* %7, align 1
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @RP2_DATA_BYTE_BREAK_m, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i8, i8* @TTY_BREAK, align 1
  store i8 %64, i8* %7, align 1
  br label %81

65:                                               ; preds = %57
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @RP2_DATA_BYTE_ERR_FRAMING_m, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i8, i8* @TTY_FRAME, align 1
  store i8 %71, i8* %7, align 1
  br label %80

72:                                               ; preds = %65
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @RP2_DATA_BYTE_ERR_PARITY_m, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i8, i8* @TTY_PARITY, align 1
  store i8 %78, i8* %7, align 1
  br label %79

79:                                               ; preds = %77, %72
  br label %80

80:                                               ; preds = %79, %70
  br label %81

81:                                               ; preds = %80, %63
  %82 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %83 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %82, i32 0, i32 0
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @RP2_DATA_BYTE_ERR_OVERRUN_m, align 4
  %86 = load i8, i8* %6, align 1
  %87 = load i8, i8* %7, align 1
  %88 = call i32 @uart_insert_char(%struct.TYPE_7__* %83, i32 %84, i32 %85, i8 signext %86, i8 signext %87)
  br label %89

89:                                               ; preds = %81, %56
  %90 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %91 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %89
  %97 = load i64, i64* %3, align 8
  %98 = add nsw i64 %97, -1
  store i64 %98, i64* %3, align 8
  br label %20

99:                                               ; preds = %20
  %100 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %101 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = call i32 @spin_unlock(i32* %102)
  %104 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %105 = call i32 @tty_flip_buffer_push(%struct.tty_port* %104)
  %106 = load %struct.rp2_uart_port*, %struct.rp2_uart_port** %2, align 8
  %107 = getelementptr inbounds %struct.rp2_uart_port, %struct.rp2_uart_port* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = call i32 @spin_lock(i32* %108)
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @uart_handle_sysrq_char(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_7__*, i32, i32, i8 signext, i8 signext) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
