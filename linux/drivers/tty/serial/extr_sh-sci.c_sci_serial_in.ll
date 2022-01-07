; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_serial_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_serial_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64 }
%struct.plat_sci_reg = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Invalid register access\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32)* @sci_serial_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_serial_in(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.plat_sci_reg*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.plat_sci_reg* @sci_getreg(%struct.uart_port* %7, i32 %8)
  store %struct.plat_sci_reg* %9, %struct.plat_sci_reg** %6, align 8
  %10 = load %struct.plat_sci_reg*, %struct.plat_sci_reg** %6, align 8
  %11 = getelementptr inbounds %struct.plat_sci_reg, %struct.plat_sci_reg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.plat_sci_reg*, %struct.plat_sci_reg** %6, align 8
  %19 = getelementptr inbounds %struct.plat_sci_reg, %struct.plat_sci_reg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %17, %25
  %27 = call i32 @ioread8(i64 %26)
  store i32 %27, i32* %3, align 4
  br label %51

28:                                               ; preds = %2
  %29 = load %struct.plat_sci_reg*, %struct.plat_sci_reg** %6, align 8
  %30 = getelementptr inbounds %struct.plat_sci_reg, %struct.plat_sci_reg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.plat_sci_reg*, %struct.plat_sci_reg** %6, align 8
  %38 = getelementptr inbounds %struct.plat_sci_reg, %struct.plat_sci_reg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %39, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %36, %44
  %46 = call i32 @ioread16(i64 %45)
  store i32 %46, i32* %3, align 4
  br label %51

47:                                               ; preds = %28
  %48 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %33, %14
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.plat_sci_reg* @sci_getreg(%struct.uart_port*, i32) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i32 @ioread16(i64) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
