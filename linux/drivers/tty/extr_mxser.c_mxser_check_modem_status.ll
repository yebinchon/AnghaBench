; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_check_modem_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_check_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.mxser_port = type { i64, i32, i64, %struct.TYPE_8__*, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@UART_MSR_TERI = common dso_local global i32 0, align 4
@UART_MSR_DDSR = common dso_local global i32 0, align 4
@UART_MSR_DDCD = common dso_local global i32 0, align 4
@UART_MSR_DCTS = common dso_local global i32 0, align 4
@UART_MSR_DCD = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i32 0, align 4
@PORT_16550A = common dso_local global i64 0, align 8
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.mxser_port*, i32)* @mxser_check_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxser_check_modem_status(%struct.tty_struct* %0, %struct.mxser_port* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.mxser_port*, align 8
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.mxser_port* %1, %struct.mxser_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @UART_MSR_TERI, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %13 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %11, %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @UART_MSR_DDSR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %24 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @UART_MSR_DDCD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %35 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @UART_MSR_DCTS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %46 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %53 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %56 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = call i32 @wake_up_interruptible(i32* %57)
  %59 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %60 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %59, i32 0, i32 4
  %61 = call i64 @tty_port_check_carrier(%struct.TYPE_9__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %50
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @UART_MSR_DDCD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @UART_MSR_DCD, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %75 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = call i32 @wake_up_interruptible(i32* %76)
  br label %78

78:                                               ; preds = %73, %68
  br label %79

79:                                               ; preds = %78, %63, %50
  %80 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %81 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %80, i32 0, i32 4
  %82 = call i64 @tty_port_cts_enabled(%struct.TYPE_9__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %179

84:                                               ; preds = %79
  %85 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %86 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %140

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @UART_MSR_CTS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %139

94:                                               ; preds = %89
  %95 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %96 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %95, i32 0, i32 0
  store i32 0, i32* %96, align 4
  %97 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %98 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @PORT_16550A, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %136

102:                                              ; preds = %94
  %103 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %104 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %103, i32 0, i32 3
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %136, label %109

109:                                              ; preds = %102
  %110 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %111 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @UART_IER_THRI, align 4
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  %116 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %117 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @UART_IER, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @outb(i32 %115, i64 %120)
  %122 = load i32, i32* @UART_IER_THRI, align 4
  %123 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %124 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %128 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %131 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @UART_IER, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @outb(i32 %129, i64 %134)
  br label %136

136:                                              ; preds = %109, %102, %94
  %137 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %138 = call i32 @tty_wakeup(%struct.tty_struct* %137)
  br label %139

139:                                              ; preds = %136, %89
  br label %178

140:                                              ; preds = %84
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @UART_MSR_CTS, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %177, label %145

145:                                              ; preds = %140
  %146 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %147 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %146, i32 0, i32 0
  store i32 1, i32* %147, align 4
  %148 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %149 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @PORT_16550A, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %176

153:                                              ; preds = %145
  %154 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %155 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %154, i32 0, i32 3
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %176, label %160

160:                                              ; preds = %153
  %161 = load i32, i32* @UART_IER_THRI, align 4
  %162 = xor i32 %161, -1
  %163 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %164 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %165, %162
  store i32 %166, i32* %164, align 8
  %167 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %168 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.mxser_port*, %struct.mxser_port** %5, align 8
  %171 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @UART_IER, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @outb(i32 %169, i64 %174)
  br label %176

176:                                              ; preds = %160, %153, %145
  br label %177

177:                                              ; preds = %176, %140
  br label %178

178:                                              ; preds = %177, %139
  br label %179

179:                                              ; preds = %178, %79
  ret void
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i64 @tty_port_check_carrier(%struct.TYPE_9__*) #1

declare dso_local i64 @tty_port_cts_enabled(%struct.TYPE_9__*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
