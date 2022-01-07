; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_get_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_get_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.gb_tty* }
%struct.gb_tty = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32 }

@PORT_16550A = common dso_local global i32 0, align 4
@ASYNC_CLOSING_WAIT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @get_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serial_struct*, align 8
  %5 = alloca %struct.gb_tty*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.gb_tty*, %struct.gb_tty** %7, align 8
  store %struct.gb_tty* %8, %struct.gb_tty** %5, align 8
  %9 = load i32, i32* @PORT_16550A, align 4
  %10 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %11 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %13 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %16 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %18 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %17, i32 0, i32 0
  store i32 16, i32* %18, align 4
  %19 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %20 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %19, i32 0, i32 1
  store i32 9600, i32* %20, align 4
  %21 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %22 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 10
  %26 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %27 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %29 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ASYNC_CLOSING_WAIT_NONE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @ASYNC_CLOSING_WAIT_NONE, align 4
  br label %42

36:                                               ; preds = %2
  %37 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %38 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 10
  br label %42

42:                                               ; preds = %36, %34
  %43 = phi i32 [ %35, %34 ], [ %41, %36 ]
  %44 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %45 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
