; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_owl-uart.c_owl_uart_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_owl-uart.c_owl_uart_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }
%struct.ktermios = type { i32, i32 }
%struct.owl_uart_port = type { i32 }

@OWL_UART_CTL = common dso_local global i32 0, align 4
@OWL_UART_CTL_DWLS_MASK = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@OWL_UART_CTL_DWLS_5BITS = common dso_local global i32 0, align 4
@OWL_UART_CTL_DWLS_6BITS = common dso_local global i32 0, align 4
@OWL_UART_CTL_DWLS_7BITS = common dso_local global i32 0, align 4
@OWL_UART_CTL_DWLS_8BITS = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@OWL_UART_CTL_STPS_2BITS = common dso_local global i32 0, align 4
@OWL_UART_CTL_PRS_MASK = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@OWL_UART_CTL_PRS_MARK = common dso_local global i32 0, align 4
@OWL_UART_CTL_PRS_SPACE = common dso_local global i32 0, align 4
@OWL_UART_CTL_PRS_ODD = common dso_local global i32 0, align 4
@OWL_UART_CTL_PRS_EVEN = common dso_local global i32 0, align 4
@OWL_UART_CTL_PRS_NONE = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@OWL_UART_CTL_AFE = common dso_local global i32 0, align 4
@OWL_UART_STAT_RXER = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@OWL_UART_STAT_RXST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @owl_uart_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_uart_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.owl_uart_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %12 = call %struct.owl_uart_port* @to_owl_uart_port(%struct.uart_port* %11)
  store %struct.owl_uart_port* %12, %struct.owl_uart_port** %7, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 0
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %18 = load i32, i32* @OWL_UART_CTL, align 4
  %19 = call i32 @owl_uart_read(%struct.uart_port* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @OWL_UART_CTL_DWLS_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %25 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CSIZE, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %42 [
    i32 131, label %29
    i32 130, label %33
    i32 129, label %37
    i32 128, label %41
  ]

29:                                               ; preds = %3
  %30 = load i32, i32* @OWL_UART_CTL_DWLS_5BITS, align 4
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %46

33:                                               ; preds = %3
  %34 = load i32, i32* @OWL_UART_CTL_DWLS_6BITS, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %46

37:                                               ; preds = %3
  %38 = load i32, i32* @OWL_UART_CTL_DWLS_7BITS, align 4
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %46

41:                                               ; preds = %3
  br label %42

42:                                               ; preds = %3, %41
  %43 = load i32, i32* @OWL_UART_CTL_DWLS_8BITS, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %42, %37, %33, %29
  %47 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %48 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CSTOPB, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @OWL_UART_CTL_STPS_2BITS, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %62

57:                                               ; preds = %46
  %58 = load i32, i32* @OWL_UART_CTL_STPS_2BITS, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i32, i32* @OWL_UART_CTL_PRS_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %68 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @PARENB, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %113

73:                                               ; preds = %62
  %74 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %75 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CMSPAR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %73
  %81 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %82 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PARODD, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load i32, i32* @OWL_UART_CTL_PRS_MARK, align 4
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %95

91:                                               ; preds = %80
  %92 = load i32, i32* @OWL_UART_CTL_PRS_SPACE, align 4
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %91, %87
  br label %112

96:                                               ; preds = %73
  %97 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %98 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @PARODD, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i32, i32* @OWL_UART_CTL_PRS_ODD, align 4
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %111

107:                                              ; preds = %96
  %108 = load i32, i32* @OWL_UART_CTL_PRS_EVEN, align 4
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %107, %103
  br label %112

112:                                              ; preds = %111, %95
  br label %117

113:                                              ; preds = %62
  %114 = load i32, i32* @OWL_UART_CTL_PRS_NONE, align 4
  %115 = load i32, i32* %9, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %113, %112
  %118 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %119 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @CRTSCTS, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load i32, i32* @OWL_UART_CTL_AFE, align 4
  %126 = load i32, i32* %9, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %9, align 4
  br label %133

128:                                              ; preds = %117
  %129 = load i32, i32* @OWL_UART_CTL_AFE, align 4
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %9, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %128, %124
  %134 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @OWL_UART_CTL, align 4
  %137 = call i32 @owl_uart_write(%struct.uart_port* %134, i32 %135, i32 %136)
  %138 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %139 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %140 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %141 = call i32 @uart_get_baud_rate(%struct.uart_port* %138, %struct.ktermios* %139, %struct.ktermios* %140, i32 9600, i32 3200000)
  store i32 %141, i32* %8, align 4
  %142 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @owl_uart_change_baudrate(%struct.owl_uart_port* %142, i32 %143)
  %145 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %146 = call i64 @tty_termios_baud_rate(%struct.ktermios* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %133
  %149 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %148, %133
  %154 = load i32, i32* @OWL_UART_STAT_RXER, align 4
  %155 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %156 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %160 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @INPCK, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %153
  %166 = load i32, i32* @OWL_UART_STAT_RXST, align 4
  %167 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %168 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %165, %153
  %172 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %173 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %174 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @uart_update_timeout(%struct.uart_port* %172, i32 %175, i32 %176)
  %178 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %179 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %178, i32 0, i32 0
  %180 = load i64, i64* %10, align 8
  %181 = call i32 @spin_unlock_irqrestore(i32* %179, i64 %180)
  ret void
}

declare dso_local %struct.owl_uart_port* @to_owl_uart_port(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @owl_uart_read(%struct.uart_port*, i32) #1

declare dso_local i32 @owl_uart_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @owl_uart_change_baudrate(%struct.owl_uart_port*, i32) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
