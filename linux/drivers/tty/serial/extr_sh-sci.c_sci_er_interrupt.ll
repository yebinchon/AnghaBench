; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_er_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_er_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }
%struct.sci_port = type { i64*, i32, i32 }

@SCIx_ERI_IRQ = common dso_local global i64 0, align 8
@SCIx_BRI_IRQ = common dso_local global i64 0, align 8
@SCxSR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PORT_SCI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sci_er_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_er_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.sci_port*, align 8
  %8 = alloca i16, align 2
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.uart_port*
  store %struct.uart_port* %10, %struct.uart_port** %6, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %12 = call %struct.sci_port* @to_sci_port(%struct.uart_port* %11)
  store %struct.sci_port* %12, %struct.sci_port** %7, align 8
  %13 = load %struct.sci_port*, %struct.sci_port** %7, align 8
  %14 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @SCIx_ERI_IRQ, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.sci_port*, %struct.sci_port** %7, align 8
  %20 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @SCIx_BRI_IRQ, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %18, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %2
  %27 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %28 = load i32, i32* @SCxSR, align 4
  %29 = call zeroext i16 @serial_port_in(%struct.uart_port* %27, i32 %28)
  store i16 %29, i16* %8, align 2
  %30 = load i16, i16* %8, align 2
  %31 = zext i16 %30 to i32
  %32 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %33 = call zeroext i16 @SCxSR_BRK(%struct.uart_port* %32)
  %34 = zext i16 %33 to i32
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load i32, i32* %4, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @sci_br_interrupt(i32 %38, i8* %39)
  br label %41

41:                                               ; preds = %37, %26
  %42 = load i16, i16* %8, align 2
  %43 = zext i16 %42 to i32
  %44 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %45 = call zeroext i16 @SCxSR_ERRORS(%struct.uart_port* %44)
  %46 = zext i16 %45 to i32
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %50, i32* %3, align 4
  br label %97

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PORT_SCI, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %60 = call i64 @sci_handle_errors(%struct.uart_port* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %64 = load i32, i32* @SCxSR, align 4
  %65 = call zeroext i16 @serial_port_in(%struct.uart_port* %63, i32 %64)
  %66 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %67 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %68 = call i32 @SCxSR_RDxF_CLEAR(%struct.uart_port* %67)
  %69 = call i32 @sci_clear_SCxSR(%struct.uart_port* %66, i32 %68)
  br label %70

70:                                               ; preds = %62, %58
  br label %82

71:                                               ; preds = %52
  %72 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %73 = call i32 @sci_handle_fifo_overrun(%struct.uart_port* %72)
  %74 = load %struct.sci_port*, %struct.sci_port** %7, align 8
  %75 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %80 = call i32 @sci_receive_chars(%struct.uart_port* %79)
  br label %81

81:                                               ; preds = %78, %71
  br label %82

82:                                               ; preds = %81, %70
  %83 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %84 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %85 = call i32 @SCxSR_ERROR_CLEAR(%struct.uart_port* %84)
  %86 = call i32 @sci_clear_SCxSR(%struct.uart_port* %83, i32 %85)
  %87 = load %struct.sci_port*, %struct.sci_port** %7, align 8
  %88 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %82
  %92 = load i32, i32* %4, align 4
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @sci_tx_interrupt(i32 %92, i8* %93)
  br label %95

95:                                               ; preds = %91, %82
  %96 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %49
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.sci_port* @to_sci_port(%struct.uart_port*) #1

declare dso_local zeroext i16 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local zeroext i16 @SCxSR_BRK(%struct.uart_port*) #1

declare dso_local i32 @sci_br_interrupt(i32, i8*) #1

declare dso_local zeroext i16 @SCxSR_ERRORS(%struct.uart_port*) #1

declare dso_local i64 @sci_handle_errors(%struct.uart_port*) #1

declare dso_local i32 @sci_clear_SCxSR(%struct.uart_port*, i32) #1

declare dso_local i32 @SCxSR_RDxF_CLEAR(%struct.uart_port*) #1

declare dso_local i32 @sci_handle_fifo_overrun(%struct.uart_port*) #1

declare dso_local i32 @sci_receive_chars(%struct.uart_port*) #1

declare dso_local i32 @SCxSR_ERROR_CLEAR(%struct.uart_port*) #1

declare dso_local i32 @sci_tx_interrupt(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
