; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_handle_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_handle_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.men_z135_port = type { %struct.TYPE_5__*, %struct.uart_port }
%struct.TYPE_5__ = type { i32 }
%struct.uart_port = type { %struct.TYPE_6__, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32, i32, i32* }

@MEN_Z135_TX_CTRL = common dso_local global i64 0, align 8
@MEN_Z135_FIFO_WATERMARK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Not enough room in TX FIFO have %d, need %d\0A\00", align 1
@align = common dso_local global i64 0, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@MEN_Z135_TX_RAM = common dso_local global i64 0, align 8
@WAKEUP_CHARS = common dso_local global i32 0, align 4
@MEN_Z135_CONF_REG = common dso_local global i32 0, align 4
@MEN_Z135_IER_TXCIEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.men_z135_port*)* @men_z135_handle_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @men_z135_handle_tx(%struct.men_z135_port* %0) #0 {
  %2 = alloca %struct.men_z135_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.men_z135_port* %0, %struct.men_z135_port** %2, align 8
  %13 = load %struct.men_z135_port*, %struct.men_z135_port** %2, align 8
  %14 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %13, i32 0, i32 1
  store %struct.uart_port* %14, %struct.uart_port** %3, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.circ_buf* %18, %struct.circ_buf** %4, align 8
  %19 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %20 = call i64 @uart_circ_empty(%struct.circ_buf* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %187

23:                                               ; preds = %1
  %24 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %25 = call i64 @uart_tx_stopped(%struct.uart_port* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %187

28:                                               ; preds = %23
  %29 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %187

34:                                               ; preds = %28
  %35 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %36 = call i32 @uart_circ_chars_pending(%struct.circ_buf* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %187

40:                                               ; preds = %34
  %41 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MEN_Z135_TX_CTRL, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @ioread32(i64 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = ashr i32 %47, 16
  %49 = and i32 %48, 1023
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 1023
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @MEN_Z135_FIFO_WATERMARK, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = load i32, i32* @MEN_Z135_FIFO_WATERMARK, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %40
  %58 = load i32, i32* @MEN_Z135_FIFO_WATERMARK, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.men_z135_port*, %struct.men_z135_port** %2, align 8
  %65 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69)
  br label %172

71:                                               ; preds = %57
  %72 = load i64, i64* @align, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = icmp sge i32 %75, 3
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @BYTES_TO_ALIGN(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @BYTES_TO_ALIGN(i32 %82)
  %84 = sub nsw i32 4, %83
  store i32 %84, i32* %8, align 4
  br label %94

85:                                               ; preds = %77, %74, %71
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %8, align 4
  br label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %91, %89
  br label %94

94:                                               ; preds = %93, %81
  %95 = load i32, i32* %8, align 4
  %96 = icmp sle i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %172

98:                                               ; preds = %94
  %99 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %100 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @UART_XMIT_SIZE, align 4
  %103 = sub nsw i32 %102, 1
  %104 = and i32 %101, %103
  store i32 %104, i32* %10, align 4
  %105 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %106 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @UART_XMIT_SIZE, align 4
  %109 = sub nsw i32 %108, 1
  %110 = and i32 %107, %109
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %98
  %115 = load i32, i32* %10, align 4
  br label %118

116:                                              ; preds = %98
  %117 = load i32, i32* @UART_XMIT_SIZE, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  %120 = load i32, i32* %11, align 4
  %121 = sub nsw i32 %119, %120
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @min(i32 %122, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %126 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @MEN_Z135_TX_RAM, align 8
  %129 = add nsw i64 %127, %128
  %130 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %131 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %134 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @memcpy_toio(i64 %129, i32* %137, i32 %138)
  %140 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %141 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* @UART_XMIT_SIZE, align 4
  %146 = sub nsw i32 %145, 1
  %147 = and i32 %144, %146
  %148 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %149 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %8, align 4
  %151 = and i32 %150, 1023
  %152 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %153 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @MEN_Z135_TX_CTRL, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @iowrite32(i32 %151, i64 %156)
  %158 = load i32, i32* %8, align 4
  %159 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %160 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, %158
  store i32 %163, i32* %161, align 8
  %164 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %165 = call i32 @uart_circ_chars_pending(%struct.circ_buf* %164)
  %166 = load i32, i32* @WAKEUP_CHARS, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %118
  %169 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %170 = call i32 @uart_write_wakeup(%struct.uart_port* %169)
  br label %171

171:                                              ; preds = %168, %118
  br label %172

172:                                              ; preds = %171, %97, %63
  %173 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %174 = call i64 @uart_circ_empty(%struct.circ_buf* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %172
  %177 = load %struct.men_z135_port*, %struct.men_z135_port** %2, align 8
  %178 = load i32, i32* @MEN_Z135_CONF_REG, align 4
  %179 = load i32, i32* @MEN_Z135_IER_TXCIEN, align 4
  %180 = call i32 @men_z135_reg_set(%struct.men_z135_port* %177, i32 %178, i32 %179)
  br label %186

181:                                              ; preds = %172
  %182 = load %struct.men_z135_port*, %struct.men_z135_port** %2, align 8
  %183 = load i32, i32* @MEN_Z135_CONF_REG, align 4
  %184 = load i32, i32* @MEN_Z135_IER_TXCIEN, align 4
  %185 = call i32 @men_z135_reg_clr(%struct.men_z135_port* %182, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %181, %176
  br label %187

187:                                              ; preds = %186, %39, %33, %27, %22
  ret void
}

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @BYTES_TO_ALIGN(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy_toio(i64, i32*, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @men_z135_reg_set(%struct.men_z135_port*, i32, i32) #1

declare dso_local i32 @men_z135_reg_clr(%struct.men_z135_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
