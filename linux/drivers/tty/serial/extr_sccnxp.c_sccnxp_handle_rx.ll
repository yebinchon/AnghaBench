; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_handle_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_handle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@SCCNXP_SR_REG = common dso_local global i32 0, align 4
@SR_RXRDY = common dso_local global i32 0, align 4
@SR_PE = common dso_local global i32 0, align 4
@SR_FE = common dso_local global i32 0, align 4
@SR_OVR = common dso_local global i32 0, align 4
@SR_BRK = common dso_local global i32 0, align 4
@SCCNXP_RHR_REG = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@SCCNXP_CR_REG = common dso_local global i32 0, align 4
@CR_CMD_BREAK_RESET = common dso_local global i32 0, align 4
@CR_CMD_STATUS_RESET = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sccnxp_handle_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sccnxp_handle_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  br label %6

6:                                                ; preds = %150, %149, %141, %57, %1
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = load i32, i32* @SCCNXP_SR_REG, align 4
  %9 = call i8* @sccnxp_port_read(%struct.uart_port* %7, i32 %8)
  %10 = ptrtoint i8* %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SR_RXRDY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  br label %157

16:                                               ; preds = %6
  %17 = load i32, i32* @SR_PE, align 4
  %18 = load i32, i32* @SR_FE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SR_OVR, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SR_BRK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = load i32, i32* @SCCNXP_RHR_REG, align 4
  %28 = call i8* @sccnxp_port_read(%struct.uart_port* %26, i32 %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %136

39:                                               ; preds = %16
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @SR_BRK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %46 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %51 = load i32, i32* @SCCNXP_CR_REG, align 4
  %52 = load i32, i32* @CR_CMD_BREAK_RESET, align 4
  %53 = call i32 @sccnxp_port_write(%struct.uart_port* %50, i32 %51, i32 %52)
  %54 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %55 = call i64 @uart_handle_break(%struct.uart_port* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %6

58:                                               ; preds = %44
  br label %99

59:                                               ; preds = %39
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @SR_PE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %98

70:                                               ; preds = %59
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @SR_FE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %77 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %97

81:                                               ; preds = %70
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @SR_OVR, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %88 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %93 = load i32, i32* @SCCNXP_CR_REG, align 4
  %94 = load i32, i32* @CR_CMD_STATUS_RESET, align 4
  %95 = call i32 @sccnxp_port_write(%struct.uart_port* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %86, %81
  br label %97

97:                                               ; preds = %96, %75
  br label %98

98:                                               ; preds = %97, %64
  br label %99

99:                                               ; preds = %98, %58
  %100 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %101 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %3, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @SR_BRK, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = load i32, i32* @TTY_BREAK, align 4
  store i32 %110, i32* %5, align 4
  br label %135

111:                                              ; preds = %99
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @SR_PE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @TTY_PARITY, align 4
  store i32 %117, i32* %5, align 4
  br label %134

118:                                              ; preds = %111
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @SR_FE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* @TTY_FRAME, align 4
  store i32 %124, i32* %5, align 4
  br label %133

125:                                              ; preds = %118
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* @SR_OVR, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i32, i32* @TTY_OVERRUN, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %130, %125
  br label %133

133:                                              ; preds = %132, %123
  br label %134

134:                                              ; preds = %133, %116
  br label %135

135:                                              ; preds = %134, %109
  br label %136

136:                                              ; preds = %135, %16
  %137 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %138 = load i32, i32* %4, align 4
  %139 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %6

142:                                              ; preds = %136
  %143 = load i32, i32* %3, align 4
  %144 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %145 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %143, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %6

150:                                              ; preds = %142
  %151 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %152 = load i32, i32* %3, align 4
  %153 = load i32, i32* @SR_OVR, align 4
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @uart_insert_char(%struct.uart_port* %151, i32 %152, i32 %153, i32 %154, i32 %155)
  br label %6

157:                                              ; preds = %15
  %158 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %159 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %158, i32 0, i32 2
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = call i32 @tty_flip_buffer_push(i32* %161)
  ret void
}

declare dso_local i8* @sccnxp_port_read(%struct.uart_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sccnxp_port_write(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
