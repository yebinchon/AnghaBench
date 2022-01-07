; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_amba-pl011.c_pl011_unregister_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_amba-pl011.c_pl011_unregister_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_amba_port = type { i32 }

@amba_ports = common dso_local global %struct.uart_amba_port** null, align 8
@amba_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_amba_port*)* @pl011_unregister_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl011_unregister_port(%struct.uart_amba_port* %0) #0 {
  %2 = alloca %struct.uart_amba_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uart_amba_port* %0, %struct.uart_amba_port** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.uart_amba_port**, %struct.uart_amba_port*** @amba_ports, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.uart_amba_port** %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %5
  %11 = load %struct.uart_amba_port**, %struct.uart_amba_port*** @amba_ports, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.uart_amba_port*, %struct.uart_amba_port** %11, i64 %13
  %15 = load %struct.uart_amba_port*, %struct.uart_amba_port** %14, align 8
  %16 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %17 = icmp eq %struct.uart_amba_port* %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load %struct.uart_amba_port**, %struct.uart_amba_port*** @amba_ports, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.uart_amba_port*, %struct.uart_amba_port** %19, i64 %21
  store %struct.uart_amba_port* null, %struct.uart_amba_port** %22, align 8
  br label %32

23:                                               ; preds = %10
  %24 = load %struct.uart_amba_port**, %struct.uart_amba_port*** @amba_ports, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.uart_amba_port*, %struct.uart_amba_port** %24, i64 %26
  %28 = load %struct.uart_amba_port*, %struct.uart_amba_port** %27, align 8
  %29 = icmp ne %struct.uart_amba_port* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %23
  br label %32

32:                                               ; preds = %31, %18
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %5

36:                                               ; preds = %5
  %37 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %38 = call i32 @pl011_dma_remove(%struct.uart_amba_port* %37)
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = call i32 @uart_unregister_driver(i32* @amba_reg)
  br label %43

43:                                               ; preds = %41, %36
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.uart_amba_port**) #1

declare dso_local i32 @pl011_dma_remove(%struct.uart_amba_port*) #1

declare dso_local i32 @uart_unregister_driver(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
