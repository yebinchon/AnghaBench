; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_add_one_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_add_one_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_driver = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.uart_state*, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.uart_state = type { i32, %struct.uart_port*, i32, i32, %struct.tty_port }
%struct.tty_port = type { i32, i64 }
%struct.uart_port = type { i32, i64, %struct.TYPE_7__*, i32**, i32*, %struct.TYPE_5__*, i32, i32, i64, %struct.uart_state* }
%struct.TYPE_7__ = type { i32 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@port_mutex = common dso_local global i32 0, align 4
@UART_PM_STATE_UNDEFINED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CON_ENABLED = common dso_local global i32 0, align 4
@port_lock_key = common dso_local global i32 0, align 4
@tty_dev_attr_group = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Cannot register tty device on line %d\0A\00", align 1
@UPF_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_add_one_port(%struct.uart_driver* %0, %struct.uart_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_driver*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.uart_state*, align 8
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.uart_driver* %0, %struct.uart_driver** %4, align 8
  store %struct.uart_port* %1, %struct.uart_port** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = call i32 (...) @in_interrupt()
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.uart_driver*, %struct.uart_driver** %4, align 8
  %17 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %233

23:                                               ; preds = %2
  %24 = load %struct.uart_driver*, %struct.uart_driver** %4, align 8
  %25 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %24, i32 0, i32 3
  %26 = load %struct.uart_state*, %struct.uart_state** %25, align 8
  %27 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %26, i64 %29
  store %struct.uart_state* %30, %struct.uart_state** %6, align 8
  %31 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %32 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %31, i32 0, i32 4
  store %struct.tty_port* %32, %struct.tty_port** %7, align 8
  %33 = call i32 @mutex_lock(i32* @port_mutex)
  %34 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %35 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %38 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %37, i32 0, i32 1
  %39 = load %struct.uart_port*, %struct.uart_port** %38, align 8
  %40 = icmp ne %struct.uart_port* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %23
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %227

44:                                               ; preds = %23
  %45 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %46 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %45, i32 0, i32 3
  %47 = call i32 @atomic_set(i32* %46, i32 1)
  %48 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %49 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %48, i32 0, i32 2
  %50 = call i32 @init_waitqueue_head(i32* %49)
  %51 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %52 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %53 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %52, i32 0, i32 1
  store %struct.uart_port* %51, %struct.uart_port** %53, align 8
  %54 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %55 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %56 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %55, i32 0, i32 9
  store %struct.uart_state* %54, %struct.uart_state** %56, align 8
  %57 = load i32, i32* @UART_PM_STATE_UNDEFINED, align 4
  %58 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %59 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.uart_driver*, %struct.uart_driver** %4, align 8
  %61 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %64 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %63, i32 0, i32 5
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %64, align 8
  %65 = load %struct.uart_driver*, %struct.uart_driver** %4, align 8
  %66 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %75 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %74, i32 0, i32 8
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = load %struct.uart_driver*, %struct.uart_driver** %4, align 8
  %78 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.uart_driver*, %struct.uart_driver** %4, align 8
  %81 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %86 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = call i32 @kasprintf(i32 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %79, i64 %88)
  %90 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %91 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 4
  %92 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %93 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %44
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %8, align 4
  br label %227

99:                                               ; preds = %44
  %100 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %101 = call i64 @uart_console(%struct.uart_port* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %105 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %104, i32 0, i32 5
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CON_ENABLED, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %103, %99
  %113 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %114 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %113, i32 0, i32 6
  %115 = call i32 @spin_lock_init(i32* %114)
  %116 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %117 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %116, i32 0, i32 6
  %118 = call i32 @lockdep_set_class(i32* %117, i32* @port_lock_key)
  br label %119

119:                                              ; preds = %112, %103
  %120 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %121 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %120, i32 0, i32 5
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = icmp ne %struct.TYPE_5__* %122, null
  br i1 %123, label %124, label %144

124:                                              ; preds = %119
  %125 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %126 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %125, i32 0, i32 2
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = icmp ne %struct.TYPE_7__* %127, null
  br i1 %128, label %129, label %144

129:                                              ; preds = %124
  %130 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %131 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %130, i32 0, i32 2
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %136 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %135, i32 0, i32 5
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %141 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @of_console_check(i32 %134, i32 %139, i64 %142)
  br label %144

144:                                              ; preds = %129, %124, %119
  %145 = load %struct.uart_driver*, %struct.uart_driver** %4, align 8
  %146 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %147 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %148 = call i32 @uart_configure_port(%struct.uart_driver* %145, %struct.uart_state* %146, %struct.uart_port* %147)
  %149 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %150 = call i64 @uart_console(%struct.uart_port* %149)
  %151 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %152 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  store i32 2, i32* %10, align 4
  %153 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %154 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %153, i32 0, i32 4
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %144
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %160

160:                                              ; preds = %157, %144
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @GFP_KERNEL, align 4
  %163 = call i32** @kcalloc(i32 %161, i32 8, i32 %162)
  %164 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %165 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %164, i32 0, i32 3
  store i32** %163, i32*** %165, align 8
  %166 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %167 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %166, i32 0, i32 3
  %168 = load i32**, i32*** %167, align 8
  %169 = icmp ne i32** %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %160
  %171 = load i32, i32* @ENOMEM, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %8, align 4
  br label %227

173:                                              ; preds = %160
  %174 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %175 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %174, i32 0, i32 3
  %176 = load i32**, i32*** %175, align 8
  %177 = getelementptr inbounds i32*, i32** %176, i64 0
  store i32* @tty_dev_attr_group, i32** %177, align 8
  %178 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %179 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %190

182:                                              ; preds = %173
  %183 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %184 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %187 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %186, i32 0, i32 3
  %188 = load i32**, i32*** %187, align 8
  %189 = getelementptr inbounds i32*, i32** %188, i64 1
  store i32* %185, i32** %189, align 8
  br label %190

190:                                              ; preds = %182, %173
  %191 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %192 = load %struct.uart_driver*, %struct.uart_driver** %4, align 8
  %193 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %192, i32 0, i32 0
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %196 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %199 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %198, i32 0, i32 2
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %202 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %203 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %202, i32 0, i32 3
  %204 = load i32**, i32*** %203, align 8
  %205 = call %struct.device* @tty_port_register_device_attr_serdev(%struct.tty_port* %191, %struct.TYPE_6__* %194, i64 %197, %struct.TYPE_7__* %200, %struct.tty_port* %201, i32** %204)
  store %struct.device* %205, %struct.device** %9, align 8
  %206 = load %struct.device*, %struct.device** %9, align 8
  %207 = call i32 @IS_ERR(%struct.device* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %190
  %210 = load %struct.device*, %struct.device** %9, align 8
  %211 = call i32 @device_set_wakeup_capable(%struct.device* %210, i32 1)
  br label %220

212:                                              ; preds = %190
  %213 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %214 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %213, i32 0, i32 2
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %217 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @dev_err(%struct.TYPE_7__* %215, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %218)
  br label %220

220:                                              ; preds = %212, %209
  %221 = load i32, i32* @UPF_DEAD, align 4
  %222 = xor i32 %221, -1
  %223 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %224 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = and i32 %225, %222
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %220, %170, %96, %41
  %228 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %229 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %228, i32 0, i32 0
  %230 = call i32 @mutex_unlock(i32* %229)
  %231 = call i32 @mutex_unlock(i32* @port_mutex)
  %232 = load i32, i32* %8, align 4
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %227, %20
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kasprintf(i32, i8*, i32, i64) #1

declare dso_local i64 @uart_console(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local i32 @of_console_check(i32, i32, i64) #1

declare dso_local i32 @uart_configure_port(%struct.uart_driver*, %struct.uart_state*, %struct.uart_port*) #1

declare dso_local i32** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.device* @tty_port_register_device_attr_serdev(%struct.tty_port*, %struct.TYPE_6__*, i64, %struct.TYPE_7__*, %struct.tty_port*, i32**) #1

declare dso_local i32 @IS_ERR(%struct.device*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
