; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_serial_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_serial_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64 }
%struct.plat_sci_reg = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Invalid register access\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32, i32)* @sci_serial_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_serial_out(%struct.uart_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.plat_sci_reg*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.plat_sci_reg* @sci_getreg(%struct.uart_port* %8, i32 %9)
  store %struct.plat_sci_reg* %10, %struct.plat_sci_reg** %7, align 8
  %11 = load %struct.plat_sci_reg*, %struct.plat_sci_reg** %7, align 8
  %12 = getelementptr inbounds %struct.plat_sci_reg, %struct.plat_sci_reg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.plat_sci_reg*, %struct.plat_sci_reg** %7, align 8
  %21 = getelementptr inbounds %struct.plat_sci_reg, %struct.plat_sci_reg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %22, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %19, %27
  %29 = call i32 @iowrite8(i32 %16, i64 %28)
  br label %53

30:                                               ; preds = %3
  %31 = load %struct.plat_sci_reg*, %struct.plat_sci_reg** %7, align 8
  %32 = getelementptr inbounds %struct.plat_sci_reg, %struct.plat_sci_reg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 16
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.plat_sci_reg*, %struct.plat_sci_reg** %7, align 8
  %41 = getelementptr inbounds %struct.plat_sci_reg, %struct.plat_sci_reg* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %42, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %39, %47
  %49 = call i32 @iowrite16(i32 %36, i64 %48)
  br label %52

50:                                               ; preds = %30
  %51 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %35
  br label %53

53:                                               ; preds = %52, %15
  ret void
}

declare dso_local %struct.plat_sci_reg* @sci_getreg(%struct.uart_port*, i32) #1

declare dso_local i32 @iowrite8(i32, i64) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
