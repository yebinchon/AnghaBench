; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_do_get_divisor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_do_get_divisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }
%struct.uart_8250_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UPF_MAGIC_MULTIPLIER = common dso_local global i32 0, align 4
@PORT_NPCM = common dso_local global i64 0, align 8
@UART_BUG_QUOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32, i32*)* @serial8250_do_get_divisor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial8250_do_get_divisor(%struct.uart_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.uart_8250_port*, align 8
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %10 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %9)
  store %struct.uart_8250_port* %10, %struct.uart_8250_port** %7, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @UPF_MAGIC_MULTIPLIER, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 4
  %23 = icmp eq i32 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 32769, i32* %8, align 4
  br label %57

25:                                               ; preds = %17, %3
  %26 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @UPF_MAGIC_MULTIPLIER, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 8
  %38 = icmp eq i32 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 32770, i32* %8, align 4
  br label %56

40:                                               ; preds = %32, %25
  %41 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %42 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PORT_NPCM, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @npcm_get_divisor(%struct.uart_8250_port* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  br label %55

51:                                               ; preds = %40
  %52 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @uart_get_divisor(%struct.uart_port* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55, %39
  br label %57

57:                                               ; preds = %56, %24
  %58 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %59 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @UART_BUG_QUOT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 255
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %68, %64, %57
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @npcm_get_divisor(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
