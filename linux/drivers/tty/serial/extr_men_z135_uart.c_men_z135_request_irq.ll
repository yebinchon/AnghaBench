; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.men_z135_port = type { %struct.uart_port, %struct.TYPE_2__* }
%struct.uart_port = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@men_z135_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"men_z135_intr\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Error %d getting interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.men_z135_port*)* @men_z135_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @men_z135_request_irq(%struct.men_z135_port* %0) #0 {
  %2 = alloca %struct.men_z135_port*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  store %struct.men_z135_port* %0, %struct.men_z135_port** %2, align 8
  %6 = load %struct.men_z135_port*, %struct.men_z135_port** %2, align 8
  %7 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load %struct.men_z135_port*, %struct.men_z135_port** %2, align 8
  %11 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %10, i32 0, i32 0
  store %struct.uart_port* %11, %struct.uart_port** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @men_z135_intr, align 4
  %16 = load i32, i32* @IRQF_SHARED, align 4
  %17 = load %struct.men_z135_port*, %struct.men_z135_port** %2, align 8
  %18 = call i32 @request_irq(i32 %14, i32 %15, i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.men_z135_port* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %1
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.men_z135_port*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
