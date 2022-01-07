; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_mid.c_mid8250_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_mid.c_mid8250_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i64, %struct.mid8250* }
%struct.mid8250 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ktermios = type { i32 }

@INTEL_MID_UART_PS = common dso_local global i64 0, align 8
@INTEL_MID_UART_MUL = common dso_local global i64 0, align 8
@INTEL_MID_UART_DIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @mid8250_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mid8250_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mid8250*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %14 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %15 = call i32 @tty_termios_baud_rate(%struct.ktermios* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 2
  %18 = load %struct.mid8250*, %struct.mid8250** %17, align 8
  store %struct.mid8250* %18, %struct.mid8250** %8, align 8
  store i16 16, i16* %9, align 2
  %19 = load i32, i32* %7, align 4
  %20 = load i16, i16* %9, align 2
  %21 = zext i16 %20 to i32
  %22 = mul i32 %19, %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %10, align 8
  %24 = call i32 @BIT(i32 24)
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i64, i64* %10, align 8
  br label %32

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i64 [ %30, %29 ], [ 153600, %31 ]
  store i64 %33, i64* %10, align 8
  %34 = load %struct.mid8250*, %struct.mid8250** %8, align 8
  %35 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %32
  %42 = load %struct.mid8250*, %struct.mid8250** %8, align 8
  %43 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = icmp ugt i64 %46, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load %struct.mid8250*, %struct.mid8250** %8, align 8
  %52 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = udiv i64 %55, %57
  %59 = trunc i64 %58 to i16
  store i16 %59, i16* %9, align 2
  br label %61

60:                                               ; preds = %41
  store i16 1, i16* %9, align 2
  br label %61

61:                                               ; preds = %60, %50
  %62 = load i32, i32* %7, align 4
  %63 = load i16, i16* %9, align 2
  %64 = zext i16 %63 to i32
  %65 = mul i32 %62, %64
  %66 = zext i32 %65 to i64
  store i64 %66, i64* %10, align 8
  br label %78

67:                                               ; preds = %32
  %68 = load %struct.mid8250*, %struct.mid8250** %8, align 8
  %69 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = udiv i64 %72, %73
  %75 = call i64 @rounddown_pow_of_two(i64 %74)
  %76 = load i64, i64* %10, align 8
  %77 = mul i64 %76, %75
  store i64 %77, i64* %10, align 8
  br label %78

78:                                               ; preds = %67, %61
  %79 = load i64, i64* %10, align 8
  %80 = load %struct.mid8250*, %struct.mid8250** %8, align 8
  %81 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @rational_best_approximation(i64 %79, i64 %84, i64 %85, i64 %86, i64* %12, i64* %13)
  %88 = load i64, i64* %10, align 8
  %89 = mul i64 %88, 16
  %90 = load i16, i16* %9, align 2
  %91 = zext i16 %90 to i64
  %92 = udiv i64 %89, %91
  %93 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %94 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i16, i16* %9, align 2
  %96 = zext i16 %95 to i64
  %97 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %98 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @INTEL_MID_UART_PS, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writel(i64 %96, i64 %101)
  %103 = load i64, i64* %12, align 8
  %104 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %105 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @INTEL_MID_UART_MUL, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel(i64 %103, i64 %108)
  %110 = load i64, i64* %13, align 8
  %111 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %112 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @INTEL_MID_UART_DIV, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i64 %110, i64 %115)
  %117 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %118 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %119 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %120 = call i32 @serial8250_do_set_termios(%struct.uart_port* %117, %struct.ktermios* %118, %struct.ktermios* %119)
  ret void
}

declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @rounddown_pow_of_two(i64) #1

declare dso_local i32 @rational_best_approximation(i64, i64, i64, i64, i64*, i64*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @serial8250_do_set_termios(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
