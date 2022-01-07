; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_3__, %struct.uart_state* }
%struct.TYPE_3__ = type { i32, i64*, i64, i64, i32 }
%struct.uart_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ktermios = type { i64*, i32, i64, i64, i32 }
%struct.uart_port = type { i32 }

@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@UPF_SOFT_FLOW = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@CBAUD = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @uart_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.uart_state*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 1
  %13 = load %struct.uart_state*, %struct.uart_state** %12, align 8
  store %struct.uart_state* %13, %struct.uart_state** %5, align 8
  %14 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @IGNBRK, align 4
  %19 = load i32, i32* @BRKINT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IGNPAR, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PARMRK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @INPCK, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %27 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %28 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %32 = call %struct.uart_port* @uart_port_check(%struct.uart_state* %31)
  store %struct.uart_port* %32, %struct.uart_port** %6, align 8
  %33 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %34 = icmp ne %struct.uart_port* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  br label %182

36:                                               ; preds = %2
  %37 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UPF_SOFT_FLOW, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %83

43:                                               ; preds = %36
  %44 = load i32, i32* @IXANY, align 4
  %45 = load i32, i32* @IXON, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @IXOFF, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %52 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* @VSTART, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %59 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @VSTART, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %57, %63
  br i1 %64, label %80, label %65

65:                                               ; preds = %43
  %66 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %67 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* @VSTOP, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %74 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* @VSTOP, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %72, %78
  br label %80

80:                                               ; preds = %65, %43
  %81 = phi i1 [ true, %43 ], [ %79, %65 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %80, %36
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %86 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = xor i32 %84, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %124

90:                                               ; preds = %83
  %91 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %92 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %96 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %94, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %90
  %100 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %101 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %105 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %99
  %109 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %110 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %114 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = xor i32 %112, %115
  %117 = load i32, i32* %8, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %108
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  br label %182

124:                                              ; preds = %120, %108, %99, %90, %83
  %125 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %126 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %127 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %128 = call i32 @uart_change_speed(%struct.tty_struct* %125, %struct.uart_state* %126, %struct.ktermios* %127)
  %129 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %130 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %7, align 4
  %133 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %134 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @CBAUD, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %124
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @CBAUD, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %139
  %145 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %146 = load i32, i32* @TIOCM_RTS, align 4
  %147 = load i32, i32* @TIOCM_DTR, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @uart_clear_mctrl(%struct.uart_port* %145, i32 %148)
  br label %181

150:                                              ; preds = %139, %124
  %151 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %152 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @CBAUD, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %180, label %157

157:                                              ; preds = %150
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @CBAUD, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %180

162:                                              ; preds = %157
  %163 = load i32, i32* @TIOCM_DTR, align 4
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @CRTSCTS, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  %169 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %170 = call i32 @tty_throttled(%struct.tty_struct* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %168, %162
  %173 = load i32, i32* @TIOCM_RTS, align 4
  %174 = load i32, i32* %10, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %172, %168
  %177 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @uart_set_mctrl(%struct.uart_port* %177, i32 %178)
  br label %180

180:                                              ; preds = %176, %157, %150
  br label %181

181:                                              ; preds = %180, %144
  br label %182

182:                                              ; preds = %181, %123, %35
  %183 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %184 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = call i32 @mutex_unlock(i32* %185)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.uart_port* @uart_port_check(%struct.uart_state*) #1

declare dso_local i32 @uart_change_speed(%struct.tty_struct*, %struct.uart_state*, %struct.ktermios*) #1

declare dso_local i32 @uart_clear_mctrl(%struct.uart_port*, i32) #1

declare dso_local i32 @tty_throttled(%struct.tty_struct*) #1

declare dso_local i32 @uart_set_mctrl(%struct.uart_port*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
