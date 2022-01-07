; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_omap_port = type { i8, i8, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"serial_omap_set_mctrl+%d\0A\00", align 1
@TIOCM_RTS = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i8 0, align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i8 0, align 1
@TIOCM_OUT1 = common dso_local global i32 0, align 4
@UART_MCR_OUT1 = common dso_local global i8 0, align 1
@TIOCM_OUT2 = common dso_local global i32 0, align 4
@UART_MCR_OUT2 = common dso_local global i8 0, align 1
@TIOCM_LOOP = common dso_local global i32 0, align 4
@UART_MCR_LOOP = common dso_local global i8 0, align 1
@UART_MCR = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_CONF_MODE_B = common dso_local global i8 0, align 1
@UPSTAT_AUTORTS = common dso_local global i32 0, align 4
@UART_EFR_RTS = common dso_local global i8 0, align 1
@UART_EFR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @serial_omap_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_omap_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_omap_port*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = call %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port* %9)
  store %struct.uart_omap_port* %10, %struct.uart_omap_port** %5, align 8
  store i8 0, i8* %6, align 1
  %11 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %12 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %16 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @TIOCM_RTS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i8, i8* @UART_MCR_RTS, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %6, align 1
  br label %31

31:                                               ; preds = %24, %2
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @TIOCM_DTR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i8, i8* @UART_MCR_DTR, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* %6, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, %38
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %6, align 1
  br label %43

43:                                               ; preds = %36, %31
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @TIOCM_OUT1, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i8, i8* @UART_MCR_OUT1, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* %6, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, %50
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %6, align 1
  br label %55

55:                                               ; preds = %48, %43
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @TIOCM_OUT2, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i8, i8* @UART_MCR_OUT2, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* %6, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %64, %62
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %6, align 1
  br label %67

67:                                               ; preds = %60, %55
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @TIOCM_LOOP, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i8, i8* @UART_MCR_LOOP, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* %6, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %76, %74
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %6, align 1
  br label %79

79:                                               ; preds = %72, %67
  %80 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %81 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @pm_runtime_get_sync(i32 %82)
  %84 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %85 = load i32, i32* @UART_MCR, align 4
  %86 = call zeroext i8 @serial_in(%struct.uart_omap_port* %84, i32 %85)
  store i8 %86, i8* %7, align 1
  %87 = load i8, i8* @UART_MCR_LOOP, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* @UART_MCR_OUT2, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %88, %90
  %92 = load i8, i8* @UART_MCR_OUT1, align 1
  %93 = zext i8 %92 to i32
  %94 = or i32 %91, %93
  %95 = load i8, i8* @UART_MCR_DTR, align 1
  %96 = zext i8 %95 to i32
  %97 = or i32 %94, %96
  %98 = load i8, i8* @UART_MCR_RTS, align 1
  %99 = zext i8 %98 to i32
  %100 = or i32 %97, %99
  %101 = xor i32 %100, -1
  %102 = load i8, i8* %7, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %103, %101
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %7, align 1
  %106 = load i8, i8* %7, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* %6, align 1
  %109 = zext i8 %108 to i32
  %110 = or i32 %107, %109
  %111 = trunc i32 %110 to i8
  %112 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %113 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %112, i32 0, i32 0
  store i8 %111, i8* %113, align 4
  %114 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %115 = load i32, i32* @UART_MCR, align 4
  %116 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %117 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %116, i32 0, i32 0
  %118 = load i8, i8* %117, align 4
  %119 = call i32 @serial_out(%struct.uart_omap_port* %114, i32 %115, i8 zeroext %118)
  %120 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %121 = load i32, i32* @UART_LCR, align 4
  %122 = call zeroext i8 @serial_in(%struct.uart_omap_port* %120, i32 %121)
  store i8 %122, i8* %8, align 1
  %123 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %124 = load i32, i32* @UART_LCR, align 4
  %125 = load i8, i8* @UART_LCR_CONF_MODE_B, align 1
  %126 = call i32 @serial_out(%struct.uart_omap_port* %123, i32 %124, i8 zeroext %125)
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @TIOCM_RTS, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %79
  %132 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %133 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @UPSTAT_AUTORTS, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %131
  %139 = load i8, i8* @UART_EFR_RTS, align 1
  %140 = zext i8 %139 to i32
  %141 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %142 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %141, i32 0, i32 1
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = or i32 %144, %140
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %142, align 1
  br label %157

147:                                              ; preds = %131, %79
  %148 = load i8, i8* @UART_EFR_RTS, align 1
  %149 = zext i8 %148 to i32
  %150 = xor i32 %149, -1
  %151 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %152 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %151, i32 0, i32 1
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = and i32 %154, %150
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %152, align 1
  br label %157

157:                                              ; preds = %147, %138
  %158 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %159 = load i32, i32* @UART_EFR, align 4
  %160 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %161 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %160, i32 0, i32 1
  %162 = load i8, i8* %161, align 1
  %163 = call i32 @serial_out(%struct.uart_omap_port* %158, i32 %159, i8 zeroext %162)
  %164 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %165 = load i32, i32* @UART_LCR, align 4
  %166 = load i8, i8* %8, align 1
  %167 = call i32 @serial_out(%struct.uart_omap_port* %164, i32 %165, i8 zeroext %166)
  %168 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %169 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @pm_runtime_mark_last_busy(i32 %170)
  %172 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %173 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @pm_runtime_put_autosuspend(i32 %174)
  ret void
}

declare dso_local %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local zeroext i8 @serial_in(%struct.uart_omap_port*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_omap_port*, i32, i8 zeroext) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
