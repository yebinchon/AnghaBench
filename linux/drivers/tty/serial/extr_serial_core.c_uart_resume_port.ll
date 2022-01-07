; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_resume_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_resume_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_driver = type { %struct.uart_state* }
%struct.uart_state = type { %struct.tty_port }
%struct.tty_port = type { i32, %struct.tty_struct* }
%struct.tty_struct = type { %struct.ktermios }
%struct.ktermios = type { i64 }
%struct.uart_port = type { i32, i32, i32, %struct.uart_ops*, %struct.TYPE_2__*, i64, i32, i32 }
%struct.uart_ops = type { i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)*, i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, %struct.ktermios.0*, i32*)* }
%struct.ktermios.0 = type opaque
%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }
%struct.uart_match = type { %struct.uart_driver*, %struct.uart_port* }

@serial_match_port = common dso_local global i32 0, align 4
@console_suspend_enabled = common dso_local global i64 0, align 8
@UART_PM_STATE_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_resume_port(%struct.uart_driver* %0, %struct.uart_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_driver*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.uart_state*, align 8
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.uart_match, align 8
  %10 = alloca %struct.ktermios, align 8
  %11 = alloca %struct.uart_ops*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tty_struct*, align 8
  store %struct.uart_driver* %0, %struct.uart_driver** %4, align 8
  store %struct.uart_port* %1, %struct.uart_port** %5, align 8
  %14 = load %struct.uart_driver*, %struct.uart_driver** %4, align 8
  %15 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %14, i32 0, i32 0
  %16 = load %struct.uart_state*, %struct.uart_state** %15, align 8
  %17 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %16, i64 %20
  store %struct.uart_state* %21, %struct.uart_state** %6, align 8
  %22 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %23 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %22, i32 0, i32 0
  store %struct.tty_port* %23, %struct.tty_port** %7, align 8
  %24 = getelementptr inbounds %struct.uart_match, %struct.uart_match* %9, i32 0, i32 0
  %25 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %26 = bitcast %struct.uart_port* %25 to %struct.uart_driver*
  store %struct.uart_driver* %26, %struct.uart_driver** %24, align 8
  %27 = getelementptr inbounds %struct.uart_match, %struct.uart_match* %9, i32 0, i32 1
  %28 = load %struct.uart_driver*, %struct.uart_driver** %4, align 8
  %29 = bitcast %struct.uart_driver* %28 to %struct.uart_port*
  store %struct.uart_port* %29, %struct.uart_port** %27, align 8
  %30 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %31 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @serial_match_port, align 4
  %37 = call %struct.device* @device_find_child(i32 %35, %struct.uart_match* %9, i32 %36)
  store %struct.device* %37, %struct.device** %8, align 8
  %38 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %64, label %42

42:                                               ; preds = %2
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = call i64 @device_may_wakeup(%struct.device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @irq_get_irq_data(i32 %49)
  %51 = call i64 @irqd_is_wakeup_set(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @disable_irq_wake(i32 %56)
  br label %58

58:                                               ; preds = %53, %46
  %59 = load %struct.device*, %struct.device** %8, align 8
  %60 = call i32 @put_device(%struct.device* %59)
  %61 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %62 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  store i32 0, i32* %3, align 4
  br label %199

64:                                               ; preds = %42, %2
  %65 = load %struct.device*, %struct.device** %8, align 8
  %66 = call i32 @put_device(%struct.device* %65)
  %67 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %68 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %67, i32 0, i32 5
  store i64 0, i64* %68, align 8
  %69 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %70 = call i64 @uart_console(%struct.uart_port* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %119

72:                                               ; preds = %64
  %73 = call i32 @memset(%struct.ktermios* %10, i32 0, i32 8)
  %74 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %75 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %10, i32 0, i32 0
  store i64 %78, i64* %79, align 8
  %80 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %81 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %80, i32 0, i32 1
  %82 = load %struct.tty_struct*, %struct.tty_struct** %81, align 8
  %83 = icmp ne %struct.tty_struct* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %72
  %85 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %10, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %90 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %89, i32 0, i32 1
  %91 = load %struct.tty_struct*, %struct.tty_struct** %90, align 8
  %92 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %91, i32 0, i32 0
  %93 = bitcast %struct.ktermios* %10 to i8*
  %94 = bitcast %struct.ktermios* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 8, i1 false)
  br label %95

95:                                               ; preds = %88, %84, %72
  %96 = load i64, i64* @console_suspend_enabled, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %100 = load i32, i32* @UART_PM_STATE_ON, align 4
  %101 = call i32 @uart_change_pm(%struct.uart_state* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %95
  %103 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %104 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %103, i32 0, i32 3
  %105 = load %struct.uart_ops*, %struct.uart_ops** %104, align 8
  %106 = getelementptr inbounds %struct.uart_ops, %struct.uart_ops* %105, i32 0, i32 3
  %107 = load i32 (%struct.uart_port*, %struct.ktermios.0*, i32*)*, i32 (%struct.uart_port*, %struct.ktermios.0*, i32*)** %106, align 8
  %108 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %109 = bitcast %struct.ktermios* %10 to %struct.ktermios.0*
  %110 = call i32 %107(%struct.uart_port* %108, %struct.ktermios.0* %109, i32* null)
  %111 = load i64, i64* @console_suspend_enabled, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %102
  %114 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %115 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %114, i32 0, i32 4
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = call i32 @console_start(%struct.TYPE_2__* %116)
  br label %118

118:                                              ; preds = %113, %102
  br label %119

119:                                              ; preds = %118, %64
  %120 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %121 = call i64 @tty_port_suspended(%struct.tty_port* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %195

123:                                              ; preds = %119
  %124 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %125 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %124, i32 0, i32 3
  %126 = load %struct.uart_ops*, %struct.uart_ops** %125, align 8
  store %struct.uart_ops* %126, %struct.uart_ops** %11, align 8
  %127 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %128 = load i32, i32* @UART_PM_STATE_ON, align 4
  %129 = call i32 @uart_change_pm(%struct.uart_state* %127, i32 %128)
  %130 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %131 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %130, i32 0, i32 1
  %132 = call i32 @spin_lock_irq(i32* %131)
  %133 = load %struct.uart_ops*, %struct.uart_ops** %11, align 8
  %134 = getelementptr inbounds %struct.uart_ops, %struct.uart_ops* %133, i32 0, i32 2
  %135 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %134, align 8
  %136 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %137 = call i32 %135(%struct.uart_port* %136, i32 0)
  %138 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %139 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %138, i32 0, i32 1
  %140 = call i32 @spin_unlock_irq(i32* %139)
  %141 = load i64, i64* @console_suspend_enabled, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %123
  %144 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %145 = call i64 @uart_console(%struct.uart_port* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %192, label %147

147:                                              ; preds = %143, %123
  %148 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %149 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %148, i32 0, i32 1
  %150 = load %struct.tty_struct*, %struct.tty_struct** %149, align 8
  store %struct.tty_struct* %150, %struct.tty_struct** %13, align 8
  %151 = load %struct.uart_ops*, %struct.uart_ops** %11, align 8
  %152 = getelementptr inbounds %struct.uart_ops, %struct.uart_ops* %151, i32 0, i32 0
  %153 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %152, align 8
  %154 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %155 = call i32 %153(%struct.uart_port* %154)
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %187

158:                                              ; preds = %147
  %159 = load %struct.tty_struct*, %struct.tty_struct** %13, align 8
  %160 = icmp ne %struct.tty_struct* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load %struct.tty_struct*, %struct.tty_struct** %13, align 8
  %163 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %164 = call i32 @uart_change_speed(%struct.tty_struct* %162, %struct.uart_state* %163, i32* null)
  br label %165

165:                                              ; preds = %161, %158
  %166 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %167 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %166, i32 0, i32 1
  %168 = call i32 @spin_lock_irq(i32* %167)
  %169 = load %struct.uart_ops*, %struct.uart_ops** %11, align 8
  %170 = getelementptr inbounds %struct.uart_ops, %struct.uart_ops* %169, i32 0, i32 2
  %171 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %170, align 8
  %172 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %173 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %174 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 %171(%struct.uart_port* %172, i32 %175)
  %177 = load %struct.uart_ops*, %struct.uart_ops** %11, align 8
  %178 = getelementptr inbounds %struct.uart_ops, %struct.uart_ops* %177, i32 0, i32 1
  %179 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %178, align 8
  %180 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %181 = call i32 %179(%struct.uart_port* %180)
  %182 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %183 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %182, i32 0, i32 1
  %184 = call i32 @spin_unlock_irq(i32* %183)
  %185 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %186 = call i32 @tty_port_set_initialized(%struct.tty_port* %185, i32 1)
  br label %191

187:                                              ; preds = %147
  %188 = load %struct.tty_struct*, %struct.tty_struct** %13, align 8
  %189 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %190 = call i32 @uart_shutdown(%struct.tty_struct* %188, %struct.uart_state* %189)
  br label %191

191:                                              ; preds = %187, %165
  br label %192

192:                                              ; preds = %191, %143
  %193 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %194 = call i32 @tty_port_set_suspended(%struct.tty_port* %193, i32 0)
  br label %195

195:                                              ; preds = %192, %119
  %196 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %197 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %196, i32 0, i32 0
  %198 = call i32 @mutex_unlock(i32* %197)
  store i32 0, i32* %3, align 4
  br label %199

199:                                              ; preds = %195, %58
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.device* @device_find_child(i32, %struct.uart_match*, i32) #1

declare dso_local i64 @device_may_wakeup(%struct.device*) #1

declare dso_local i64 @irqd_is_wakeup_set(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i32 @disable_irq_wake(i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @uart_console(%struct.uart_port*) #1

declare dso_local i32 @memset(%struct.ktermios*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @uart_change_pm(%struct.uart_state*, i32) #1

declare dso_local i32 @console_start(%struct.TYPE_2__*) #1

declare dso_local i64 @tty_port_suspended(%struct.tty_port*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @uart_change_speed(%struct.tty_struct*, %struct.uart_state*, i32*) #1

declare dso_local i32 @tty_port_set_initialized(%struct.tty_port*, i32) #1

declare dso_local i32 @uart_shutdown(%struct.tty_struct*, %struct.uart_state*) #1

declare dso_local i32 @tty_port_set_suspended(%struct.tty_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
