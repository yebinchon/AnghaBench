; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_set_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.uart_8250_port = type { %struct.TYPE_3__*, i32, i32, %struct.uart_port }
%struct.TYPE_3__ = type { i64, i64 }
%struct.uart_port = type { i32, i32, i32 }

@UPF_FIXED_TYPE = common dso_local global i32 0, align 4
@uart_config = common dso_local global %struct.TYPE_4__* null, align 8
@serial8250_tx_dma = common dso_local global i64 0, align 8
@serial8250_rx_dma = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serial8250_set_defaults(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %5 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 3
  store %struct.uart_port* %6, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %8 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @UPF_FIXED_TYPE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %63

14:                                               ; preds = %1
  %15 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %16 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %20 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %14
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uart_config, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %32 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  br label %34

34:                                               ; preds = %24, %14
  %35 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %36 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uart_config, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %47 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %39, %34
  %49 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %50 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uart_config, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %61 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %53, %48
  br label %63

63:                                               ; preds = %62, %1
  %64 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %65 = call i32 @set_io_from_upio(%struct.uart_port* %64)
  %66 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %67 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = icmp ne %struct.TYPE_3__* %68, null
  br i1 %69, label %70, label %97

70:                                               ; preds = %63
  %71 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %72 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %70
  %78 = load i64, i64* @serial8250_tx_dma, align 8
  %79 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %80 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i64 %78, i64* %82, align 8
  br label %83

83:                                               ; preds = %77, %70
  %84 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %85 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %83
  %91 = load i64, i64* @serial8250_rx_dma, align 8
  %92 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %93 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i64 %91, i64* %95, align 8
  br label %96

96:                                               ; preds = %90, %83
  br label %97

97:                                               ; preds = %96, %63
  ret void
}

declare dso_local i32 @set_io_from_upio(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
