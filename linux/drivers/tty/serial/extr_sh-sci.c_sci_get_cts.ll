; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_get_cts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_get_cts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }
%struct.TYPE_2__ = type { i64 }

@PORT_SCIFA = common dso_local global i64 0, align 8
@PORT_SCIFB = common dso_local global i64 0, align 8
@SCPDR = common dso_local global i32 0, align 4
@SCPDR_CTSD = common dso_local global i32 0, align 4
@SCSPTR = common dso_local global i32 0, align 4
@SCSPTR_CTSDT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @sci_get_cts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_get_cts(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %5 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PORT_SCIFA, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PORT_SCIFB, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %9, %1
  %16 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %17 = load i32, i32* @SCPDR, align 4
  %18 = call i32 @serial_port_in(%struct.uart_port* %16, i32 %17)
  %19 = load i32, i32* @SCPDR_CTSD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %2, align 4
  br label %42

24:                                               ; preds = %9
  %25 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %26 = load i32, i32* @SCSPTR, align 4
  %27 = call %struct.TYPE_2__* @sci_getreg(%struct.uart_port* %25, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %33 = load i32, i32* @SCSPTR, align 4
  %34 = call i32 @serial_port_in(%struct.uart_port* %32, i32 %33)
  %35 = load i32, i32* @SCSPTR_CTSDT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %31, %15
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local %struct.TYPE_2__* @sci_getreg(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
