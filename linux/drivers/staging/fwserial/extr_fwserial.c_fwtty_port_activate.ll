; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_port_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_port_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.tty_port = type { i32 }
%struct.tty_struct = type { i32, i32 }

@TTY_IO_ERROR = common dso_local global i32 0, align 4
@FWTTY_PORT_TXFIFO_LEN = common dso_local global i32 0, align 4
@FWTTY_PORT_MAX_PEND_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@port = common dso_local global %struct.fwtty_port* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_port*, %struct.tty_struct*)* @fwtty_port_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwtty_port_activate(%struct.tty_port* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_port*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.fwtty_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tty_port* %0, %struct.tty_port** %4, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %5, align 8
  %9 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %10 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %11 = ptrtoint %struct.fwtty_port* %10 to i32
  %12 = call %struct.fwtty_port* @to_port(%struct.tty_port* %9, i32 %11)
  store %struct.fwtty_port* %12, %struct.fwtty_port** %6, align 8
  %13 = load i32, i32* @TTY_IO_ERROR, align 4
  %14 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 1
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %18 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %17, i32 0, i32 5
  %19 = load i32, i32* @FWTTY_PORT_TXFIFO_LEN, align 4
  %20 = call i32 (...) @cache_line_size()
  %21 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %22 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FWTTY_PORT_MAX_PEND_DMA, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @dma_fifo_alloc(i32* %18, i32 %19, i32 %20, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %80

31:                                               ; preds = %2
  %32 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %33 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %32, i32 0, i32 2
  %34 = call i32 @spin_lock_bh(i32* %33)
  %35 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %36 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %37 = call i32 @set_termios(%struct.fwtty_port* %35, %struct.tty_struct* %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %39 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %31
  %44 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %45 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* @TIOCM_DTR, align 4
  %50 = load i32, i32* @TIOCM_RTS, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %53 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %43
  br label %55

55:                                               ; preds = %54, %31
  %56 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %57 = call i64 @C_CRTSCTS(%struct.tty_struct* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %61 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* @TIOCM_CTS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %69 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %59, %55
  %71 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %72 = call i32 @__fwtty_write_port_status(%struct.fwtty_port* %71)
  %73 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %74 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %73, i32 0, i32 2
  %75 = call i32 @spin_unlock_bh(i32* %74)
  %76 = load i32, i32* @TTY_IO_ERROR, align 4
  %77 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %78 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %77, i32 0, i32 1
  %79 = call i32 @clear_bit(i32 %76, i32* %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %70, %29
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.fwtty_port* @to_port(%struct.tty_port*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dma_fifo_alloc(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cache_line_size(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @set_termios(%struct.fwtty_port*, %struct.tty_struct*) #1

declare dso_local i64 @C_CRTSCTS(%struct.tty_struct*) #1

declare dso_local i32 @__fwtty_write_port_status(%struct.fwtty_port*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
