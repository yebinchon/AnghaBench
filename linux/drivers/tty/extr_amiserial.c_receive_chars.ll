; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.serial_state = type { i32, i32, %struct.TYPE_4__, %struct.async_icount }
%struct.TYPE_4__ = type { i32, i32 }
%struct.async_icount = type { i32, i32, i32, i32, i32 }

@UART_LSR_DR = common dso_local global i32 0, align 4
@custom = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@IF_RBF = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@SDR_OVRUN = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@UART_LSR_PE = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@ASYNC_SAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serial_state*)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_chars(%struct.serial_state* %0) #0 {
  %2 = alloca %struct.serial_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.async_icount*, align 8
  %8 = alloca i32, align 4
  store %struct.serial_state* %0, %struct.serial_state** %2, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %10 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %9, i32 0, i32 3
  store %struct.async_icount* %10, %struct.async_icount** %7, align 8
  %11 = load i32, i32* @UART_LSR_DR, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @custom, i32 0, i32 0), align 4
  store i32 %12, i32* %4, align 4
  %13 = call i32 (...) @mb()
  %14 = load i32, i32* @IF_RBF, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @custom, i32 0, i32 1), align 4
  %15 = call i32 (...) @mb()
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 511
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @UART_LSR_BI, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SDR_OVRUN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @UART_LSR_OE, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 255
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %5, align 1
  %36 = load %struct.async_icount*, %struct.async_icount** %7, align 8
  %37 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %40, i8* %6, align 1
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @UART_LSR_BI, align 4
  %43 = load i32, i32* @UART_LSR_PE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @UART_LSR_FE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @UART_LSR_OE, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %41, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %156

51:                                               ; preds = %32
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @UART_LSR_BI, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load i32, i32* @UART_LSR_FE, align 4
  %58 = load i32, i32* @UART_LSR_PE, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %3, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %3, align 4
  %63 = load %struct.async_icount*, %struct.async_icount** %7, align 8
  %64 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %89

67:                                               ; preds = %51
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @UART_LSR_PE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.async_icount*, %struct.async_icount** %7, align 8
  %74 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %88

77:                                               ; preds = %67
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @UART_LSR_FE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.async_icount*, %struct.async_icount** %7, align 8
  %84 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82, %77
  br label %88

88:                                               ; preds = %87, %72
  br label %89

89:                                               ; preds = %88, %56
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @UART_LSR_OE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.async_icount*, %struct.async_icount** %7, align 8
  %96 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %94, %89
  %100 = load i32, i32* %3, align 4
  %101 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %102 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %173

107:                                              ; preds = %99
  %108 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %109 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %3, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %3, align 4
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @UART_LSR_BI, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %107
  %118 = load i8, i8* @TTY_BREAK, align 1
  store i8 %118, i8* %6, align 1
  %119 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %120 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ASYNC_SAK, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %117
  %127 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %128 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @do_SAK(i32 %130)
  br label %132

132:                                              ; preds = %126, %117
  br label %149

133:                                              ; preds = %107
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @UART_LSR_PE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i8, i8* @TTY_PARITY, align 1
  store i8 %139, i8* %6, align 1
  br label %148

140:                                              ; preds = %133
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* @UART_LSR_FE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i8, i8* @TTY_FRAME, align 1
  store i8 %146, i8* %6, align 1
  br label %147

147:                                              ; preds = %145, %140
  br label %148

148:                                              ; preds = %147, %138
  br label %149

149:                                              ; preds = %148, %132
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* @UART_LSR_OE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  store i32 1, i32* %8, align 4
  br label %155

155:                                              ; preds = %154, %149
  br label %156

156:                                              ; preds = %155, %32
  %157 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %158 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %157, i32 0, i32 2
  %159 = load i8, i8* %5, align 1
  %160 = load i8, i8* %6, align 1
  %161 = call i32 @tty_insert_flip_char(%struct.TYPE_4__* %158, i8 zeroext %159, i8 zeroext %160)
  %162 = load i32, i32* %8, align 4
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %169

164:                                              ; preds = %156
  %165 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %166 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %165, i32 0, i32 2
  %167 = load i8, i8* @TTY_OVERRUN, align 1
  %168 = call i32 @tty_insert_flip_char(%struct.TYPE_4__* %166, i8 zeroext 0, i8 zeroext %167)
  br label %169

169:                                              ; preds = %164, %156
  %170 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %171 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %170, i32 0, i32 2
  %172 = call i32 @tty_flip_buffer_push(%struct.TYPE_4__* %171)
  br label %173

173:                                              ; preds = %169, %106
  ret void
}

declare dso_local i32 @mb(...) #1

declare dso_local i32 @do_SAK(i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.TYPE_4__*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
