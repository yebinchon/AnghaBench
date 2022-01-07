; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_linflexuart.c_linflex_rxint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_linflexuart.c_linflex_rxint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@UARTSR = common dso_local global i64 0, align 8
@LINFLEXD_UARTSR_RMB = common dso_local global i64 0, align 8
@BDRM = common dso_local global i64 0, align 8
@TTY_NORMAL = common dso_local global i32 0, align 4
@LINFLEXD_UARTSR_BOF = common dso_local global i64 0, align 8
@LINFLEXD_UARTSR_SZF = common dso_local global i64 0, align 8
@LINFLEXD_UARTSR_FEF = common dso_local global i64 0, align 8
@LINFLEXD_UARTSR_PE = common dso_local global i64 0, align 8
@LINFLEXD_UARTSR_DRFRFE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @linflex_rxint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linflex_rxint(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.uart_port*
  store %struct.uart_port* %13, %struct.uart_port** %5, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.tty_port* %17, %struct.tty_port** %7, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 0
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UARTSR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i64 @readl(i64 %26)
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %125, %2
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @LINFLEXD_UARTSR_RMB, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %126

33:                                               ; preds = %28
  %34 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BDRM, align 8
  %38 = add nsw i64 %36, %37
  %39 = call zeroext i8 @readb(i64 %38)
  store i8 %39, i8* %10, align 1
  store i32 0, i32* %11, align 4
  %40 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %40, i32* %6, align 4
  %41 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @LINFLEXD_UARTSR_BOF, align 8
  %48 = load i64, i64* @LINFLEXD_UARTSR_SZF, align 8
  %49 = or i64 %47, %48
  %50 = load i64, i64* @LINFLEXD_UARTSR_FEF, align 8
  %51 = or i64 %49, %50
  %52 = load i64, i64* @LINFLEXD_UARTSR_PE, align 8
  %53 = or i64 %51, %52
  %54 = and i64 %46, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %97

56:                                               ; preds = %33
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @LINFLEXD_UARTSR_SZF, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i64, i64* @LINFLEXD_UARTSR_SZF, align 8
  %63 = load i64, i64* %9, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @LINFLEXD_UARTSR_BOF, align 8
  %68 = and i64 %66, %67
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i64, i64* @LINFLEXD_UARTSR_BOF, align 8
  %72 = load i64, i64* %9, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %9, align 8
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* @LINFLEXD_UARTSR_FEF, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load i8, i8* %10, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  store i32 1, i32* %11, align 4
  br label %83

83:                                               ; preds = %82, %79
  %84 = load i64, i64* @LINFLEXD_UARTSR_FEF, align 8
  %85 = load i64, i64* %9, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %9, align 8
  br label %87

87:                                               ; preds = %83, %74
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @LINFLEXD_UARTSR_PE, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i64, i64* @LINFLEXD_UARTSR_PE, align 8
  %94 = load i64, i64* %9, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %9, align 8
  br label %96

96:                                               ; preds = %92, %87
  br label %97

97:                                               ; preds = %96, %33
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* @LINFLEXD_UARTSR_RMB, align 8
  %100 = or i64 %98, %99
  %101 = load i64, i64* @LINFLEXD_UARTSR_DRFRFE, align 8
  %102 = or i64 %100, %101
  %103 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %104 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @UARTSR, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel(i64 %102, i64 %107)
  %109 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %110 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @UARTSR, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i64 @readl(i64 %113)
  store i64 %114, i64* %9, align 8
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %97
  %118 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %119 = call i32 @uart_handle_break(%struct.uart_port* %118)
  br label %125

120:                                              ; preds = %97
  %121 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %122 = load i8, i8* %10, align 1
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @tty_insert_flip_char(%struct.tty_port* %121, i8 zeroext %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %117
  br label %28

126:                                              ; preds = %28
  %127 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %128 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %127, i32 0, i32 0
  %129 = load i64, i64* %8, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  %131 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %132 = call i32 @tty_flip_buffer_push(%struct.tty_port* %131)
  %133 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %133
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local zeroext i8 @readb(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
