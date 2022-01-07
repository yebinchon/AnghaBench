; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_handle_dcd_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_handle_dcd_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_5__, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.tty_port }
%struct.tty_port = type { i32, %struct.tty_struct* }
%struct.tty_struct = type { i32 }
%struct.tty_ldisc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.tty_struct*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_handle_dcd_change(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.tty_ldisc*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.tty_port* %11, %struct.tty_port** %5, align 8
  %12 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %13 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %12, i32 0, i32 1
  %14 = load %struct.tty_struct*, %struct.tty_struct** %13, align 8
  store %struct.tty_struct* %14, %struct.tty_struct** %6, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 1
  %17 = call i32 @lockdep_assert_held_once(i32* %16)
  %18 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %19 = icmp ne %struct.tty_struct* %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %2
  %21 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %22 = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* %21)
  store %struct.tty_ldisc* %22, %struct.tty_ldisc** %7, align 8
  %23 = load %struct.tty_ldisc*, %struct.tty_ldisc** %7, align 8
  %24 = icmp ne %struct.tty_ldisc* %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %20
  %26 = load %struct.tty_ldisc*, %struct.tty_ldisc** %7, align 8
  %27 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.tty_struct*, i32)* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.tty_ldisc*, %struct.tty_ldisc** %7, align 8
  %34 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i32)** %36, align 8
  %38 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 %37(%struct.tty_struct* %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %25
  %42 = load %struct.tty_ldisc*, %struct.tty_ldisc** %7, align 8
  %43 = call i32 @tty_ldisc_deref(%struct.tty_ldisc* %42)
  br label %44

44:                                               ; preds = %41, %20
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %52 = call i64 @uart_dcd_enabled(%struct.uart_port* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %45
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %59 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %58, i32 0, i32 0
  %60 = call i32 @wake_up_interruptible(i32* %59)
  br label %68

61:                                               ; preds = %54
  %62 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %63 = icmp ne %struct.tty_struct* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %66 = call i32 @tty_hangup(%struct.tty_struct* %65)
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %57
  br label %69

69:                                               ; preds = %68, %45
  ret void
}

declare dso_local i32 @lockdep_assert_held_once(i32*) #1

declare dso_local %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct*) #1

declare dso_local i32 @tty_ldisc_deref(%struct.tty_ldisc*) #1

declare dso_local i64 @uart_dcd_enabled(%struct.uart_port*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @tty_hangup(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
