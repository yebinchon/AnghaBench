; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.uart_state* }
%struct.uart_state = type { %struct.circ_buf }
%struct.circ_buf = type { i32, i64, i32 }
%struct.uart_port = type { i32 }

@EL3HLT = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @uart_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uart_state*, align 8
  %9 = alloca %struct.uart_port*, align 8
  %10 = alloca %struct.circ_buf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 0
  %16 = load %struct.uart_state*, %struct.uart_state** %15, align 8
  store %struct.uart_state* %16, %struct.uart_state** %8, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.uart_state*, %struct.uart_state** %8, align 8
  %18 = icmp ne %struct.uart_state* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = call i32 @WARN_ON(i32 1)
  %21 = load i32, i32* @EL3HLT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %98

23:                                               ; preds = %3
  %24 = load %struct.uart_state*, %struct.uart_state** %8, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call %struct.uart_port* @uart_port_lock(%struct.uart_state* %24, i64 %25)
  store %struct.uart_port* %26, %struct.uart_port** %9, align 8
  %27 = load %struct.uart_state*, %struct.uart_state** %8, align 8
  %28 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %27, i32 0, i32 0
  store %struct.circ_buf* %28, %struct.circ_buf** %10, align 8
  %29 = load %struct.circ_buf*, %struct.circ_buf** %10, align 8
  %30 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %23
  %34 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @uart_port_unlock(%struct.uart_port* %34, i64 %35)
  store i32 0, i32* %4, align 4
  br label %98

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %59, %37
  %39 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %40 = icmp ne %struct.uart_port* %39, null
  br i1 %40, label %41, label %91

41:                                               ; preds = %38
  %42 = load %struct.circ_buf*, %struct.circ_buf** %10, align 8
  %43 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.circ_buf*, %struct.circ_buf** %10, align 8
  %46 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @UART_XMIT_SIZE, align 4
  %49 = call i32 @CIRC_SPACE_TO_END(i32 %44, i32 %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %53, %41
  %56 = load i32, i32* %12, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %91

59:                                               ; preds = %55
  %60 = load %struct.circ_buf*, %struct.circ_buf** %10, align 8
  %61 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.circ_buf*, %struct.circ_buf** %10, align 8
  %64 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %62, %66
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @memcpy(i64 %67, i8* %68, i32 %69)
  %71 = load %struct.circ_buf*, %struct.circ_buf** %10, align 8
  %72 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* @UART_XMIT_SIZE, align 4
  %77 = sub nsw i32 %76, 1
  %78 = and i32 %75, %77
  %79 = load %struct.circ_buf*, %struct.circ_buf** %10, align 8
  %80 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i8*, i8** %6, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %6, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %7, align 4
  %87 = sub nsw i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %13, align 4
  br label %38

91:                                               ; preds = %58, %38
  %92 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %93 = call i32 @__uart_start(%struct.tty_struct* %92)
  %94 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %95 = load i64, i64* %11, align 8
  %96 = call i32 @uart_port_unlock(%struct.uart_port* %94, i64 %95)
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %91, %33, %19
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.uart_port* @uart_port_lock(%struct.uart_state*, i64) #1

declare dso_local i32 @uart_port_unlock(%struct.uart_port*, i64) #1

declare dso_local i32 @CIRC_SPACE_TO_END(i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @__uart_start(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
