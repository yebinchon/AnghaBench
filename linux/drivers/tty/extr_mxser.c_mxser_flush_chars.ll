; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_flush_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_flush_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, i64, %struct.mxser_port* }
%struct.mxser_port = type { i64, i64, i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PORT_16550A = common dso_local global i64 0, align 8
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @mxser_flush_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxser_flush_chars(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.mxser_port*, align 8
  %4 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 2
  %7 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  store %struct.mxser_port* %7, %struct.mxser_port** %3, align 8
  %8 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %9 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %1
  %13 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %12
  %18 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %19 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %30 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PORT_16550A, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %36 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %35, i32 0, i32 5
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34, %17, %12, %1
  br label %77

42:                                               ; preds = %34, %28, %23
  %43 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %44 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %43, i32 0, i32 3
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %48 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @UART_IER_THRI, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %54 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @UART_IER, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @outb(i32 %52, i64 %57)
  %59 = load i32, i32* @UART_IER_THRI, align 4
  %60 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %61 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %65 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %68 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @UART_IER, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outb(i32 %66, i64 %71)
  %73 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %74 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %73, i32 0, i32 3
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  br label %77

77:                                               ; preds = %42, %41
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
