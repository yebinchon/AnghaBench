; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_mpxed_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_mpxed_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sci_port = type { %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { i64, i16 }
%struct.TYPE_4__ = type { i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@SCxSR = common dso_local global i64 0, align 8
@SCSCR = common dso_local global i64 0, align 8
@SCSCR_TIE = common dso_local global i16 0, align 2
@SCSCR_RIE = common dso_local global i16 0, align 2
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sci_mpxed_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_mpxed_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca %struct.uart_port*, align 8
  %10 = alloca %struct.sci_port*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i16 0, i16* %8, align 2
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.uart_port*
  store %struct.uart_port* %13, %struct.uart_port** %9, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %15 = call %struct.sci_port* @to_sci_port(%struct.uart_port* %14)
  store %struct.sci_port* %15, %struct.sci_port** %10, align 8
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %18 = load i64, i64* @SCxSR, align 8
  %19 = call zeroext i16 @serial_port_in(%struct.uart_port* %17, i64 %18)
  store i16 %19, i16* %5, align 2
  %20 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %21 = load i64, i64* @SCSCR, align 8
  %22 = call zeroext i16 @serial_port_in(%struct.uart_port* %20, i64 %21)
  store i16 %22, i16* %6, align 2
  %23 = load %struct.sci_port*, %struct.sci_port** %10, align 8
  %24 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SCxSR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i16, i16* %5, align 2
  store i16 %31, i16* %8, align 2
  br label %52

32:                                               ; preds = %2
  %33 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %34 = load %struct.sci_port*, %struct.sci_port** %10, align 8
  %35 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call %struct.TYPE_4__* @sci_getreg(%struct.uart_port* %33, i64 %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %32
  %44 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %45 = load %struct.sci_port*, %struct.sci_port** %10, align 8
  %46 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call zeroext i16 @serial_port_in(%struct.uart_port* %44, i64 %49)
  store i16 %50, i16* %8, align 2
  br label %51

51:                                               ; preds = %43, %32
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i16, i16* %6, align 2
  %54 = zext i16 %53 to i32
  %55 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %56 = call zeroext i16 @port_rx_irq_mask(%struct.uart_port* %55)
  %57 = zext i16 %56 to i32
  %58 = and i32 %54, %57
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %7, align 2
  %60 = load i16, i16* %5, align 2
  %61 = zext i16 %60 to i32
  %62 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %63 = call zeroext i16 @SCxSR_TDxE(%struct.uart_port* %62)
  %64 = zext i16 %63 to i32
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %52
  %68 = load i16, i16* %6, align 2
  %69 = zext i16 %68 to i32
  %70 = load i16, i16* @SCSCR_TIE, align 2
  %71 = zext i16 %70 to i32
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load %struct.sci_port*, %struct.sci_port** %10, align 8
  %76 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %3, align 4
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @sci_tx_interrupt(i32 %80, i8* %81)
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %79, %74, %67, %52
  %84 = load i16, i16* %5, align 2
  %85 = zext i16 %84 to i32
  %86 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %87 = call zeroext i16 @SCxSR_RDxF(%struct.uart_port* %86)
  %88 = zext i16 %87 to i32
  %89 = and i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %83
  %92 = load %struct.sci_port*, %struct.sci_port** %10, align 8
  %93 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %91, %83
  %97 = load i16, i16* %6, align 2
  %98 = zext i16 %97 to i32
  %99 = load i16, i16* @SCSCR_RIE, align 2
  %100 = zext i16 %99 to i32
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i32, i32* %3, align 4
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 @sci_rx_interrupt(i32 %104, i8* %105)
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %103, %96, %91
  %108 = load i16, i16* %5, align 2
  %109 = zext i16 %108 to i32
  %110 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %111 = call zeroext i16 @SCxSR_ERRORS(%struct.uart_port* %110)
  %112 = zext i16 %111 to i32
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = load i16, i16* %7, align 2
  %117 = zext i16 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32, i32* %3, align 4
  %121 = load i8*, i8** %4, align 8
  %122 = call i32 @sci_er_interrupt(i32 %120, i8* %121)
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %119, %115, %107
  %124 = load i16, i16* %5, align 2
  %125 = zext i16 %124 to i32
  %126 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %127 = call zeroext i16 @SCxSR_BRK(%struct.uart_port* %126)
  %128 = zext i16 %127 to i32
  %129 = and i32 %125, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %123
  %132 = load i16, i16* %7, align 2
  %133 = zext i16 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i32, i32* %3, align 4
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 @sci_br_interrupt(i32 %136, i8* %137)
  store i32 %138, i32* %11, align 4
  br label %139

139:                                              ; preds = %135, %131, %123
  %140 = load i16, i16* %8, align 2
  %141 = zext i16 %140 to i32
  %142 = load %struct.sci_port*, %struct.sci_port** %10, align 8
  %143 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %142, i32 0, i32 0
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i16, i16* %145, align 8
  %147 = zext i16 %146 to i32
  %148 = and i32 %141, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %139
  %151 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %152 = call i32 @sci_handle_fifo_overrun(%struct.uart_port* %151)
  %153 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %153, i32* %11, align 4
  br label %154

154:                                              ; preds = %150, %139
  %155 = load i32, i32* %11, align 4
  ret i32 %155
}

declare dso_local %struct.sci_port* @to_sci_port(%struct.uart_port*) #1

declare dso_local zeroext i16 @serial_port_in(%struct.uart_port*, i64) #1

declare dso_local %struct.TYPE_4__* @sci_getreg(%struct.uart_port*, i64) #1

declare dso_local zeroext i16 @port_rx_irq_mask(%struct.uart_port*) #1

declare dso_local zeroext i16 @SCxSR_TDxE(%struct.uart_port*) #1

declare dso_local i32 @sci_tx_interrupt(i32, i8*) #1

declare dso_local zeroext i16 @SCxSR_RDxF(%struct.uart_port*) #1

declare dso_local i32 @sci_rx_interrupt(i32, i8*) #1

declare dso_local zeroext i16 @SCxSR_ERRORS(%struct.uart_port*) #1

declare dso_local i32 @sci_er_interrupt(i32, i8*) #1

declare dso_local zeroext i16 @SCxSR_BRK(%struct.uart_port*) #1

declare dso_local i32 @sci_br_interrupt(i32, i8*) #1

declare dso_local i32 @sci_handle_fifo_overrun(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
