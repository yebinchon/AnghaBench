; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_pch_uart_get_uartclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_pch_uart_get_uartclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_system_id = type { i64 }

@user_uartclk = common dso_local global i32 0, align 4
@pch_uart_dmi_table = common dso_local global i32 0, align 4
@DEFAULT_UARTCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pch_uart_get_uartclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_uart_get_uartclk() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dmi_system_id*, align 8
  %3 = load i32, i32* @user_uartclk, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @user_uartclk, align 4
  store i32 %6, i32* %1, align 4
  br label %19

7:                                                ; preds = %0
  %8 = load i32, i32* @pch_uart_dmi_table, align 4
  %9 = call %struct.dmi_system_id* @dmi_first_match(i32 %8)
  store %struct.dmi_system_id* %9, %struct.dmi_system_id** %2, align 8
  %10 = load %struct.dmi_system_id*, %struct.dmi_system_id** %2, align 8
  %11 = icmp ne %struct.dmi_system_id* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.dmi_system_id*, %struct.dmi_system_id** %2, align 8
  %14 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %1, align 4
  br label %19

17:                                               ; preds = %7
  %18 = load i32, i32* @DEFAULT_UARTCLK, align 4
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %17, %12, %5
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local %struct.dmi_system_id* @dmi_first_match(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
