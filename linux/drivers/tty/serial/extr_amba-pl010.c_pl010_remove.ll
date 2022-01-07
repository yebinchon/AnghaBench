; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_amba-pl010.c_pl010_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_amba-pl010.c_pl010_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_amba_port = type { i32 }
%struct.amba_device = type { i32 }

@amba_reg = common dso_local global i32 0, align 4
@amba_ports = common dso_local global %struct.uart_amba_port** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*)* @pl010_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl010_remove(%struct.amba_device* %0) #0 {
  %2 = alloca %struct.amba_device*, align 8
  %3 = alloca %struct.uart_amba_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amba_device* %0, %struct.amba_device** %2, align 8
  %6 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %7 = call %struct.uart_amba_port* @amba_get_drvdata(%struct.amba_device* %6)
  store %struct.uart_amba_port* %7, %struct.uart_amba_port** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %8, i32 0, i32 0
  %10 = call i32 @uart_remove_one_port(i32* @amba_reg, i32* %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %39, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.uart_amba_port**, %struct.uart_amba_port*** @amba_ports, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.uart_amba_port** %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %11
  %17 = load %struct.uart_amba_port**, %struct.uart_amba_port*** @amba_ports, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.uart_amba_port*, %struct.uart_amba_port** %17, i64 %19
  %21 = load %struct.uart_amba_port*, %struct.uart_amba_port** %20, align 8
  %22 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %23 = icmp eq %struct.uart_amba_port* %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.uart_amba_port**, %struct.uart_amba_port*** @amba_ports, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.uart_amba_port*, %struct.uart_amba_port** %25, i64 %27
  store %struct.uart_amba_port* null, %struct.uart_amba_port** %28, align 8
  br label %38

29:                                               ; preds = %16
  %30 = load %struct.uart_amba_port**, %struct.uart_amba_port*** @amba_ports, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.uart_amba_port*, %struct.uart_amba_port** %30, i64 %32
  %34 = load %struct.uart_amba_port*, %struct.uart_amba_port** %33, align 8
  %35 = icmp ne %struct.uart_amba_port* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %29
  br label %38

38:                                               ; preds = %37, %24
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %11

42:                                               ; preds = %11
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = call i32 @uart_unregister_driver(i32* @amba_reg)
  br label %47

47:                                               ; preds = %45, %42
  ret i32 0
}

declare dso_local %struct.uart_amba_port* @amba_get_drvdata(%struct.amba_device*) #1

declare dso_local i32 @uart_remove_one_port(i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.uart_amba_port**) #1

declare dso_local i32 @uart_unregister_driver(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
