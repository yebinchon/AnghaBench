; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sa1100.c_sa1100_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sa1100.c_sa1100_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100_port = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i64, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@UTSR1_RNE = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@UTSR1_PRE = common dso_local global i32 0, align 4
@UTSR1_FRE = common dso_local global i32 0, align 4
@UTSR1_ROR = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa1100_port*)* @sa1100_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100_rx_chars(%struct.sa1100_port* %0) #0 {
  %2 = alloca %struct.sa1100_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sa1100_port* %0, %struct.sa1100_port** %2, align 8
  %6 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %7 = call i32 @UART_GET_UTSR1(%struct.sa1100_port* %6)
  %8 = call i32 @UTSR1_TO_SM(i32 %7)
  %9 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %10 = call i32 @UART_GET_UTSR0(%struct.sa1100_port* %9)
  %11 = call i32 @UTSR0_TO_SM(i32 %10)
  %12 = or i32 %8, %11
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %118, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @UTSR1_RNE, align 4
  %16 = call i32 @UTSR1_TO_SM(i32 %15)
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %126

19:                                               ; preds = %13
  %20 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %21 = call i32 @UART_GET_CHAR(%struct.sa1100_port* %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %23 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @UTSR1_PRE, align 4
  %31 = load i32, i32* @UTSR1_FRE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @UTSR1_ROR, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @UTSR1_TO_SM(i32 %34)
  %36 = and i32 %29, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %102

38:                                               ; preds = %19
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @UTSR1_PRE, align 4
  %41 = call i32 @UTSR1_TO_SM(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %46 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  br label %65

51:                                               ; preds = %38
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @UTSR1_FRE, align 4
  %54 = call i32 @UTSR1_TO_SM(i32 %53)
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %59 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %57, %51
  br label %65

65:                                               ; preds = %64, %44
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @UTSR1_ROR, align 4
  %68 = call i32 @UTSR1_TO_SM(i32 %67)
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %73 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %71, %65
  %79 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %80 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @UTSR1_PRE, align 4
  %87 = call i32 @UTSR1_TO_SM(i32 %86)
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load i32, i32* @TTY_PARITY, align 4
  store i32 %91, i32* %5, align 4
  br label %101

92:                                               ; preds = %78
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @UTSR1_FRE, align 4
  %95 = call i32 @UTSR1_TO_SM(i32 %94)
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @TTY_FRAME, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %92
  br label %101

101:                                              ; preds = %100, %90
  br label %102

102:                                              ; preds = %101, %19
  %103 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %104 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %103, i32 0, i32 0
  %105 = load i32, i32* %4, align 4
  %106 = call i64 @uart_handle_sysrq_char(%struct.TYPE_7__* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %118

109:                                              ; preds = %102
  %110 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %111 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %110, i32 0, i32 0
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @UTSR1_ROR, align 4
  %114 = call i32 @UTSR1_TO_SM(i32 %113)
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @uart_insert_char(%struct.TYPE_7__* %111, i32 %112, i32 %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %109, %108
  %119 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %120 = call i32 @UART_GET_UTSR1(%struct.sa1100_port* %119)
  %121 = call i32 @UTSR1_TO_SM(i32 %120)
  %122 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %123 = call i32 @UART_GET_UTSR0(%struct.sa1100_port* %122)
  %124 = call i32 @UTSR0_TO_SM(i32 %123)
  %125 = or i32 %121, %124
  store i32 %125, i32* %3, align 4
  br label %13

126:                                              ; preds = %13
  %127 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %128 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = call i32 @spin_unlock(i32* %129)
  %131 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %132 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = call i32 @tty_flip_buffer_push(i32* %135)
  %137 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %138 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = call i32 @spin_lock(i32* %139)
  ret void
}

declare dso_local i32 @UTSR1_TO_SM(i32) #1

declare dso_local i32 @UART_GET_UTSR1(%struct.sa1100_port*) #1

declare dso_local i32 @UTSR0_TO_SM(i32) #1

declare dso_local i32 @UART_GET_UTSR0(%struct.sa1100_port*) #1

declare dso_local i32 @UART_GET_CHAR(%struct.sa1100_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
