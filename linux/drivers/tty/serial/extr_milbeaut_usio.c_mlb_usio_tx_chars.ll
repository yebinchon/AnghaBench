; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_milbeaut_usio.c_mlb_usio_tx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_milbeaut_usio.c_mlb_usio_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32*, i64 }

@MLB_USIO_REG_FCR = common dso_local global i64 0, align 8
@MLB_USIO_FCR_FTIE = common dso_local global i32 0, align 4
@MLB_USIO_REG_SCR = common dso_local global i64 0, align 8
@MLB_USIO_SCR_TIE = common dso_local global i32 0, align 4
@MLB_USIO_SCR_TBIE = common dso_local global i32 0, align 4
@MLB_USIO_REG_DR = common dso_local global i64 0, align 8
@MLB_USIO_REG_FBYTE = common dso_local global i64 0, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@MLB_USIO_FCR_FDRQ = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @mlb_usio_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlb_usio_tx_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.circ_buf* %8, %struct.circ_buf** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MLB_USIO_REG_FCR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readw(i64 %13)
  %15 = load i32, i32* @MLB_USIO_FCR_FTIE, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MLB_USIO_REG_FCR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writew(i32 %17, i64 %22)
  %24 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MLB_USIO_REG_SCR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readb(i64 %28)
  %30 = load i32, i32* @MLB_USIO_SCR_TIE, align 4
  %31 = load i32, i32* @MLB_USIO_SCR_TBIE, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = and i32 %29, %33
  %35 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MLB_USIO_REG_SCR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writeb(i32 %34, i64 %39)
  %41 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %1
  %46 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MLB_USIO_REG_DR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writew(i32 %48, i64 %53)
  %55 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %56 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %61 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  br label %168

62:                                               ; preds = %1
  %63 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %64 = call i64 @uart_circ_empty(%struct.circ_buf* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %68 = call i64 @uart_tx_stopped(%struct.uart_port* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66, %62
  %71 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %72 = call i32 @mlb_usio_stop_tx(%struct.uart_port* %71)
  br label %168

73:                                               ; preds = %66
  %74 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %75 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %78 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @MLB_USIO_REG_FBYTE, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @readw(i64 %81)
  %83 = and i32 %82, 255
  %84 = sub nsw i32 %76, %83
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %120, %73
  %86 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %87 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %90 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %95 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MLB_USIO_REG_DR, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writew(i32 %93, i64 %98)
  %100 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %101 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, 1
  %104 = load i32, i32* @UART_XMIT_SIZE, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = and i64 %103, %106
  %108 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %109 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %111 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %116 = call i64 @uart_circ_empty(%struct.circ_buf* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %85
  br label %124

119:                                              ; preds = %85
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %4, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %85, label %124

124:                                              ; preds = %120, %118
  %125 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %126 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @MLB_USIO_REG_FCR, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @readw(i64 %129)
  %131 = load i32, i32* @MLB_USIO_FCR_FDRQ, align 4
  %132 = xor i32 %131, -1
  %133 = and i32 %130, %132
  %134 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %135 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @MLB_USIO_REG_FCR, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writew(i32 %133, i64 %138)
  %140 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %141 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @MLB_USIO_REG_SCR, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @readb(i64 %144)
  %146 = load i32, i32* @MLB_USIO_SCR_TBIE, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %149 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @MLB_USIO_REG_SCR, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @writeb(i32 %147, i64 %152)
  %154 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %155 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %154)
  %156 = load i64, i64* @WAKEUP_CHARS, align 8
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %124
  %159 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %160 = call i32 @uart_write_wakeup(%struct.uart_port* %159)
  br label %161

161:                                              ; preds = %158, %124
  %162 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %163 = call i64 @uart_circ_empty(%struct.circ_buf* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %167 = call i32 @mlb_usio_stop_tx(%struct.uart_port* %166)
  br label %168

168:                                              ; preds = %45, %70, %165, %161
  ret void
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @mlb_usio_stop_tx(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
