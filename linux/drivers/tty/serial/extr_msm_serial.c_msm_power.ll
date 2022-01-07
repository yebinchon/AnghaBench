; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.msm_port = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"msm_serial: Unknown PM state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32, i32)* @msm_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_power(%struct.uart_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.msm_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %9 = call %struct.msm_port* @UART_TO_MSM(%struct.uart_port* %8)
  store %struct.msm_port* %9, %struct.msm_port** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %29 [
    i32 0, label %11
    i32 3, label %20
  ]

11:                                               ; preds = %3
  %12 = load %struct.msm_port*, %struct.msm_port** %7, align 8
  %13 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_prepare_enable(i32 %14)
  %16 = load %struct.msm_port*, %struct.msm_port** %7, align 8
  %17 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_prepare_enable(i32 %18)
  br label %32

20:                                               ; preds = %3
  %21 = load %struct.msm_port*, %struct.msm_port** %7, align 8
  %22 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_disable_unprepare(i32 %23)
  %25 = load %struct.msm_port*, %struct.msm_port** %7, align 8
  %26 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_disable_unprepare(i32 %27)
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %20, %11
  ret void
}

declare dso_local %struct.msm_port* @UART_TO_MSM(%struct.uart_port*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
