; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_handle_modem_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_handle_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.men_z135_port = type { i32, i32 }

@MEN_Z135_MSR_DDCD = common dso_local global i32 0, align 4
@MEN_Z135_MSR_DCD = common dso_local global i32 0, align 4
@MEN_Z135_MSR_DCTS = common dso_local global i32 0, align 4
@MEN_Z135_MSR_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.men_z135_port*)* @men_z135_handle_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @men_z135_handle_modem_status(%struct.men_z135_port* %0) #0 {
  %2 = alloca %struct.men_z135_port*, align 8
  %3 = alloca i32, align 4
  store %struct.men_z135_port* %0, %struct.men_z135_port** %2, align 8
  %4 = load %struct.men_z135_port*, %struct.men_z135_port** %2, align 8
  %5 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = ashr i32 %6, 8
  %8 = and i32 %7, 255
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MEN_Z135_MSR_DDCD, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.men_z135_port*, %struct.men_z135_port** %2, align 8
  %15 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %14, i32 0, i32 1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @MEN_Z135_MSR_DCD, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @uart_handle_dcd_change(i32* %15, i32 %18)
  br label %20

20:                                               ; preds = %13, %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @MEN_Z135_MSR_DCTS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.men_z135_port*, %struct.men_z135_port** %2, align 8
  %27 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %26, i32 0, i32 1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @MEN_Z135_MSR_CTS, align 4
  %30 = and i32 %28, %29
  %31 = call i32 @uart_handle_cts_change(i32* %27, i32 %30)
  br label %32

32:                                               ; preds = %25, %20
  ret void
}

declare dso_local i32 @uart_handle_dcd_change(i32*, i32) #1

declare dso_local i32 @uart_handle_cts_change(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
