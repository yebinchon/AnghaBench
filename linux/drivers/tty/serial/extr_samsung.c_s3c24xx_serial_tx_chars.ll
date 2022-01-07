; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_tx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_uart_port = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.uart_port }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.uart_port = type { i32, i32, %struct.TYPE_8__, i64, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32, i64*, i32 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@S3C2410_UTXH = common dso_local global i32 0, align 4
@S3C2410_UFSTAT = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s3c24xx_serial_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_serial_tx_chars(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s3c24xx_uart_port*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.circ_buf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.s3c24xx_uart_port*
  store %struct.s3c24xx_uart_port* %13, %struct.s3c24xx_uart_port** %5, align 8
  %14 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %5, align 8
  %15 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %14, i32 0, i32 3
  store %struct.uart_port* %15, %struct.uart_port** %6, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.circ_buf* %19, %struct.circ_buf** %7, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 1
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %25 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %28 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @UART_XMIT_SIZE, align 4
  %31 = call i32 @CIRC_CNT_TO_END(i32 %26, i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %5, align 8
  %33 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %71

36:                                               ; preds = %2
  %37 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %5, align 8
  %38 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %5, align 8
  %46 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %43
  %50 = call i32 (...) @dma_get_cache_alignment()
  %51 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %52 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (...) @dma_get_cache_alignment()
  %55 = sub nsw i32 %54, 1
  %56 = and i32 %53, %55
  %57 = sub nsw i32 %50, %56
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %5, align 8
  %62 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %60, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %49
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %11, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %65, %49
  br label %71

71:                                               ; preds = %70, %43, %36, %2
  %72 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %73 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %78 = load i32, i32* @S3C2410_UTXH, align 4
  %79 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %80 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @wr_regb(%struct.uart_port* %77, i32 %78, i64 %81)
  %83 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %89 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %88, i32 0, i32 3
  store i64 0, i64* %89, align 8
  br label %194

90:                                               ; preds = %71
  %91 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %92 = call i64 @uart_circ_empty(%struct.circ_buf* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %96 = call i64 @uart_tx_stopped(%struct.uart_port* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94, %90
  %99 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %100 = call i32 @s3c24xx_serial_stop_tx(%struct.uart_port* %99)
  br label %194

101:                                              ; preds = %94
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %104 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %109 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %111

111:                                              ; preds = %107, %101
  br label %112

112:                                              ; preds = %133, %111
  %113 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %114 = call i64 @uart_circ_empty(%struct.circ_buf* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %9, align 4
  %118 = icmp sgt i32 %117, 0
  br label %119

119:                                              ; preds = %116, %112
  %120 = phi i1 [ false, %112 ], [ %118, %116 ]
  br i1 %120, label %121, label %162

121:                                              ; preds = %119
  %122 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %123 = load i32, i32* @S3C2410_UFSTAT, align 4
  %124 = call i32 @rd_regl(%struct.uart_port* %122, i32 %123)
  %125 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %5, align 8
  %126 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %125, i32 0, i32 1
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %124, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %121
  br label %162

133:                                              ; preds = %121
  %134 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %135 = load i32, i32* @S3C2410_UTXH, align 4
  %136 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %137 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %136, i32 0, i32 1
  %138 = load i64*, i64** %137, align 8
  %139 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %140 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %138, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @wr_regb(%struct.uart_port* %134, i32 %135, i64 %144)
  %146 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %147 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  %150 = load i32, i32* @UART_XMIT_SIZE, align 4
  %151 = sub nsw i32 %150, 1
  %152 = and i32 %149, %151
  %153 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %154 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %156 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %9, align 4
  br label %112

162:                                              ; preds = %132, %119
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %5, align 8
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @s3c24xx_serial_start_tx_dma(%struct.s3c24xx_uart_port* %169, i32 %170)
  br label %194

172:                                              ; preds = %165, %162
  %173 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %174 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %173)
  %175 = load i64, i64* @WAKEUP_CHARS, align 8
  %176 = icmp slt i64 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %172
  %178 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %179 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %178, i32 0, i32 1
  %180 = call i32 @spin_unlock(i32* %179)
  %181 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %182 = call i32 @uart_write_wakeup(%struct.uart_port* %181)
  %183 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %184 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %183, i32 0, i32 1
  %185 = call i32 @spin_lock(i32* %184)
  br label %186

186:                                              ; preds = %177, %172
  %187 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %188 = call i64 @uart_circ_empty(%struct.circ_buf* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %192 = call i32 @s3c24xx_serial_stop_tx(%struct.uart_port* %191)
  br label %193

193:                                              ; preds = %190, %186
  br label %194

194:                                              ; preds = %193, %168, %98, %76
  %195 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %196 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %195, i32 0, i32 1
  %197 = load i64, i64* %8, align 8
  %198 = call i32 @spin_unlock_irqrestore(i32* %196, i64 %197)
  %199 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %199
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @CIRC_CNT_TO_END(i32, i32, i32) #1

declare dso_local i32 @dma_get_cache_alignment(...) #1

declare dso_local i32 @wr_regb(%struct.uart_port*, i32, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @s3c24xx_serial_stop_tx(%struct.uart_port*) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @s3c24xx_serial_start_tx_dma(%struct.s3c24xx_uart_port*, i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
