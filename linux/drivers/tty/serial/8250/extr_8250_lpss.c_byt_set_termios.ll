; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_lpss.c_byt_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_lpss.c_byt_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32, i64, i32 }
%struct.ktermios = type { i32 }
%struct.lpss8250 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@BYT_PRV_CLK_M_VAL_SHIFT = common dso_local global i64 0, align 8
@BYT_PRV_CLK_N_VAL_SHIFT = common dso_local global i64 0, align 8
@BYT_PRV_CLK = common dso_local global i64 0, align 8
@BYT_PRV_CLK_EN = common dso_local global i32 0, align 4
@BYT_PRV_CLK_UPDATE = common dso_local global i32 0, align 4
@UPSTAT_AUTOCTS = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @byt_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @byt_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpss8250*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %15 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %16 = call i32 @tty_termios_baud_rate(%struct.ktermios* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.lpss8250* @to_lpss8250(i32 %19)
  store %struct.lpss8250* %20, %struct.lpss8250** %8, align 8
  %21 = load %struct.lpss8250*, %struct.lpss8250** %8, align 8
  %22 = getelementptr inbounds %struct.lpss8250, %struct.lpss8250* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = mul i32 %26, 16
  %28 = zext i32 %27 to i64
  store i64 %28, i64* %10, align 8
  %29 = call i32 @BIT(i32 15)
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i64, i64* %10, align 8
  br label %37

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i64 [ %35, %34 ], [ 153600, %36 ]
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = udiv i64 %39, %40
  %42 = call i64 @rounddown_pow_of_two(i64 %41)
  %43 = load i64, i64* %10, align 8
  %44 = mul i64 %43, %42
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @rational_best_approximation(i64 %45, i64 %46, i64 %47, i64 %48, i64* %12, i64* %13)
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %52 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @BYT_PRV_CLK_M_VAL_SHIFT, align 8
  %55 = shl i64 %53, %54
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* @BYT_PRV_CLK_N_VAL_SHIFT, align 8
  %58 = shl i64 %56, %57
  %59 = or i64 %55, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BYT_PRV_CLK, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  %68 = load i32, i32* @BYT_PRV_CLK_EN, align 4
  %69 = load i32, i32* @BYT_PRV_CLK_UPDATE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %14, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %75 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @BYT_PRV_CLK, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  %80 = load i32, i32* @UPSTAT_AUTOCTS, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %83 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %87 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CRTSCTS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %37
  %93 = load i32, i32* @UPSTAT_AUTOCTS, align 4
  %94 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %95 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %37
  %99 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %100 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %101 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %102 = call i32 @serial8250_do_set_termios(%struct.uart_port* %99, %struct.ktermios* %100, %struct.ktermios* %101)
  ret void
}

declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local %struct.lpss8250* @to_lpss8250(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @rounddown_pow_of_two(i64) #1

declare dso_local i32 @rational_best_approximation(i64, i64, i64, i64, i64*, i64*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @serial8250_do_set_termios(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
