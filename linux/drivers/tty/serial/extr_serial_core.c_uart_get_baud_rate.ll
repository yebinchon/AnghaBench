; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_get_baud_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_get_baud_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ktermios = type { i32 }

@UPF_SPD_MASK = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_get_baud_rate(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca %struct.ktermios*, align 8
  %9 = alloca %struct.ktermios*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %7, align 8
  store %struct.ktermios* %1, %struct.ktermios** %8, align 8
  store %struct.ktermios* %2, %struct.ktermios** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %17 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @UPF_SPD_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  switch i32 %22, label %27 [
    i32 131, label %23
    i32 129, label %24
    i32 130, label %25
    i32 128, label %26
  ]

23:                                               ; preds = %5
  store i32 57600, i32* %14, align 4
  br label %28

24:                                               ; preds = %5
  store i32 115200, i32* %14, align 4
  br label %28

25:                                               ; preds = %5
  store i32 230400, i32* %14, align 4
  br label %28

26:                                               ; preds = %5
  store i32 460800, i32* %14, align 4
  br label %28

27:                                               ; preds = %5
  store i32 38400, i32* %14, align 4
  br label %28

28:                                               ; preds = %27, %26, %25, %24, %23
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %99, %28
  %30 = load i32, i32* %12, align 4
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %32, label %102

32:                                               ; preds = %29
  %33 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %34 = call i32 @tty_termios_baud_rate(%struct.ktermios* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %38, 38400
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %40, %37, %32
  %43 = load i32, i32* %13, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 1, i32* %15, align 4
  store i32 9600, i32* %13, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp uge i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ule i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %6, align 4
  br label %104

56:                                               ; preds = %50, %46
  %57 = load i32, i32* @CBAUD, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %60 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.ktermios*, %struct.ktermios** %9, align 8
  %64 = icmp ne %struct.ktermios* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %56
  %66 = load %struct.ktermios*, %struct.ktermios** %9, align 8
  %67 = call i32 @tty_termios_baud_rate(%struct.ktermios* %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %65
  store %struct.ktermios* null, %struct.ktermios** %9, align 8
  br label %99

76:                                               ; preds = %56
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ule i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %85, 1
  %87 = load i32, i32* %10, align 4
  %88 = add i32 %87, 1
  %89 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %84, i32 %86, i32 %88)
  br label %97

90:                                               ; preds = %79
  %91 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sub i32 %92, 1
  %94 = load i32, i32* %11, align 4
  %95 = sub i32 %94, 1
  %96 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %91, i32 %93, i32 %95)
  br label %97

97:                                               ; preds = %90, %83
  br label %98

98:                                               ; preds = %97, %76
  br label %99

99:                                               ; preds = %98, %75
  %100 = load i32, i32* %12, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %29

102:                                              ; preds = %29
  %103 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %102, %54
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
