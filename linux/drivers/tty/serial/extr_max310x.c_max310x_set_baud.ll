; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_set_baud.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_set_baud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@MAX310X_BRGCFG_4XMODE_BIT = common dso_local global i32 0, align 4
@MAX310X_BRGCFG_2XMODE_BIT = common dso_local global i32 0, align 4
@MAX310X_BRGDIVMSB_REG = common dso_local global i32 0, align 4
@MAX310X_BRGDIVLSB_REG = common dso_local global i32 0, align 4
@MAX310X_BRGCFG_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32)* @max310x_set_baud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max310x_set_baud(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ult i32 %15, 8
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  store i32 4, i32* %8, align 4
  %18 = load i32, i32* @MAX310X_BRGCFG_4XMODE_BIT, align 4
  store i32 %18, i32* %5, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp ult i32 %20, 16
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  store i32 8, i32* %8, align 4
  %23 = load i32, i32* @MAX310X_BRGCFG_2XMODE_BIT, align 4
  store i32 %23, i32* %5, align 4
  br label %25

24:                                               ; preds = %19
  store i32 16, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %22
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = udiv i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %4, align 4
  %32 = mul i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ugt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = urem i32 %38, %39
  %41 = mul i32 16, %40
  %42 = load i32, i32* %9, align 4
  %43 = udiv i32 %41, %42
  store i32 %43, i32* %7, align 4
  br label %45

44:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %35
  %46 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %47 = load i32, i32* @MAX310X_BRGDIVMSB_REG, align 4
  %48 = load i32, i32* %6, align 4
  %49 = lshr i32 %48, 8
  %50 = call i32 @max310x_port_write(%struct.uart_port* %46, i32 %47, i32 %49)
  %51 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %52 = load i32, i32* @MAX310X_BRGDIVLSB_REG, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @max310x_port_write(%struct.uart_port* %51, i32 %52, i32 %53)
  %55 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %56 = load i32, i32* @MAX310X_BRGCFG_REG, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @max310x_port_write(%struct.uart_port* %55, i32 %56, i32 %59)
  %61 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %62 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 16, %63
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %6, align 4
  %67 = mul i32 16, %66
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %67, %68
  %70 = mul i32 %65, %69
  %71 = udiv i32 %64, %70
  ret i32 %71
}

declare dso_local i32 @max310x_port_write(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
