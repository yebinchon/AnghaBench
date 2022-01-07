; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_txfill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_txfill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sci_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.plat_sci_reg = type { i64 }

@SCTFDR = common dso_local global i32 0, align 4
@SCFDR = common dso_local global i32 0, align 4
@SCxSR = common dso_local global i32 0, align 4
@SCI_TDRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @sci_txfill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_txfill(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.sci_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.plat_sci_reg*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.sci_port* @to_sci_port(%struct.uart_port* %7)
  store %struct.sci_port* %8, %struct.sci_port** %4, align 8
  %9 = load %struct.sci_port*, %struct.sci_port** %4, align 8
  %10 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 1
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %17 = load i32, i32* @SCTFDR, align 4
  %18 = call %struct.plat_sci_reg* @sci_getreg(%struct.uart_port* %16, i32 %17)
  store %struct.plat_sci_reg* %18, %struct.plat_sci_reg** %6, align 8
  %19 = load %struct.plat_sci_reg*, %struct.plat_sci_reg** %6, align 8
  %20 = getelementptr inbounds %struct.plat_sci_reg, %struct.plat_sci_reg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %25 = load i32, i32* @SCTFDR, align 4
  %26 = call i32 @serial_port_in(%struct.uart_port* %24, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %2, align 4
  br label %51

29:                                               ; preds = %1
  %30 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %31 = load i32, i32* @SCFDR, align 4
  %32 = call %struct.plat_sci_reg* @sci_getreg(%struct.uart_port* %30, i32 %31)
  store %struct.plat_sci_reg* %32, %struct.plat_sci_reg** %6, align 8
  %33 = load %struct.plat_sci_reg*, %struct.plat_sci_reg** %6, align 8
  %34 = getelementptr inbounds %struct.plat_sci_reg, %struct.plat_sci_reg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %39 = load i32, i32* @SCFDR, align 4
  %40 = call i32 @serial_port_in(%struct.uart_port* %38, i32 %39)
  %41 = ashr i32 %40, 8
  store i32 %41, i32* %2, align 4
  br label %51

42:                                               ; preds = %29
  %43 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %44 = load i32, i32* @SCxSR, align 4
  %45 = call i32 @serial_port_in(%struct.uart_port* %43, i32 %44)
  %46 = load i32, i32* @SCI_TDRE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %42, %37, %23
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.sci_port* @to_sci_port(%struct.uart_port*) #1

declare dso_local %struct.plat_sci_reg* @sci_getreg(%struct.uart_port*, i32) #1

declare dso_local i32 @serial_port_in(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
