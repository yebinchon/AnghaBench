; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, %struct.mxser_port* }
%struct.mxser_port = type { i32, i64, i32 }

@MXSER_PORTS = common dso_local global i64 0, align 8
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @mxser_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxser_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mxser_port*, align 8
  %9 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 1
  %12 = load %struct.mxser_port*, %struct.mxser_port** %11, align 8
  store %struct.mxser_port* %12, %struct.mxser_port** %8, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MXSER_PORTS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOIOCTLCMD, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %92

21:                                               ; preds = %3
  %22 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %23 = call i64 @tty_io_error(%struct.tty_struct* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %92

28:                                               ; preds = %21
  %29 = load %struct.mxser_port*, %struct.mxser_port** %8, align 8
  %30 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %29, i32 0, i32 0
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @TIOCM_RTS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i32, i32* @UART_MCR_RTS, align 4
  %39 = load %struct.mxser_port*, %struct.mxser_port** %8, align 8
  %40 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %37, %28
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @TIOCM_DTR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* @UART_MCR_DTR, align 4
  %50 = load %struct.mxser_port*, %struct.mxser_port** %8, align 8
  %51 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %43
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @TIOCM_RTS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32, i32* @UART_MCR_RTS, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.mxser_port*, %struct.mxser_port** %8, align 8
  %63 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %59, %54
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @TIOCM_DTR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i32, i32* @UART_MCR_DTR, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.mxser_port*, %struct.mxser_port** %8, align 8
  %75 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %71, %66
  %79 = load %struct.mxser_port*, %struct.mxser_port** %8, align 8
  %80 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mxser_port*, %struct.mxser_port** %8, align 8
  %83 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @UART_MCR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @outb(i32 %81, i64 %86)
  %88 = load %struct.mxser_port*, %struct.mxser_port** %8, align 8
  %89 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %88, i32 0, i32 0
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %78, %25, %18
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @tty_io_error(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
