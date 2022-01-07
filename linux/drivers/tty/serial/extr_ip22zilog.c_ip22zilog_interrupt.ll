; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ip22zilog.c_ip22zilog_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ip22zilog.c_ip22zilog_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_ip22zilog_port = type { %struct.uart_ip22zilog_port*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.zilog_channel = type { i32 }

@R3 = common dso_local global i32 0, align 4
@CHAEXT = common dso_local global i8 0, align 1
@CHATxIP = common dso_local global i8 0, align 1
@CHARxIP = common dso_local global i8 0, align 1
@RES_H_IUS = common dso_local global i32 0, align 4
@CHBEXT = common dso_local global i8 0, align 1
@CHBTxIP = common dso_local global i8 0, align 1
@CHBRxIP = common dso_local global i8 0, align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ip22zilog_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip22zilog_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_ip22zilog_port*, align 8
  %6 = alloca %struct.zilog_channel*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.uart_ip22zilog_port*
  store %struct.uart_ip22zilog_port* %10, %struct.uart_ip22zilog_port** %5, align 8
  br label %11

11:                                               ; preds = %170, %2
  %12 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %13 = icmp ne %struct.uart_ip22zilog_port* %12, null
  br i1 %13, label %14, label %174

14:                                               ; preds = %11
  %15 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %16 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %15, i32 0, i32 1
  %17 = call %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(%struct.TYPE_4__* %16)
  store %struct.zilog_channel* %17, %struct.zilog_channel** %6, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %19 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %23 = load i32, i32* @R3, align 4
  %24 = call zeroext i8 @read_zsreg(%struct.zilog_channel* %22, i32 %23)
  store i8 %24, i8* %7, align 1
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @CHAEXT, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @CHATxIP, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %28, %30
  %32 = load i8, i8* @CHARxIP, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %31, %33
  %35 = and i32 %26, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %14
  %38 = load i32, i32* @RES_H_IUS, align 4
  %39 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %40 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %39, i32 0, i32 0
  %41 = call i32 @writeb(i32 %38, i32* %40)
  %42 = call i32 (...) @ZSDELAY()
  %43 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %44 = call i32 @ZS_WSYNC(%struct.zilog_channel* %43)
  %45 = load i8, i8* %7, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @CHARxIP, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %37
  %52 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %53 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %54 = call i32 @ip22zilog_receive_chars(%struct.uart_ip22zilog_port* %52, %struct.zilog_channel* %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %37
  %56 = load i8, i8* %7, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* @CHAEXT, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %64 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %65 = call i32 @ip22zilog_status_handle(%struct.uart_ip22zilog_port* %63, %struct.zilog_channel* %64)
  br label %66

66:                                               ; preds = %62, %55
  %67 = load i8, i8* %7, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* @CHATxIP, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %75 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %76 = call i32 @ip22zilog_transmit_chars(%struct.uart_ip22zilog_port* %74, %struct.zilog_channel* %75)
  br label %77

77:                                               ; preds = %73, %66
  br label %78

78:                                               ; preds = %77, %14
  %79 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %80 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %87 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = call i32 @tty_flip_buffer_push(i32* %90)
  br label %92

92:                                               ; preds = %85, %78
  %93 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %94 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %93, i32 0, i32 0
  %95 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %94, align 8
  store %struct.uart_ip22zilog_port* %95, %struct.uart_ip22zilog_port** %5, align 8
  %96 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %97 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %96, i32 0, i32 1
  %98 = call %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(%struct.TYPE_4__* %97)
  store %struct.zilog_channel* %98, %struct.zilog_channel** %6, align 8
  store i32 0, i32* %8, align 4
  %99 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %100 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = call i32 @spin_lock(i32* %101)
  %103 = load i8, i8* %7, align 1
  %104 = zext i8 %103 to i32
  %105 = load i8, i8* @CHBEXT, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8, i8* @CHBTxIP, align 1
  %108 = zext i8 %107 to i32
  %109 = or i32 %106, %108
  %110 = load i8, i8* @CHBRxIP, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %109, %111
  %113 = and i32 %104, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %156

115:                                              ; preds = %92
  %116 = load i32, i32* @RES_H_IUS, align 4
  %117 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %118 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %117, i32 0, i32 0
  %119 = call i32 @writeb(i32 %116, i32* %118)
  %120 = call i32 (...) @ZSDELAY()
  %121 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %122 = call i32 @ZS_WSYNC(%struct.zilog_channel* %121)
  %123 = load i8, i8* %7, align 1
  %124 = zext i8 %123 to i32
  %125 = load i8, i8* @CHBRxIP, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %124, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %115
  %130 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %131 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %132 = call i32 @ip22zilog_receive_chars(%struct.uart_ip22zilog_port* %130, %struct.zilog_channel* %131)
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %129, %115
  %134 = load i8, i8* %7, align 1
  %135 = zext i8 %134 to i32
  %136 = load i8, i8* @CHBEXT, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %135, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %142 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %143 = call i32 @ip22zilog_status_handle(%struct.uart_ip22zilog_port* %141, %struct.zilog_channel* %142)
  br label %144

144:                                              ; preds = %140, %133
  %145 = load i8, i8* %7, align 1
  %146 = zext i8 %145 to i32
  %147 = load i8, i8* @CHBTxIP, align 1
  %148 = zext i8 %147 to i32
  %149 = and i32 %146, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %153 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %154 = call i32 @ip22zilog_transmit_chars(%struct.uart_ip22zilog_port* %152, %struct.zilog_channel* %153)
  br label %155

155:                                              ; preds = %151, %144
  br label %156

156:                                              ; preds = %155, %92
  %157 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %158 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = call i32 @spin_unlock(i32* %159)
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %156
  %164 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %165 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = call i32 @tty_flip_buffer_push(i32* %168)
  br label %170

170:                                              ; preds = %163, %156
  %171 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %172 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %171, i32 0, i32 0
  %173 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %172, align 8
  store %struct.uart_ip22zilog_port* %173, %struct.uart_ip22zilog_port** %5, align 8
  br label %11

174:                                              ; preds = %11
  %175 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %175
}

declare dso_local %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local zeroext i8 @read_zsreg(%struct.zilog_channel*, i32) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @ZSDELAY(...) #1

declare dso_local i32 @ZS_WSYNC(%struct.zilog_channel*) #1

declare dso_local i32 @ip22zilog_receive_chars(%struct.uart_ip22zilog_port*, %struct.zilog_channel*) #1

declare dso_local i32 @ip22zilog_status_handle(%struct.uart_ip22zilog_port*, %struct.zilog_channel*) #1

declare dso_local i32 @ip22zilog_transmit_chars(%struct.uart_ip22zilog_port*, %struct.zilog_channel*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
