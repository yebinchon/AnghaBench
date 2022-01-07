; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap_8250_get_divisor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap_8250_get_divisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }
%struct.omap8250_priv = type { i32, i8* }

@UPF_SPD_MASK = common dso_local global i32 0, align 4
@UPF_SPD_CUST = common dso_local global i32 0, align 4
@UART_DIV_MAX = common dso_local global i32 0, align 4
@UART_OMAP_MDR1_13X_MODE = common dso_local global i8* null, align 8
@UART_OMAP_MDR1_16X_MODE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32, %struct.omap8250_priv*)* @omap_8250_get_divisor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_8250_get_divisor(%struct.uart_port* %0, i32 %1, %struct.omap8250_priv* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap8250_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.omap8250_priv* %2, %struct.omap8250_priv** %6, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 38400
  br i1 %16, label %17, label %47

17:                                               ; preds = %3
  %18 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @UPF_SPD_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @UPF_SPD_CUST, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %17
  %26 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @UART_DIV_MAX, align 4
  %30 = and i32 %28, %29
  %31 = load %struct.omap8250_priv*, %struct.omap8250_priv** %6, align 8
  %32 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 65536
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %25
  %39 = load i8*, i8** @UART_OMAP_MDR1_13X_MODE, align 8
  %40 = load %struct.omap8250_priv*, %struct.omap8250_priv** %6, align 8
  %41 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  br label %46

42:                                               ; preds = %25
  %43 = load i8*, i8** @UART_OMAP_MDR1_16X_MODE, align 8
  %44 = load %struct.omap8250_priv*, %struct.omap8250_priv** %6, align 8
  %45 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %42, %38
  br label %95

47:                                               ; preds = %17, %3
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = mul i32 13, %49
  %51 = call i32 @DIV_ROUND_CLOSEST(i32 %48, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = mul i32 16, %53
  %55 = call i32 @DIV_ROUND_CLOSEST(i32 %52, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %47
  store i32 1, i32* %8, align 4
  br label %59

59:                                               ; preds = %58, %47
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store i32 1, i32* %9, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %7, align 4
  %66 = udiv i32 %65, 13
  %67 = load i32, i32* %8, align 4
  %68 = udiv i32 %66, %67
  %69 = sub i32 %64, %68
  %70 = call i32 @abs(i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %7, align 4
  %73 = udiv i32 %72, 16
  %74 = load i32, i32* %9, align 4
  %75 = udiv i32 %73, %74
  %76 = sub i32 %71, %75
  %77 = call i32 @abs(i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp uge i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %63
  %82 = load i8*, i8** @UART_OMAP_MDR1_16X_MODE, align 8
  %83 = load %struct.omap8250_priv*, %struct.omap8250_priv** %6, align 8
  %84 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.omap8250_priv*, %struct.omap8250_priv** %6, align 8
  %87 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %95

88:                                               ; preds = %63
  %89 = load i8*, i8** @UART_OMAP_MDR1_13X_MODE, align 8
  %90 = load %struct.omap8250_priv*, %struct.omap8250_priv** %6, align 8
  %91 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.omap8250_priv*, %struct.omap8250_priv** %6, align 8
  %94 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %46, %88, %81
  ret void
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
