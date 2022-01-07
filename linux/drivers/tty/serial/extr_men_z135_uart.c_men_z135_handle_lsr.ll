; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_handle_lsr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_handle_lsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.men_z135_port = type { i32, %struct.uart_port }
%struct.uart_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@MEN_Z135_LSR_OE = common dso_local global i32 0, align 4
@MEN_Z135_LSR_PE = common dso_local global i32 0, align 4
@MEN_Z135_LSR_FE = common dso_local global i32 0, align 4
@MEN_Z135_LSR_BI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.men_z135_port*)* @men_z135_handle_lsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @men_z135_handle_lsr(%struct.men_z135_port* %0) #0 {
  %2 = alloca %struct.men_z135_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.men_z135_port* %0, %struct.men_z135_port** %2, align 8
  %5 = load %struct.men_z135_port*, %struct.men_z135_port** %2, align 8
  %6 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %5, i32 0, i32 1
  store %struct.uart_port* %6, %struct.uart_port** %3, align 8
  %7 = load %struct.men_z135_port*, %struct.men_z135_port** %2, align 8
  %8 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = ashr i32 %9, 16
  %11 = and i32 %10, 255
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MEN_Z135_LSR_OE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %16, %1
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MEN_Z135_LSR_PE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %22
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MEN_Z135_LSR_FE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @MEN_Z135_LSR_BI, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %56 = call i32 @uart_handle_break(%struct.uart_port* %55)
  br label %57

57:                                               ; preds = %49, %44
  ret void
}

declare dso_local i32 @uart_handle_break(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
