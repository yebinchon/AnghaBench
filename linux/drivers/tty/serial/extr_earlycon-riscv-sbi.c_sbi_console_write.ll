; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_earlycon-riscv-sbi.c_sbi_console_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_earlycon-riscv-sbi.c_sbi_console_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console = type { %struct.earlycon_device* }
%struct.earlycon_device = type { i32 }

@sbi_putc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.console*, i8*, i32)* @sbi_console_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbi_console_write(%struct.console* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.earlycon_device*, align 8
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.console*, %struct.console** %4, align 8
  %9 = getelementptr inbounds %struct.console, %struct.console* %8, i32 0, i32 0
  %10 = load %struct.earlycon_device*, %struct.earlycon_device** %9, align 8
  store %struct.earlycon_device* %10, %struct.earlycon_device** %7, align 8
  %11 = load %struct.earlycon_device*, %struct.earlycon_device** %7, align 8
  %12 = getelementptr inbounds %struct.earlycon_device, %struct.earlycon_device* %11, i32 0, i32 0
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @sbi_putc, align 4
  %16 = call i32 @uart_console_write(i32* %12, i8* %13, i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @uart_console_write(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
