; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_rs_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_rs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }
%struct.tty_struct = type { i32, %struct.serial_state* }
%struct.serial_state = type { i32, i32, %struct.tty_port }
%struct.tty_port = type { i32* }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"rs_close\00", align 1
@UART_LSR_DR = common dso_local global i32 0, align 4
@IF_RBF = common dso_local global i8* null, align 8
@custom = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @rs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.serial_state*, align 8
  %6 = alloca %struct.tty_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 1
  %9 = load %struct.serial_state*, %struct.serial_state** %8, align 8
  store %struct.serial_state* %9, %struct.serial_state** %5, align 8
  %10 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %11 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %10, i32 0, i32 2
  store %struct.tty_port* %11, %struct.tty_port** %6, align 8
  %12 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @serial_paranoia_check(%struct.serial_state* %12, i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %59

19:                                               ; preds = %2
  %20 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %21 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = call i64 @tty_port_close_start(%struct.tty_port* %20, %struct.tty_struct* %21, %struct.file* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %59

26:                                               ; preds = %19
  %27 = load i32, i32* @UART_LSR_DR, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %30 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %34 = call i64 @tty_port_initialized(%struct.tty_port* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %26
  %37 = load i8*, i8** @IF_RBF, align 8
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @custom, i32 0, i32 1), align 8
  %38 = call i32 (...) @mb()
  %39 = load i8*, i8** @IF_RBF, align 8
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @custom, i32 0, i32 0), align 8
  %40 = call i32 (...) @mb()
  %41 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %42 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %43 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @rs_wait_until_sent(%struct.tty_struct* %41, i32 %44)
  br label %46

46:                                               ; preds = %36, %26
  %47 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %48 = load %struct.serial_state*, %struct.serial_state** %5, align 8
  %49 = call i32 @shutdown(%struct.tty_struct* %47, %struct.serial_state* %48)
  %50 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %51 = call i32 @rs_flush_buffer(%struct.tty_struct* %50)
  %52 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %53 = call i32 @tty_ldisc_flush(%struct.tty_struct* %52)
  %54 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %55 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %57 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %58 = call i32 @tty_port_close_end(%struct.tty_port* %56, %struct.tty_struct* %57)
  br label %59

59:                                               ; preds = %46, %25, %18
  ret void
}

declare dso_local i64 @serial_paranoia_check(%struct.serial_state*, i32, i8*) #1

declare dso_local i64 @tty_port_close_start(%struct.tty_port*, %struct.tty_struct*, %struct.file*) #1

declare dso_local i64 @tty_port_initialized(%struct.tty_port*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @rs_wait_until_sent(%struct.tty_struct*, i32) #1

declare dso_local i32 @shutdown(%struct.tty_struct*, %struct.serial_state*) #1

declare dso_local i32 @rs_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @tty_ldisc_flush(%struct.tty_struct*) #1

declare dso_local i32 @tty_port_close_end(%struct.tty_port*, %struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
