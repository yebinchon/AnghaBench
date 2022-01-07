; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { i32, i32, i64, i32, i32 }
%struct.tty_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@UART_LSR_OE = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHOE = common dso_local global i32 0, align 4
@ECHOK = common dso_local global i32 0, align 4
@ECHOKE = common dso_local global i32 0, align 4
@ECHONL = common dso_local global i32 0, align 4
@ECHOPRT = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwtty_port*, %struct.tty_struct*)* @set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_termios(%struct.fwtty_port* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.fwtty_port*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fwtty_port* %0, %struct.fwtty_port** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = call i32 @tty_termios_baud_rate(%struct.TYPE_3__* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @tty_termios_encode_baud_rate(%struct.TYPE_3__* %11, i32 %12, i32 %13)
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = call i64 @C_CSTOPB(%struct.tty_struct* %15)
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 4, i32 2
  %20 = add nsw i32 12, %19
  %21 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %22 = call i64 @C_PARENB(%struct.tty_struct* %21)
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 2, i32 0
  %26 = add nsw i32 %20, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %28 = call i32 @C_CSIZE(%struct.tty_struct* %27)
  switch i32 %28, label %46 [
    i32 131, label %29
    i32 130, label %37
    i32 129, label %40
    i32 128, label %43
  ]

29:                                               ; preds = %2
  %30 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %31 = call i64 @C_CSTOPB(%struct.tty_struct* %30)
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  %35 = load i32, i32* %6, align 4
  %36 = sub i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %46

37:                                               ; preds = %2
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 2
  store i32 %39, i32* %6, align 4
  br label %46

40:                                               ; preds = %2
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, 4
  store i32 %42, i32* %6, align 4
  br label %46

43:                                               ; preds = %2
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, 6
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %2, %43, %40, %37, %29
  %47 = load i32, i32* %5, align 4
  %48 = shl i32 %47, 1
  %49 = load i32, i32* %6, align 4
  %50 = udiv i32 %48, %49
  %51 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %52 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @UART_LSR_OE, align 4
  %54 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %55 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %57 = load i32, i32* @BRKINT, align 4
  %58 = load i32, i32* @PARMRK, align 4
  %59 = or i32 %57, %58
  %60 = call i64 @_I_FLAG(%struct.tty_struct* %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %46
  %63 = load i32, i32* @UART_LSR_BI, align 4
  %64 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %65 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %46
  %69 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %70 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %69, i32 0, i32 3
  store i32 0, i32* %70, align 8
  %71 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %72 = call i64 @I_IGNBRK(%struct.tty_struct* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %68
  %75 = load i32, i32* @UART_LSR_BI, align 4
  %76 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %77 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %81 = call i64 @I_IGNPAR(%struct.tty_struct* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load i32, i32* @UART_LSR_OE, align 4
  %85 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %86 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %74
  br label %90

90:                                               ; preds = %89, %68
  %91 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %92 = call i32 @C_CREAD(%struct.tty_struct* %91)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %97 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %99 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %129

102:                                              ; preds = %90
  %103 = load i32, i32* @ECHO, align 4
  %104 = load i32, i32* @ECHOE, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @ECHOK, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @ECHOKE, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @ECHONL, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @ECHOPRT, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @ECHOCTL, align 4
  %115 = or i32 %113, %114
  %116 = xor i32 %115, -1
  %117 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %118 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %116
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* @ONLCR, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %125 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %123
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %102, %90
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @tty_termios_baud_rate(%struct.TYPE_3__*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @C_CSTOPB(%struct.tty_struct*) #1

declare dso_local i64 @C_PARENB(%struct.tty_struct*) #1

declare dso_local i32 @C_CSIZE(%struct.tty_struct*) #1

declare dso_local i64 @_I_FLAG(%struct.tty_struct*, i32) #1

declare dso_local i64 @I_IGNBRK(%struct.tty_struct*) #1

declare dso_local i64 @I_IGNPAR(%struct.tty_struct*) #1

declare dso_local i32 @C_CREAD(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
