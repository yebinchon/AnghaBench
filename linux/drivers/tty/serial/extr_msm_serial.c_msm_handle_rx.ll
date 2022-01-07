; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_handle_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_handle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@UART_SR = common dso_local global i32 0, align 4
@UART_SR_OVERRUN = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i8 0, align 1
@UART_CR_CMD_RESET_ERR = common dso_local global i32 0, align 4
@UART_CR = common dso_local global i32 0, align 4
@UART_SR_RX_READY = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@UART_RF = common dso_local global i32 0, align 4
@UART_SR_RX_BREAK = common dso_local global i32 0, align 4
@UART_SR_PAR_FRAME_ERR = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @msm_handle_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_handle_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.tty_port* %11, %struct.tty_port** %3, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = load i32, i32* @UART_SR, align 4
  %14 = call i32 @msm_read(%struct.uart_port* %12, i32 %13)
  %15 = load i32, i32* @UART_SR_OVERRUN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %25 = load i8, i8* @TTY_OVERRUN, align 1
  %26 = call i32 @tty_insert_flip_char(%struct.tty_port* %24, i32 0, i8 signext %25)
  %27 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %28 = load i32, i32* @UART_CR_CMD_RESET_ERR, align 4
  %29 = load i32, i32* @UART_CR, align 4
  %30 = call i32 @msm_write(%struct.uart_port* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %18, %1
  br label %32

32:                                               ; preds = %114, %57, %31
  %33 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %34 = load i32, i32* @UART_SR, align 4
  %35 = call i32 @msm_read(%struct.uart_port* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @UART_SR_RX_READY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %115

39:                                               ; preds = %32
  %40 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %40, i8* %6, align 1
  %41 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %42 = load i32, i32* @UART_RF, align 4
  %43 = call i32 @msm_read(%struct.uart_port* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @UART_SR_RX_BREAK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %39
  %49 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %55 = call i64 @uart_handle_break(%struct.uart_port* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %32

58:                                               ; preds = %48
  br label %77

59:                                               ; preds = %39
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @UART_SR_PAR_FRAME_ERR, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %76

70:                                               ; preds = %59
  %71 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %72 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %64
  br label %77

77:                                               ; preds = %76, %58
  %78 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %79 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @UART_SR_RX_BREAK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i8, i8* @TTY_BREAK, align 1
  store i8 %88, i8* %6, align 1
  br label %97

89:                                               ; preds = %77
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @UART_SR_PAR_FRAME_ERR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i8, i8* @TTY_FRAME, align 1
  store i8 %95, i8* %6, align 1
  br label %96

96:                                               ; preds = %94, %89
  br label %97

97:                                               ; preds = %96, %87
  %98 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %99 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %98, i32 0, i32 1
  %100 = call i32 @spin_unlock(i32* %99)
  %101 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @uart_handle_sysrq_char(%struct.uart_port* %101, i32 %102)
  store i32 %103, i32* %7, align 4
  %104 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %105 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %104, i32 0, i32 1
  %106 = call i32 @spin_lock(i32* %105)
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %97
  %110 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load i8, i8* %6, align 1
  %113 = call i32 @tty_insert_flip_char(%struct.tty_port* %110, i32 %111, i8 signext %112)
  br label %114

114:                                              ; preds = %109, %97
  br label %32

115:                                              ; preds = %32
  %116 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %117 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %116, i32 0, i32 1
  %118 = call i32 @spin_unlock(i32* %117)
  %119 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %120 = call i32 @tty_flip_buffer_push(%struct.tty_port* %119)
  %121 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %122 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %121, i32 0, i32 1
  %123 = call i32 @spin_lock(i32* %122)
  ret void
}

declare dso_local i32 @msm_read(%struct.uart_port*, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i32, i8 signext) #1

declare dso_local i32 @msm_write(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
