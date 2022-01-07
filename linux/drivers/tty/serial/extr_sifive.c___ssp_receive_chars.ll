; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sifive.c___ssp_receive_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sifive.c___ssp_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sifive_serial_port = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SIFIVE_RX_FIFO_DEPTH = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sifive_serial_port*)* @__ssp_receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ssp_receive_chars(%struct.sifive_serial_port* %0) #0 {
  %2 = alloca %struct.sifive_serial_port*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.sifive_serial_port* %0, %struct.sifive_serial_port** %2, align 8
  %6 = load i32, i32* @SIFIVE_RX_FIFO_DEPTH, align 4
  store i32 %6, i32* %5, align 4
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %2, align 8
  %12 = call zeroext i8 @__ssp_receive_char(%struct.sifive_serial_port* %11, i8* %4)
  store i8 %12, i8* %3, align 1
  %13 = load i8, i8* %4, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %31

16:                                               ; preds = %10
  %17 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %2, align 8
  %18 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %2, align 8
  %24 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %23, i32 0, i32 0
  %25 = load i8, i8* %3, align 1
  %26 = load i32, i32* @TTY_NORMAL, align 4
  %27 = call i32 @uart_insert_char(%struct.TYPE_6__* %24, i32 0, i32 0, i8 zeroext %25, i32 %26)
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %5, align 4
  br label %7

31:                                               ; preds = %15, %7
  %32 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %2, align 8
  %33 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %2, align 8
  %37 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @tty_flip_buffer_push(i32* %40)
  %42 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %2, align 8
  %43 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @spin_lock(i32* %44)
  ret void
}

declare dso_local zeroext i8 @__ssp_receive_char(%struct.sifive_serial_port*, i8*) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_6__*, i32, i32, i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
