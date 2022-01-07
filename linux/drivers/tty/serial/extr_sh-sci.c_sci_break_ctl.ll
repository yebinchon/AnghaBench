; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_break_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_break_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.TYPE_2__ = type { i32 }

@SCSPTR = common dso_local global i32 0, align 4
@SCSCR = common dso_local global i32 0, align 4
@SCSPTR_SPB2IO = common dso_local global i16 0, align 2
@SCSPTR_SPB2DT = common dso_local global i16 0, align 2
@SCSCR_TE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @sci_break_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_break_ctl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = load i32, i32* @SCSPTR, align 4
  %10 = call %struct.TYPE_2__* @sci_getreg(%struct.uart_port* %8, i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %76

15:                                               ; preds = %2
  %16 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %21 = load i32, i32* @SCSPTR, align 4
  %22 = call zeroext i16 @serial_port_in(%struct.uart_port* %20, i32 %21)
  store i16 %22, i16* %6, align 2
  %23 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %24 = load i32, i32* @SCSCR, align 4
  %25 = call zeroext i16 @serial_port_in(%struct.uart_port* %23, i32 %24)
  store i16 %25, i16* %5, align 2
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %46

28:                                               ; preds = %15
  %29 = load i16, i16* %6, align 2
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* @SCSPTR_SPB2IO, align 2
  %32 = zext i16 %31 to i32
  %33 = or i32 %30, %32
  %34 = load i16, i16* @SCSPTR_SPB2DT, align 2
  %35 = zext i16 %34 to i32
  %36 = xor i32 %35, -1
  %37 = and i32 %33, %36
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %6, align 2
  %39 = load i16, i16* @SCSCR_TE, align 2
  %40 = zext i16 %39 to i32
  %41 = xor i32 %40, -1
  %42 = load i16, i16* %5, align 2
  %43 = zext i16 %42 to i32
  %44 = and i32 %43, %41
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %5, align 2
  br label %63

46:                                               ; preds = %15
  %47 = load i16, i16* %6, align 2
  %48 = zext i16 %47 to i32
  %49 = load i16, i16* @SCSPTR_SPB2DT, align 2
  %50 = zext i16 %49 to i32
  %51 = or i32 %48, %50
  %52 = load i16, i16* @SCSPTR_SPB2IO, align 2
  %53 = zext i16 %52 to i32
  %54 = xor i32 %53, -1
  %55 = and i32 %51, %54
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %6, align 2
  %57 = load i16, i16* @SCSCR_TE, align 2
  %58 = zext i16 %57 to i32
  %59 = load i16, i16* %5, align 2
  %60 = zext i16 %59 to i32
  %61 = or i32 %60, %58
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %5, align 2
  br label %63

63:                                               ; preds = %46, %28
  %64 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %65 = load i32, i32* @SCSPTR, align 4
  %66 = load i16, i16* %6, align 2
  %67 = call i32 @serial_port_out(%struct.uart_port* %64, i32 %65, i16 zeroext %66)
  %68 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %69 = load i32, i32* @SCSCR, align 4
  %70 = load i16, i16* %5, align 2
  %71 = call i32 @serial_port_out(%struct.uart_port* %68, i32 %69, i16 zeroext %70)
  %72 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %73 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %72, i32 0, i32 0
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  br label %76

76:                                               ; preds = %63, %14
  ret void
}

declare dso_local %struct.TYPE_2__* @sci_getreg(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i16 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local i32 @serial_port_out(%struct.uart_port*, i32, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
