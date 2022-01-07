; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_uartlite.c_ulite_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_uartlite.c_ulite_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@ULITE_STATUS_RXVALID = common dso_local global i32 0, align 4
@ULITE_STATUS_OVERRUN = common dso_local global i32 0, align 4
@ULITE_STATUS_FRAME = common dso_local global i32 0, align 4
@ULITE_RX = common dso_local global i32 0, align 4
@ULITE_STATUS_PARITY = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32)* @ulite_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulite_receive(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_port*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.tty_port* %12, %struct.tty_port** %6, align 8
  store i8 0, i8* %7, align 1
  %13 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %13, i8* %8, align 1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ULITE_STATUS_RXVALID, align 4
  %16 = load i32, i32* @ULITE_STATUS_OVERRUN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ULITE_STATUS_FRAME, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %14, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %131

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ULITE_STATUS_RXVALID, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @ULITE_RX, align 4
  %35 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %36 = call zeroext i8 @uart_in32(i32 %34, %struct.uart_port* %35)
  store i8 %36, i8* %7, align 1
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @ULITE_STATUS_PARITY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  %42 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %28
  br label %48

48:                                               ; preds = %47, %23
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @ULITE_STATUS_OVERRUN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @ULITE_STATUS_FRAME, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %73 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %71, %74
  %76 = load i32, i32* @ULITE_STATUS_PARITY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = load i32, i32* @ULITE_STATUS_RXVALID, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %5, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %79, %70
  %85 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %86 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @ULITE_STATUS_PARITY, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i8, i8* @TTY_PARITY, align 1
  store i8 %95, i8* %8, align 1
  br label %96

96:                                               ; preds = %94, %84
  %97 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %98 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %5, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @ULITE_STATUS_RXVALID, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %96
  %108 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %109 = load i8, i8* %7, align 1
  %110 = load i8, i8* %8, align 1
  %111 = call i32 @tty_insert_flip_char(%struct.tty_port* %108, i8 zeroext %109, i8 signext %110)
  br label %112

112:                                              ; preds = %107, %96
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @ULITE_STATUS_FRAME, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %119 = load i8, i8* @TTY_FRAME, align 1
  %120 = call i32 @tty_insert_flip_char(%struct.tty_port* %118, i8 zeroext 0, i8 signext %119)
  br label %121

121:                                              ; preds = %117, %112
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @ULITE_STATUS_OVERRUN, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %128 = load i8, i8* @TTY_OVERRUN, align 1
  %129 = call i32 @tty_insert_flip_char(%struct.tty_port* %127, i8 zeroext 0, i8 signext %128)
  br label %130

130:                                              ; preds = %126, %121
  store i32 1, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %22
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local zeroext i8 @uart_in32(i32, %struct.uart_port*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i8 zeroext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
