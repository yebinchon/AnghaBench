; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_set_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_set_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }
%struct.TYPE_2__ = type { i64 }

@PORT_SCIFA = common dso_local global i64 0, align 8
@PORT_SCIFB = common dso_local global i64 0, align 8
@SCPDR = common dso_local global i32 0, align 4
@SCPDR_RTSD = common dso_local global i32 0, align 4
@SCPCR = common dso_local global i32 0, align 4
@SCPCR_RTSC = common dso_local global i32 0, align 4
@SCSPTR = common dso_local global i32 0, align 4
@SCSPTR_RTSDT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @sci_set_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_set_rts(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PORT_SCIFA, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PORT_SCIFB, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %12, %2
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = load i32, i32* @SCPDR, align 4
  %21 = call i32 @serial_port_in(%struct.uart_port* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i32, i32* @SCPDR_RTSD, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %33

29:                                               ; preds = %18
  %30 = load i32, i32* @SCPDR_RTSD, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %35 = load i32, i32* @SCPDR, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @serial_port_out(%struct.uart_port* %34, i32 %35, i32 %36)
  %38 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %39 = load i32, i32* @SCPCR, align 4
  %40 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %41 = load i32, i32* @SCPCR, align 4
  %42 = call i32 @serial_port_in(%struct.uart_port* %40, i32 %41)
  %43 = load i32, i32* @SCPCR_RTSC, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @serial_port_out(%struct.uart_port* %38, i32 %39, i32 %44)
  br label %74

46:                                               ; preds = %12
  %47 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %48 = load i32, i32* @SCSPTR, align 4
  %49 = call %struct.TYPE_2__* @sci_getreg(%struct.uart_port* %47, i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %46
  %54 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %55 = load i32, i32* @SCSPTR, align 4
  %56 = call i32 @serial_port_in(%struct.uart_port* %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i32, i32* @SCSPTR_RTSDT, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %68

64:                                               ; preds = %53
  %65 = load i32, i32* @SCSPTR_RTSDT, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %70 = load i32, i32* @SCSPTR, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @serial_port_out(%struct.uart_port* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %46
  br label %74

74:                                               ; preds = %73, %33
  ret void
}

declare dso_local i32 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local i32 @serial_port_out(%struct.uart_port*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @sci_getreg(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
