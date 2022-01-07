; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_4__, i64, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.qcom_geni_serial_port = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@SE_GENI_M_IRQ_STATUS = common dso_local global i64 0, align 8
@SE_GENI_S_IRQ_STATUS = common dso_local global i64 0, align 8
@SE_GENI_STATUS = common dso_local global i64 0, align 8
@SE_GENI_M_IRQ_EN = common dso_local global i64 0, align 8
@SE_GENI_M_IRQ_CLEAR = common dso_local global i64 0, align 8
@SE_GENI_S_IRQ_CLEAR = common dso_local global i64 0, align 8
@M_ILLEGAL_CMD_EN = common dso_local global i32 0, align 4
@S_RX_FIFO_WR_ERR_EN = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@M_TX_FIFO_WATERMARK_EN = common dso_local global i32 0, align 4
@M_CMD_DONE_EN = common dso_local global i32 0, align 4
@M_GENI_CMD_ACTIVE = common dso_local global i32 0, align 4
@S_GP_IRQ_0_EN = common dso_local global i32 0, align 4
@S_GP_IRQ_1_EN = common dso_local global i32 0, align 4
@S_GP_IRQ_2_EN = common dso_local global i32 0, align 4
@S_GP_IRQ_3_EN = common dso_local global i32 0, align 4
@S_RX_FIFO_WATERMARK_EN = common dso_local global i32 0, align 4
@S_RX_FIFO_LAST_EN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qcom_geni_serial_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_geni_serial_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uart_port*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tty_port*, align 8
  %14 = alloca %struct.qcom_geni_serial_port*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.uart_port*
  store %struct.uart_port* %16, %struct.uart_port** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.tty_port* %20, %struct.tty_port** %13, align 8
  %21 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %22 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %23 = call %struct.qcom_geni_serial_port* @to_dev_port(%struct.uart_port* %21, %struct.uart_port* %22)
  store %struct.qcom_geni_serial_port* %23, %struct.qcom_geni_serial_port** %14, align 8
  %24 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %172

30:                                               ; preds = %2
  %31 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 2
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SE_GENI_M_IRQ_STATUS, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @readl(i64 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SE_GENI_S_IRQ_STATUS, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @readl(i64 %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SE_GENI_STATUS, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl(i64 %51)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SE_GENI_M_IRQ_EN, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl(i64 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %61 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SE_GENI_M_IRQ_CLEAR, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %68 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SE_GENI_S_IRQ_CLEAR, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @M_ILLEGAL_CMD_EN, align 4
  %75 = and i32 %73, %74
  %76 = call i64 @WARN_ON(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %30
  br label %167

79:                                               ; preds = %30
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @S_RX_FIFO_WR_ERR_EN, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %86 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.tty_port*, %struct.tty_port** %13, align 8
  %91 = load i32, i32* @TTY_OVERRUN, align 4
  %92 = call i32 @tty_insert_flip_char(%struct.tty_port* %90, i32 0, i32 %91)
  br label %93

93:                                               ; preds = %84, %79
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @M_TX_FIFO_WATERMARK_EN, align 4
  %98 = load i32, i32* @M_CMD_DONE_EN, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %93
  %103 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @M_CMD_DONE_EN, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @M_GENI_CMD_ACTIVE, align 4
  %109 = and i32 %107, %108
  %110 = call i32 @qcom_geni_serial_handle_tx(%struct.uart_port* %103, i32 %106, i32 %109)
  br label %111

111:                                              ; preds = %102, %93
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @S_GP_IRQ_0_EN, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @S_GP_IRQ_1_EN, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %116, %111
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @S_GP_IRQ_0_EN, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %128 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %126, %121
  store i32 1, i32* %12, align 4
  br label %152

133:                                              ; preds = %116
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @S_GP_IRQ_2_EN, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @S_GP_IRQ_3_EN, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %138, %133
  %144 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %145 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  %149 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %14, align 8
  %150 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %149, i32 0, i32 0
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %143, %138
  br label %152

152:                                              ; preds = %151, %132
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @S_RX_FIFO_WATERMARK_EN, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @S_RX_FIFO_LAST_EN, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157, %152
  %163 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @qcom_geni_serial_handle_rx(%struct.uart_port* %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %157
  br label %167

167:                                              ; preds = %166, %78
  %168 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %169 = load i64, i64* %11, align 8
  %170 = call i32 @uart_unlock_and_check_sysrq(%struct.uart_port* %168, i64 %169)
  %171 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %167, %28
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.qcom_geni_serial_port* @to_dev_port(%struct.uart_port*, %struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i32, i32) #1

declare dso_local i32 @qcom_geni_serial_handle_tx(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @qcom_geni_serial_handle_rx(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_unlock_and_check_sysrq(%struct.uart_port*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
