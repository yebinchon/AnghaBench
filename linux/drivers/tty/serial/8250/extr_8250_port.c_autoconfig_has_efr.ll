; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_autoconfig_has_efr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_autoconfig_has_efr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@UART_CAP_EFR = common dso_local global i32 0, align 4
@UART_CAP_SLEEP = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_CONF_MODE_B = common dso_local global i32 0, align 4
@UART_EFR = common dso_local global i32 0, align 4
@UART_EFR_ECB = common dso_local global i32 0, align 4
@UART_ID1 = common dso_local global i32 0, align 4
@UART_ID2 = common dso_local global i32 0, align 4
@UART_ID3 = common dso_local global i32 0, align 4
@UART_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"950id=%02x:%02x:%02x:%02x \00", align 1
@PORT_16C950 = common dso_local global i32 0, align 4
@UART_BUG_QUOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"850id=%04x \00", align 1
@PORT_16850 = common dso_local global i32 0, align 4
@PORT_16654 = common dso_local global i32 0, align 4
@PORT_16650V2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*)* @autoconfig_has_efr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autoconfig_has_efr(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %7 = load i32, i32* @UART_CAP_EFR, align 4
  %8 = load i32, i32* @UART_CAP_SLEEP, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %15 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %17 = load i32, i32* @UART_LCR, align 4
  %18 = load i32, i32* @UART_LCR_CONF_MODE_B, align 4
  %19 = call i32 @serial_out(%struct.uart_8250_port* %16, i32 %17, i32 %18)
  %20 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %21 = load i32, i32* @UART_EFR, align 4
  %22 = load i32, i32* @UART_EFR_ECB, align 4
  %23 = call i32 @serial_out(%struct.uart_8250_port* %20, i32 %21, i32 %22)
  %24 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %25 = load i32, i32* @UART_LCR, align 4
  %26 = call i32 @serial_out(%struct.uart_8250_port* %24, i32 %25, i32 0)
  %27 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %28 = load i32, i32* @UART_ID1, align 4
  %29 = call i32 @serial_icr_read(%struct.uart_8250_port* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %31 = load i32, i32* @UART_ID2, align 4
  %32 = call i32 @serial_icr_read(%struct.uart_8250_port* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %34 = load i32, i32* @UART_ID3, align 4
  %35 = call i32 @serial_icr_read(%struct.uart_8250_port* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %37 = load i32, i32* @UART_REV, align 4
  %38 = call i32 @serial_icr_read(%struct.uart_8250_port* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (i8*, i32, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 22
  br i1 %45, label %46, label %75

46:                                               ; preds = %1
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 201
  br i1 %48, label %49, label %75

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 80
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 82
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 84
  br i1 %57, label %58, label %75

58:                                               ; preds = %55, %52, %49
  %59 = load i32, i32* @PORT_16C950, align 4
  %60 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %61 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 82
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* @UART_BUG_QUOT, align 4
  %70 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %71 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %65, %58
  br label %109

75:                                               ; preds = %55, %46, %1
  %76 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %77 = call i32 @autoconfig_read_divisor_id(%struct.uart_8250_port* %76)
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 (i8*, i32, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %3, align 4
  %81 = lshr i32 %80, 8
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %82, 16
  br i1 %83, label %90, label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 18
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  %89 = icmp eq i32 %88, 20
  br i1 %89, label %90, label %95

90:                                               ; preds = %87, %84, %75
  %91 = load i32, i32* @PORT_16850, align 4
  %92 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %93 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  br label %109

95:                                               ; preds = %87
  %96 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %97 = call i32 @size_fifo(%struct.uart_8250_port* %96)
  %98 = icmp eq i32 %97, 64
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i32, i32* @PORT_16654, align 4
  %101 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %102 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  br label %109

104:                                              ; preds = %95
  %105 = load i32, i32* @PORT_16650V2, align 4
  %106 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %107 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 4
  br label %109

109:                                              ; preds = %74, %90, %104, %99
  ret void
}

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @serial_icr_read(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @DEBUG_AUTOCONF(i8*, i32, ...) #1

declare dso_local i32 @autoconfig_read_divisor_id(%struct.uart_8250_port*) #1

declare dso_local i32 @size_fifo(%struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
