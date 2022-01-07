; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i8, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i8*, i64 }

@SCxSR = common dso_local global i32 0, align 4
@SCSCR = common dso_local global i32 0, align 4
@SCSCR_TIE = common dso_local global i16 0, align 2
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@SCxTDR = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sci_transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_transmit_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.circ_buf* %12, %struct.circ_buf** %3, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = call i32 @uart_tx_stopped(%struct.uart_port* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = load i32, i32* @SCxSR, align 4
  %17 = call zeroext i16 @serial_port_in(%struct.uart_port* %15, i32 %16)
  store i16 %17, i16* %5, align 2
  %18 = load i16, i16* %5, align 2
  %19 = zext i16 %18 to i32
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = call zeroext i16 @SCxSR_TDxE(%struct.uart_port* %20)
  %22 = zext i16 %21 to i32
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %53, label %25

25:                                               ; preds = %1
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = load i32, i32* @SCSCR, align 4
  %28 = call zeroext i16 @serial_port_in(%struct.uart_port* %26, i32 %27)
  store i16 %28, i16* %6, align 2
  %29 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %30 = call i64 @uart_circ_empty(%struct.circ_buf* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load i16, i16* @SCSCR_TIE, align 2
  %34 = zext i16 %33 to i32
  %35 = xor i32 %34, -1
  %36 = load i16, i16* %6, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, %35
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %6, align 2
  br label %47

40:                                               ; preds = %25
  %41 = load i16, i16* @SCSCR_TIE, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* %6, align 2
  %44 = zext i16 %43 to i32
  %45 = or i32 %44, %42
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %6, align 2
  br label %47

47:                                               ; preds = %40, %32
  %48 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %49 = load i32, i32* @SCSCR, align 4
  %50 = load i16, i16* %6, align 2
  %51 = trunc i16 %50 to i8
  %52 = call i32 @serial_port_out(%struct.uart_port* %48, i32 %49, i8 zeroext %51)
  br label %128

53:                                               ; preds = %1
  %54 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %55 = call i32 @sci_txroom(%struct.uart_port* %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %105, %53
  %57 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 8
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 0
  %64 = load i8, i8* %63, align 8
  store i8 %64, i8* %8, align 1
  %65 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 0
  store i8 0, i8* %66, align 8
  br label %95

67:                                               ; preds = %56
  %68 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %69 = call i64 @uart_circ_empty(%struct.circ_buf* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %93, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %93, label %74

74:                                               ; preds = %71
  %75 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %76 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %79 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = load i8, i8* %81, align 1
  store i8 %82, i8* %8, align 1
  %83 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %84 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, 1
  %87 = load i32, i32* @UART_XMIT_SIZE, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = and i64 %86, %89
  %91 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %92 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  br label %94

93:                                               ; preds = %71, %67
  br label %109

94:                                               ; preds = %74
  br label %95

95:                                               ; preds = %94, %61
  %96 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %97 = load i32, i32* @SCxTDR, align 4
  %98 = load i8, i8* %8, align 1
  %99 = call i32 @serial_port_out(%struct.uart_port* %96, i32 %97, i8 zeroext %98)
  %100 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %101 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %7, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %56, label %109

109:                                              ; preds = %105, %93
  %110 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %111 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %112 = call i32 @SCxSR_TDxE_CLEAR(%struct.uart_port* %111)
  %113 = call i32 @sci_clear_SCxSR(%struct.uart_port* %110, i32 %112)
  %114 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %115 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %114)
  %116 = load i64, i64* @WAKEUP_CHARS, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %109
  %119 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %120 = call i32 @uart_write_wakeup(%struct.uart_port* %119)
  br label %121

121:                                              ; preds = %118, %109
  %122 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %123 = call i64 @uart_circ_empty(%struct.circ_buf* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %127 = call i32 @sci_stop_tx(%struct.uart_port* %126)
  br label %128

128:                                              ; preds = %47, %125, %121
  ret void
}

declare dso_local i32 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local zeroext i16 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local zeroext i16 @SCxSR_TDxE(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @serial_port_out(%struct.uart_port*, i32, i8 zeroext) #1

declare dso_local i32 @sci_txroom(%struct.uart_port*) #1

declare dso_local i32 @sci_clear_SCxSR(%struct.uart_port*, i32) #1

declare dso_local i32 @SCxSR_TDxE_CLEAR(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @sci_stop_tx(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
