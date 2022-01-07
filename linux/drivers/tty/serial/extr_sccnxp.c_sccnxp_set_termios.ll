; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }
%struct.ktermios = type { i32, i32 }
%struct.sccnxp_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@CMSPAR = common dso_local global i32 0, align 4
@SCCNXP_CR_REG = common dso_local global i32 0, align 4
@CR_CMD_RX_RESET = common dso_local global i32 0, align 4
@CR_RX_DISABLE = common dso_local global i32 0, align 4
@CR_TX_DISABLE = common dso_local global i32 0, align 4
@CR_CMD_TX_RESET = common dso_local global i32 0, align 4
@CR_CMD_STATUS_RESET = common dso_local global i32 0, align 4
@CR_CMD_BREAK_RESET = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@MR1_BITS_5 = common dso_local global i32 0, align 4
@MR1_BITS_6 = common dso_local global i32 0, align 4
@MR1_BITS_7 = common dso_local global i32 0, align 4
@MR1_BITS_8 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@MR1_PAR_ODD = common dso_local global i32 0, align 4
@MR1_PAR_NO = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@MR2_STOP2 = common dso_local global i32 0, align 4
@MR2_STOP1 = common dso_local global i32 0, align 4
@CR_CMD_MRPTR1 = common dso_local global i32 0, align 4
@SCCNXP_MR_REG = common dso_local global i32 0, align 4
@SR_OVR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@SR_PE = common dso_local global i32 0, align 4
@SR_FE = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@SR_BRK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@SCCNXP_HAVE_MR0 = common dso_local global i64 0, align 8
@CR_RX_ENABLE = common dso_local global i32 0, align 4
@CR_TX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @sccnxp_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sccnxp_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.sccnxp_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.sccnxp_port* @dev_get_drvdata(i32 %14)
  store %struct.sccnxp_port* %15, %struct.sccnxp_port** %7, align 8
  %16 = load %struct.sccnxp_port*, %struct.sccnxp_port** %7, align 8
  %17 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %16, i32 0, i32 0
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i32, i32* @CMSPAR, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %23 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %27 = load i32, i32* @SCCNXP_CR_REG, align 4
  %28 = load i32, i32* @CR_CMD_RX_RESET, align 4
  %29 = load i32, i32* @CR_RX_DISABLE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CR_TX_DISABLE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @sccnxp_port_write(%struct.uart_port* %26, i32 %27, i32 %32)
  %34 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %35 = load i32, i32* @SCCNXP_CR_REG, align 4
  %36 = load i32, i32* @CR_CMD_TX_RESET, align 4
  %37 = call i32 @sccnxp_port_write(%struct.uart_port* %34, i32 %35, i32 %36)
  %38 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %39 = load i32, i32* @SCCNXP_CR_REG, align 4
  %40 = load i32, i32* @CR_CMD_STATUS_RESET, align 4
  %41 = call i32 @sccnxp_port_write(%struct.uart_port* %38, i32 %39, i32 %40)
  %42 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %43 = load i32, i32* @SCCNXP_CR_REG, align 4
  %44 = load i32, i32* @CR_CMD_BREAK_RESET, align 4
  %45 = call i32 @sccnxp_port_write(%struct.uart_port* %42, i32 %43, i32 %44)
  %46 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %47 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CSIZE, align 4
  %50 = and i32 %48, %49
  switch i32 %50, label %58 [
    i32 131, label %51
    i32 130, label %53
    i32 129, label %55
    i32 128, label %57
  ]

51:                                               ; preds = %3
  %52 = load i32, i32* @MR1_BITS_5, align 4
  store i32 %52, i32* %9, align 4
  br label %60

53:                                               ; preds = %3
  %54 = load i32, i32* @MR1_BITS_6, align 4
  store i32 %54, i32* %9, align 4
  br label %60

55:                                               ; preds = %3
  %56 = load i32, i32* @MR1_BITS_7, align 4
  store i32 %56, i32* %9, align 4
  br label %60

57:                                               ; preds = %3
  br label %58

58:                                               ; preds = %3, %57
  %59 = load i32, i32* @MR1_BITS_8, align 4
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %58, %55, %53, %51
  %61 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %62 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PARENB, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %60
  %68 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %69 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PARODD, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* @MR1_PAR_ODD, align 4
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %74, %67
  br label %83

79:                                               ; preds = %60
  %80 = load i32, i32* @MR1_PAR_NO, align 4
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %79, %78
  %84 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %85 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @CSTOPB, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* @MR2_STOP2, align 4
  br label %94

92:                                               ; preds = %83
  %93 = load i32, i32* @MR2_STOP1, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  store i32 %95, i32* %10, align 4
  %96 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %97 = load i32, i32* @SCCNXP_CR_REG, align 4
  %98 = load i32, i32* @CR_CMD_MRPTR1, align 4
  %99 = call i32 @sccnxp_port_write(%struct.uart_port* %96, i32 %97, i32 %98)
  %100 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %101 = load i32, i32* @SCCNXP_MR_REG, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @sccnxp_port_write(%struct.uart_port* %100, i32 %101, i32 %102)
  %104 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %105 = load i32, i32* @SCCNXP_MR_REG, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @sccnxp_port_write(%struct.uart_port* %104, i32 %105, i32 %106)
  %108 = load i32, i32* @SR_OVR, align 4
  %109 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %110 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %112 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @INPCK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %94
  %118 = load i32, i32* @SR_PE, align 4
  %119 = load i32, i32* @SR_FE, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %122 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %117, %94
  %126 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %127 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @IGNBRK, align 4
  %130 = load i32, i32* @BRKINT, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @PARMRK, align 4
  %133 = or i32 %131, %132
  %134 = and i32 %128, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %125
  %137 = load i32, i32* @SR_BRK, align 4
  %138 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %139 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %136, %125
  %143 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %144 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %143, i32 0, i32 1
  store i32 0, i32* %144, align 4
  %145 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %146 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @IGNBRK, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %142
  %152 = load i32, i32* @SR_BRK, align 4
  %153 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %154 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %151, %142
  %158 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %159 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @IGNPAR, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %157
  %165 = load i32, i32* @SR_PE, align 4
  %166 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %167 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %164, %157
  %171 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %172 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @CREAD, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %189, label %177

177:                                              ; preds = %170
  %178 = load i32, i32* @SR_PE, align 4
  %179 = load i32, i32* @SR_OVR, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @SR_FE, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @SR_BRK, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %186 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %177, %170
  %190 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %191 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %192 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %193 = load %struct.sccnxp_port*, %struct.sccnxp_port** %7, align 8
  %194 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %193, i32 0, i32 1
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @SCCNXP_HAVE_MR0, align 8
  %199 = and i64 %197, %198
  %200 = icmp ne i64 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 230400, i32 38400
  %203 = call i32 @uart_get_baud_rate(%struct.uart_port* %190, %struct.ktermios* %191, %struct.ktermios* %192, i32 50, i32 %202)
  store i32 %203, i32* %11, align 4
  %204 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %205 = load i32, i32* %11, align 4
  %206 = call i32 @sccnxp_set_baud(%struct.uart_port* %204, i32 %205)
  store i32 %206, i32* %11, align 4
  %207 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %208 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %209 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %11, align 4
  %212 = call i32 @uart_update_timeout(%struct.uart_port* %207, i32 %210, i32 %211)
  %213 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %214 = call i64 @tty_termios_baud_rate(%struct.ktermios* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %189
  %217 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* %11, align 4
  %220 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %217, i32 %218, i32 %219)
  br label %221

221:                                              ; preds = %216, %189
  %222 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %223 = load i32, i32* @SCCNXP_CR_REG, align 4
  %224 = load i32, i32* @CR_RX_ENABLE, align 4
  %225 = load i32, i32* @CR_TX_ENABLE, align 4
  %226 = or i32 %224, %225
  %227 = call i32 @sccnxp_port_write(%struct.uart_port* %222, i32 %223, i32 %226)
  %228 = load %struct.sccnxp_port*, %struct.sccnxp_port** %7, align 8
  %229 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %228, i32 0, i32 0
  %230 = load i64, i64* %8, align 8
  %231 = call i32 @spin_unlock_irqrestore(i32* %229, i64 %230)
  ret void
}

declare dso_local %struct.sccnxp_port* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sccnxp_port_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @sccnxp_set_baud(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
