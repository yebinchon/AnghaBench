; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vr41xx_siu.c_siu_release_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vr41xx_siu.c_siu_release_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32* }

@UPF_IOREMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @siu_release_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siu_release_port(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @UPF_IOREMAP, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @iounmap(i32* %13)
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %19 = call i64 @siu_port_size(%struct.uart_port* %18)
  store i64 %19, i64* %3, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @release_mem_region(i32 %22, i64 %23)
  ret void
}

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i64 @siu_port_size(%struct.uart_port*) #1

declare dso_local i32 @release_mem_region(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
