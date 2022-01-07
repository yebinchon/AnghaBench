; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ip22zilog.c_ip22zilog_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ip22zilog.c_ip22zilog_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_ip22zilog_port = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }
%struct.zilog_channel = type { i32, i32 }

@Tx_BUF_EMP = common dso_local global i8 0, align 1
@IP22ZILOG_FLAG_TX_ACTIVE = common dso_local global i32 0, align 4
@IP22ZILOG_FLAG_REGS_HELD = common dso_local global i32 0, align 4
@IP22ZILOG_FLAG_TX_STOPPED = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@RES_Tx_P = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_ip22zilog_port*, %struct.zilog_channel*)* @ip22zilog_transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip22zilog_transmit_chars(%struct.uart_ip22zilog_port* %0, %struct.zilog_channel* %1) #0 {
  %3 = alloca %struct.uart_ip22zilog_port*, align 8
  %4 = alloca %struct.zilog_channel*, align 8
  %5 = alloca %struct.circ_buf*, align 8
  %6 = alloca i8, align 1
  store %struct.uart_ip22zilog_port* %0, %struct.uart_ip22zilog_port** %3, align 8
  store %struct.zilog_channel* %1, %struct.zilog_channel** %4, align 8
  %7 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %8 = call i64 @ZS_IS_CONS(%struct.uart_ip22zilog_port* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %12 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %11, i32 0, i32 0
  %13 = call zeroext i8 @readb(i32* %12)
  store i8 %13, i8* %6, align 1
  %14 = call i32 (...) @ZSDELAY()
  %15 = load i8, i8* %6, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @Tx_BUF_EMP, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %10
  br label %163

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i32, i32* @IP22ZILOG_FLAG_TX_ACTIVE, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %27 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %31 = call i64 @ZS_REGS_HELD(%struct.uart_ip22zilog_port* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %23
  %34 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %35 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %36 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__load_zsregs(%struct.zilog_channel* %34, i32 %37)
  %39 = load i32, i32* @IP22ZILOG_FLAG_REGS_HELD, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %42 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %33, %23
  %46 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %47 = call i64 @ZS_TX_STOPPED(%struct.uart_ip22zilog_port* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32, i32* @IP22ZILOG_FLAG_TX_STOPPED, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %53 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %155

56:                                               ; preds = %45
  %57 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %58 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %56
  %63 = load i32, i32* @IP22ZILOG_FLAG_TX_ACTIVE, align 4
  %64 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %65 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %69 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %73 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %72, i32 0, i32 1
  %74 = call i32 @writeb(i64 %71, i32* %73)
  %75 = call i32 (...) @ZSDELAY()
  %76 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %77 = call i32 @ZS_WSYNC(%struct.zilog_channel* %76)
  %78 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %79 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %85 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  br label %163

87:                                               ; preds = %56
  %88 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %89 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = icmp eq %struct.TYPE_5__* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %155

94:                                               ; preds = %87
  %95 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %96 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store %struct.circ_buf* %99, %struct.circ_buf** %5, align 8
  %100 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %101 = call i64 @uart_circ_empty(%struct.circ_buf* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %155

104:                                              ; preds = %94
  %105 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %106 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %105, i32 0, i32 0
  %107 = call i64 @uart_tx_stopped(%struct.TYPE_7__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %155

110:                                              ; preds = %104
  %111 = load i32, i32* @IP22ZILOG_FLAG_TX_ACTIVE, align 4
  %112 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %113 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %117 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %120 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i64, i64* %118, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %125 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %124, i32 0, i32 1
  %126 = call i32 @writeb(i64 %123, i32* %125)
  %127 = call i32 (...) @ZSDELAY()
  %128 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %129 = call i32 @ZS_WSYNC(%struct.zilog_channel* %128)
  %130 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %131 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, 1
  %134 = load i32, i32* @UART_XMIT_SIZE, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = and i64 %133, %136
  %138 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %139 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %141 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  %146 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %147 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %146)
  %148 = load i64, i64* @WAKEUP_CHARS, align 8
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %110
  %151 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %152 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %151, i32 0, i32 0
  %153 = call i32 @uart_write_wakeup(%struct.TYPE_7__* %152)
  br label %154

154:                                              ; preds = %150, %110
  br label %163

155:                                              ; preds = %109, %103, %93, %49
  %156 = load i64, i64* @RES_Tx_P, align 8
  %157 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %158 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %157, i32 0, i32 0
  %159 = call i32 @writeb(i64 %156, i32* %158)
  %160 = call i32 (...) @ZSDELAY()
  %161 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %162 = call i32 @ZS_WSYNC(%struct.zilog_channel* %161)
  br label %163

163:                                              ; preds = %155, %154, %62, %21
  ret void
}

declare dso_local i64 @ZS_IS_CONS(%struct.uart_ip22zilog_port*) #1

declare dso_local zeroext i8 @readb(i32*) #1

declare dso_local i32 @ZSDELAY(...) #1

declare dso_local i64 @ZS_REGS_HELD(%struct.uart_ip22zilog_port*) #1

declare dso_local i32 @__load_zsregs(%struct.zilog_channel*, i32) #1

declare dso_local i64 @ZS_TX_STOPPED(%struct.uart_ip22zilog_port*) #1

declare dso_local i32 @writeb(i64, i32*) #1

declare dso_local i32 @ZS_WSYNC(%struct.zilog_channel*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_7__*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
