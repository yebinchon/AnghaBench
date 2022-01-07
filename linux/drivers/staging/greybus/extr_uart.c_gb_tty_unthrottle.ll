; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_gb_tty_unthrottle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_gb_tty_unthrottle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__, %struct.gb_tty* }
%struct.TYPE_2__ = type { i32 }
%struct.gb_tty = type { i32 }

@CRTSCTS = common dso_local global i32 0, align 4
@GB_UART_CTRL_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @gb_tty_unthrottle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_tty_unthrottle(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.gb_tty*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 1
  %8 = load %struct.gb_tty*, %struct.gb_tty** %7, align 8
  store %struct.gb_tty* %8, %struct.gb_tty** %3, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %10 = call i64 @I_IXOFF(%struct.tty_struct* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %14 = call zeroext i8 @START_CHAR(%struct.tty_struct* %13)
  store i8 %14, i8* %4, align 1
  %15 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %16 = call i32 @gb_tty_write(%struct.tty_struct* %15, i8* %4, i32 1)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %40

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CRTSCTS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load i32, i32* @GB_UART_CTRL_RTS, align 4
  %31 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %32 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %36 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %37 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @send_control(%struct.gb_tty* %35, i32 %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %19, %29, %21
  ret void
}

declare dso_local i64 @I_IXOFF(%struct.tty_struct*) #1

declare dso_local zeroext i8 @START_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @gb_tty_write(%struct.tty_struct*, i8*, i32) #1

declare dso_local i32 @send_control(%struct.gb_tty*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
