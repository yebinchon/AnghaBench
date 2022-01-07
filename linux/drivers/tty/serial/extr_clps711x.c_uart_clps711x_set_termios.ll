; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_clps711x.c_uart_clps711x_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_clps711x.c_uart_clps711x_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i64 }
%struct.ktermios = type { i32, i32 }

@CMSPAR = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@UBRLCR_WRDLEN5 = common dso_local global i32 0, align 4
@UBRLCR_WRDLEN6 = common dso_local global i32 0, align 4
@UBRLCR_WRDLEN7 = common dso_local global i32 0, align 4
@UBRLCR_WRDLEN8 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UBRLCR_XSTOP = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@UBRLCR_PRTEN = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UBRLCR_EVENPRT = common dso_local global i32 0, align 4
@UBRLCR_FIFOEN = common dso_local global i32 0, align 4
@UARTDR_OVERR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@UARTDR_PARERR = common dso_local global i32 0, align 4
@UARTDR_FRMERR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@UBRLCR_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @uart_clps711x_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_clps711x_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %10 = load i32, i32* @CMSPAR, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %13 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @BRKINT, align 4
  %17 = load i32, i32* @IGNBRK, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %21 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %25 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %26 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %27 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sdiv i32 %29, 4096
  %31 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %33, 16
  %35 = call i32 @uart_get_baud_rate(%struct.uart_port* %24, %struct.ktermios* %25, %struct.ktermios* %26, i32 %30, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @uart_get_divisor(%struct.uart_port* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %40 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CSIZE, align 4
  %43 = and i32 %41, %42
  switch i32 %43, label %51 [
    i32 131, label %44
    i32 130, label %46
    i32 129, label %48
    i32 128, label %50
  ]

44:                                               ; preds = %3
  %45 = load i32, i32* @UBRLCR_WRDLEN5, align 4
  store i32 %45, i32* %7, align 4
  br label %53

46:                                               ; preds = %3
  %47 = load i32, i32* @UBRLCR_WRDLEN6, align 4
  store i32 %47, i32* %7, align 4
  br label %53

48:                                               ; preds = %3
  %49 = load i32, i32* @UBRLCR_WRDLEN7, align 4
  store i32 %49, i32* %7, align 4
  br label %53

50:                                               ; preds = %3
  br label %51

51:                                               ; preds = %3, %50
  %52 = load i32, i32* @UBRLCR_WRDLEN8, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %51, %48, %46, %44
  %54 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %55 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CSTOPB, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @UBRLCR_XSTOP, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %53
  %65 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %66 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PARENB, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %64
  %72 = load i32, i32* @UBRLCR_PRTEN, align 4
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %76 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PARODD, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %71
  %82 = load i32, i32* @UBRLCR_EVENPRT, align 4
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %81, %71
  br label %86

86:                                               ; preds = %85, %64
  %87 = load i32, i32* @UBRLCR_FIFOEN, align 4
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* @UARTDR_OVERR, align 4
  %91 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %92 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %94 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @INPCK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %86
  %100 = load i32, i32* @UARTDR_PARERR, align 4
  %101 = load i32, i32* @UARTDR_FRMERR, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %104 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %99, %86
  %108 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %109 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %108, i32 0, i32 2
  store i32 0, i32* %109, align 8
  %110 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %111 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @CREAD, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %107
  %117 = load i32, i32* @UARTDR_OVERR, align 4
  %118 = load i32, i32* @UARTDR_PARERR, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @UARTDR_FRMERR, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %123 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %116, %107
  %127 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %128 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %129 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @uart_update_timeout(%struct.uart_port* %127, i32 %130, i32 %131)
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %9, align 4
  %135 = sub i32 %134, 1
  %136 = or i32 %133, %135
  %137 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %138 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @UBRLCR_OFFSET, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @writel(i32 %136, i64 %141)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
