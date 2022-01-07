; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_handle_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_handle_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_6__, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }
%struct.sccnxp_port = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SCCNXP_THR_REG = common dso_local global i32 0, align 4
@SCCNXP_SR_REG = common dso_local global i32 0, align 4
@SR_TXEMT = common dso_local global i32 0, align 4
@IMR_TXRDY = common dso_local global i32 0, align 4
@SCCNXP_HAVE_IO = common dso_local global i32 0, align 4
@DIR_OP = common dso_local global i32 0, align 4
@SR_TXRDY = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sccnxp_handle_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sccnxp_handle_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca %struct.sccnxp_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.circ_buf* %9, %struct.circ_buf** %4, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.sccnxp_port* @dev_get_drvdata(i32 %12)
  store %struct.sccnxp_port* %13, %struct.sccnxp_port** %5, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @unlikely(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = load i32, i32* @SCCNXP_THR_REG, align 4
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @sccnxp_port_write(%struct.uart_port* %20, i32 %21, i64 %24)
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  br label %116

33:                                               ; preds = %1
  %34 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %35 = call i64 @uart_circ_empty(%struct.circ_buf* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = call i64 @uart_tx_stopped(%struct.uart_port* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %37, %33
  %42 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %43 = load i32, i32* @SCCNXP_SR_REG, align 4
  %44 = call i32 @sccnxp_port_read(%struct.uart_port* %42, i32 %43)
  %45 = load i32, i32* @SR_TXEMT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %41
  %49 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %50 = load i32, i32* @IMR_TXRDY, align 4
  %51 = call i32 @sccnxp_disable_irq(%struct.uart_port* %49, i32 %50)
  %52 = load %struct.sccnxp_port*, %struct.sccnxp_port** %5, align 8
  %53 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SCCNXP_HAVE_IO, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %62 = load i32, i32* @DIR_OP, align 4
  %63 = call i32 @sccnxp_set_bit(%struct.uart_port* %61, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %60, %48
  br label %65

65:                                               ; preds = %64, %41
  br label %116

66:                                               ; preds = %37
  br label %67

67:                                               ; preds = %81, %66
  %68 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %69 = call i64 @uart_circ_empty(%struct.circ_buf* %68)
  %70 = icmp ne i64 %69, 0
  %71 = xor i1 %70, true
  br i1 %71, label %72, label %108

72:                                               ; preds = %67
  %73 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %74 = load i32, i32* @SCCNXP_SR_REG, align 4
  %75 = call i32 @sccnxp_port_read(%struct.uart_port* %73, i32 %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @SR_TXRDY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  br label %108

81:                                               ; preds = %72
  %82 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %83 = load i32, i32* @SCCNXP_THR_REG, align 4
  %84 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %85 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %88 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i64, i64* %86, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @sccnxp_port_write(%struct.uart_port* %82, i32 %83, i64 %91)
  %93 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %94 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  %97 = load i32, i32* @UART_XMIT_SIZE, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = and i64 %96, %99
  %101 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %102 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %104 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  br label %67

108:                                              ; preds = %80, %67
  %109 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %110 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %109)
  %111 = load i64, i64* @WAKEUP_CHARS, align 8
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %115 = call i32 @uart_write_wakeup(%struct.uart_port* %114)
  br label %116

116:                                              ; preds = %19, %65, %113, %108
  ret void
}

declare dso_local %struct.sccnxp_port* @dev_get_drvdata(i32) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @sccnxp_port_write(%struct.uart_port*, i32, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @sccnxp_port_read(%struct.uart_port*, i32) #1

declare dso_local i32 @sccnxp_disable_irq(%struct.uart_port*, i32) #1

declare dso_local i32 @sccnxp_set_bit(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
