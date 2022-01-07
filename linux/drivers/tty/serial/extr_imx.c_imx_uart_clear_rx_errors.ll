; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_clear_rx_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_clear_rx_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@USR1 = common dso_local global i32 0, align 4
@USR2 = common dso_local global i32 0, align 4
@USR2_BRCD = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@USR1_FRAMERR = common dso_local global i32 0, align 4
@USR1_PARITYERR = common dso_local global i32 0, align 4
@USR2_ORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_port*)* @imx_uart_clear_rx_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_clear_rx_errors(%struct.imx_port* %0) #0 {
  %2 = alloca %struct.imx_port*, align 8
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.imx_port* %0, %struct.imx_port** %2, align 8
  %6 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %7 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.tty_port* %10, %struct.tty_port** %3, align 8
  %11 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %12 = load i32, i32* @USR1, align 4
  %13 = call i32 @imx_uart_readl(%struct.imx_port* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %15 = load i32, i32* @USR2, align 4
  %16 = call i32 @imx_uart_readl(%struct.imx_port* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @USR2_BRCD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %1
  %22 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %23 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %29 = load i32, i32* @USR2_BRCD, align 4
  %30 = load i32, i32* @USR2, align 4
  %31 = call i32 @imx_uart_writel(%struct.imx_port* %28, i32 %29, i32 %30)
  %32 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %33 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %32, i32 0, i32 0
  %34 = call i32 @uart_handle_break(%struct.TYPE_6__* %33)
  %35 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %36 = load i32, i32* @TTY_BREAK, align 4
  %37 = call i64 @tty_insert_flip_char(%struct.tty_port* %35, i32 0, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %21
  %40 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %41 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %39, %21
  %47 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %48 = call i32 @tty_flip_buffer_push(%struct.tty_port* %47)
  br label %83

49:                                               ; preds = %1
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @USR1_FRAMERR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %56 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %62 = load i32, i32* @USR1_FRAMERR, align 4
  %63 = load i32, i32* @USR1, align 4
  %64 = call i32 @imx_uart_writel(%struct.imx_port* %61, i32 %62, i32 %63)
  br label %82

65:                                               ; preds = %49
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @USR1_PARITYERR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %72 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %78 = load i32, i32* @USR1_PARITYERR, align 4
  %79 = load i32, i32* @USR1, align 4
  %80 = call i32 @imx_uart_writel(%struct.imx_port* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %70, %65
  br label %82

82:                                               ; preds = %81, %54
  br label %83

83:                                               ; preds = %82, %46
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @USR2_ORE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %90 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %96 = load i32, i32* @USR2_ORE, align 4
  %97 = load i32, i32* @USR2, align 4
  %98 = call i32 @imx_uart_writel(%struct.imx_port* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %88, %83
  ret void
}

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

declare dso_local i32 @uart_handle_break(%struct.TYPE_6__*) #1

declare dso_local i64 @tty_insert_flip_char(%struct.tty_port*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
