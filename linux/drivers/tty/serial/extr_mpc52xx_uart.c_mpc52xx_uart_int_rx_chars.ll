; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mpc52xx_uart.c_mpc52xx_uart_int_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mpc52xx_uart.c_mpc52xx_uart_int_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.uart_port*)*, i8 (%struct.uart_port*)*, i16 (%struct.uart_port*)*, i32 (%struct.uart_port*, i32)* }
%struct.uart_port = type { i32, %struct.TYPE_5__, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@psc_ops = common dso_local global %struct.TYPE_6__* null, align 8
@TTY_NORMAL = common dso_local global i8 0, align 1
@MPC52xx_PSC_SR_PE = common dso_local global i16 0, align 2
@MPC52xx_PSC_SR_FE = common dso_local global i16 0, align 2
@MPC52xx_PSC_SR_RB = common dso_local global i16 0, align 2
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@MPC52xx_PSC_RST_ERR_STAT = common dso_local global i32 0, align 4
@MPC52xx_PSC_SR_OE = common dso_local global i16 0, align 2
@TTY_OVERRUN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @mpc52xx_uart_int_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_uart_int_rx_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.tty_port* %10, %struct.tty_port** %3, align 8
  br label %11

11:                                               ; preds = %120, %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @psc_ops, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %13, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = call i32 %14(%struct.uart_port* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %121

18:                                               ; preds = %11
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @psc_ops, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i8 (%struct.uart_port*)*, i8 (%struct.uart_port*)** %20, align 8
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = call zeroext i8 %21(%struct.uart_port* %22)
  store i8 %23, i8* %4, align 1
  %24 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %24, i8* %5, align 1
  %25 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @psc_ops, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i16 (%struct.uart_port*)*, i16 (%struct.uart_port*)** %31, align 8
  %33 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %34 = call zeroext i16 %32(%struct.uart_port* %33)
  store i16 %34, i16* %6, align 2
  %35 = load i16, i16* %6, align 2
  %36 = zext i16 %35 to i32
  %37 = load i16, i16* @MPC52xx_PSC_SR_PE, align 2
  %38 = zext i16 %37 to i32
  %39 = load i16, i16* @MPC52xx_PSC_SR_FE, align 2
  %40 = zext i16 %39 to i32
  %41 = or i32 %38, %40
  %42 = load i16, i16* @MPC52xx_PSC_SR_RB, align 2
  %43 = zext i16 %42 to i32
  %44 = or i32 %41, %43
  %45 = and i32 %36, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %100

47:                                               ; preds = %18
  %48 = load i16, i16* %6, align 2
  %49 = zext i16 %48 to i32
  %50 = load i16, i16* @MPC52xx_PSC_SR_RB, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load i8, i8* @TTY_BREAK, align 1
  store i8 %55, i8* %5, align 1
  %56 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %57 = call i32 @uart_handle_break(%struct.uart_port* %56)
  %58 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %59 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %93

63:                                               ; preds = %47
  %64 = load i16, i16* %6, align 2
  %65 = zext i16 %64 to i32
  %66 = load i16, i16* @MPC52xx_PSC_SR_PE, align 2
  %67 = zext i16 %66 to i32
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load i8, i8* @TTY_PARITY, align 1
  store i8 %71, i8* %5, align 1
  %72 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %73 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %92

77:                                               ; preds = %63
  %78 = load i16, i16* %6, align 2
  %79 = zext i16 %78 to i32
  %80 = load i16, i16* @MPC52xx_PSC_SR_FE, align 2
  %81 = zext i16 %80 to i32
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load i8, i8* @TTY_FRAME, align 1
  store i8 %85, i8* %5, align 1
  %86 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %87 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %84, %77
  br label %92

92:                                               ; preds = %91, %70
  br label %93

93:                                               ; preds = %92, %54
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** @psc_ops, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 3
  %96 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %95, align 8
  %97 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %98 = load i32, i32* @MPC52xx_PSC_RST_ERR_STAT, align 4
  %99 = call i32 %96(%struct.uart_port* %97, i32 %98)
  br label %100

100:                                              ; preds = %93, %18
  %101 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %102 = load i8, i8* %4, align 1
  %103 = load i8, i8* %5, align 1
  %104 = call i32 @tty_insert_flip_char(%struct.tty_port* %101, i8 zeroext %102, i8 zeroext %103)
  %105 = load i16, i16* %6, align 2
  %106 = zext i16 %105 to i32
  %107 = load i16, i16* @MPC52xx_PSC_SR_OE, align 2
  %108 = zext i16 %107 to i32
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %100
  %112 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %113 = load i8, i8* @TTY_OVERRUN, align 1
  %114 = call i32 @tty_insert_flip_char(%struct.tty_port* %112, i8 zeroext 0, i8 zeroext %113)
  %115 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %116 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %111, %100
  br label %11

121:                                              ; preds = %11
  %122 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %123 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %122, i32 0, i32 0
  %124 = call i32 @spin_unlock(i32* %123)
  %125 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %126 = call i32 @tty_flip_buffer_push(%struct.tty_port* %125)
  %127 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %128 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %127, i32 0, i32 0
  %129 = call i32 @spin_lock(i32* %128)
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @psc_ops, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %131, align 8
  %133 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %134 = call i32 %132(%struct.uart_port* %133)
  ret i32 %134
}

declare dso_local i32 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
