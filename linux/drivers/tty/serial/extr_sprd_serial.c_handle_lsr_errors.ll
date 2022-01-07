; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_handle_lsr_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_handle_lsr_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@SPRD_LSR_BI = common dso_local global i32 0, align 4
@SPRD_LSR_FE = common dso_local global i32 0, align 4
@SPRD_LSR_PE = common dso_local global i32 0, align 4
@SPRD_LSR_OE = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32*, i32*)* @handle_lsr_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_lsr_errors(%struct.uart_port* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %7, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SPRD_LSR_BI, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %3
  %15 = load i32, i32* @SPRD_LSR_FE, align 4
  %16 = load i32, i32* @SPRD_LSR_PE, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %18
  store i32 %21, i32* %19, align 4
  %22 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %28 = call i32 @uart_handle_break(%struct.uart_port* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %14
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %109

33:                                               ; preds = %14
  br label %60

34:                                               ; preds = %3
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SPRD_LSR_PE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %59

46:                                               ; preds = %34
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SPRD_LSR_FE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %46
  br label %59

59:                                               ; preds = %58, %40
  br label %60

60:                                               ; preds = %59, %33
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SPRD_LSR_OE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %68 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %60
  %73 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %75
  store i32 %78, i32* %76, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SPRD_LSR_BI, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load i32, i32* @TTY_BREAK, align 4
  %86 = load i32*, i32** %6, align 8
  store i32 %85, i32* %86, align 4
  br label %107

87:                                               ; preds = %72
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SPRD_LSR_PE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @TTY_PARITY, align 4
  %95 = load i32*, i32** %6, align 8
  store i32 %94, i32* %95, align 4
  br label %106

96:                                               ; preds = %87
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SPRD_LSR_FE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @TTY_FRAME, align 4
  %104 = load i32*, i32** %6, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %96
  br label %106

106:                                              ; preds = %105, %93
  br label %107

107:                                              ; preds = %106, %84
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %31
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @uart_handle_break(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
