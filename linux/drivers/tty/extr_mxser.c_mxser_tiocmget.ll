; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_tiocmget.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, %struct.mxser_port* }
%struct.mxser_port = type { i8, i32, i64 }

@MXSER_PORTS = common dso_local global i64 0, align 8
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@UART_MSR = common dso_local global i64 0, align 8
@UART_MSR_ANY_DELTA = common dso_local global i8 0, align 1
@UART_MCR_RTS = common dso_local global i8 0, align 1
@TIOCM_RTS = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i8 0, align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@UART_MSR_DCD = common dso_local global i8 0, align 1
@TIOCM_CAR = common dso_local global i32 0, align 4
@UART_MSR_RI = common dso_local global i8 0, align 1
@TIOCM_RNG = common dso_local global i32 0, align 4
@UART_MSR_DSR = common dso_local global i8 0, align 1
@TIOCM_DSR = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i8 0, align 1
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @mxser_tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxser_tiocmget(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.mxser_port*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  %10 = load %struct.mxser_port*, %struct.mxser_port** %9, align 8
  store %struct.mxser_port* %10, %struct.mxser_port** %4, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MXSER_PORTS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOIOCTLCMD, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %127

19:                                               ; preds = %1
  %20 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %21 = call i64 @tty_io_error(%struct.tty_struct* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %127

26:                                               ; preds = %19
  %27 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %28 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 8
  store i8 %29, i8* %5, align 1
  %30 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %31 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %30, i32 0, i32 1
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %35 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UART_MSR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call zeroext i8 @inb(i64 %38)
  store i8 %39, i8* %6, align 1
  %40 = load i8, i8* %6, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @UART_MSR_ANY_DELTA, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %26
  %47 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %48 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %49 = load i8, i8* %6, align 1
  %50 = call i32 @mxser_check_modem_status(%struct.tty_struct* %47, %struct.mxser_port* %48, i8 zeroext %49)
  br label %51

51:                                               ; preds = %46, %26
  %52 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %53 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %52, i32 0, i32 1
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i8, i8* %5, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* @UART_MCR_RTS, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i32, i32* @TIOCM_RTS, align 4
  br label %65

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  %67 = load i8, i8* %5, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* @UART_MCR_DTR, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @TIOCM_DTR, align 4
  br label %76

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %78 = or i32 %66, %77
  %79 = load i8, i8* %6, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @UART_MSR_DCD, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* @TIOCM_CAR, align 4
  br label %88

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i32 [ %86, %85 ], [ 0, %87 ]
  %90 = or i32 %78, %89
  %91 = load i8, i8* %6, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* @UART_MSR_RI, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* @TIOCM_RNG, align 4
  br label %100

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ 0, %99 ]
  %102 = or i32 %90, %101
  %103 = load i8, i8* %6, align 1
  %104 = zext i8 %103 to i32
  %105 = load i8, i8* @UART_MSR_DSR, align 1
  %106 = zext i8 %105 to i32
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i32, i32* @TIOCM_DSR, align 4
  br label %112

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i32 [ %110, %109 ], [ 0, %111 ]
  %114 = or i32 %102, %113
  %115 = load i8, i8* %6, align 1
  %116 = zext i8 %115 to i32
  %117 = load i8, i8* @UART_MSR_CTS, align 1
  %118 = zext i8 %117 to i32
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i32, i32* @TIOCM_CTS, align 4
  br label %124

123:                                              ; preds = %112
  br label %124

124:                                              ; preds = %123, %121
  %125 = phi i32 [ %122, %121 ], [ 0, %123 ]
  %126 = or i32 %114, %125
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %124, %23, %16
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i64 @tty_io_error(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @mxser_check_modem_status(%struct.tty_struct*, %struct.mxser_port*, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
