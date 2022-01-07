; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.uart_driver = type { i32, %struct.uart_state*, i32, i32, i32, i32, %struct.tty_driver* }
%struct.uart_state = type { %struct.tty_port }
%struct.tty_port = type { i32* }
%struct.tty_driver = type { i32, %struct.uart_driver*, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TTY_DRIVER_TYPE_SERIAL = common dso_local global i32 0, align 4
@SERIAL_TYPE_NORMAL = common dso_local global i32 0, align 4
@tty_std_termios = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@B9600 = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@TTY_DRIVER_REAL_RAW = common dso_local global i32 0, align 4
@TTY_DRIVER_DYNAMIC_DEV = common dso_local global i32 0, align 4
@uart_ops = common dso_local global i32 0, align 4
@uart_port_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_register_driver(%struct.uart_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_driver*, align 8
  %4 = alloca %struct.tty_driver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_state*, align 8
  %8 = alloca %struct.tty_port*, align 8
  store %struct.uart_driver* %0, %struct.uart_driver** %3, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %12 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %11, i32 0, i32 1
  %13 = load %struct.uart_state*, %struct.uart_state** %12, align 8
  %14 = call i32 @BUG_ON(%struct.uart_state* %13)
  %15 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %16 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.uart_state* @kcalloc(i32 %17, i32 8, i32 %18)
  %20 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %21 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %20, i32 0, i32 1
  store %struct.uart_state* %19, %struct.uart_state** %21, align 8
  %22 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %23 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %22, i32 0, i32 1
  %24 = load %struct.uart_state*, %struct.uart_state** %23, align 8
  %25 = icmp ne %struct.uart_state* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %152

27:                                               ; preds = %1
  %28 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %29 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.tty_driver* @alloc_tty_driver(i32 %30)
  store %struct.tty_driver* %31, %struct.tty_driver** %4, align 8
  %32 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %33 = icmp ne %struct.tty_driver* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %147

35:                                               ; preds = %27
  %36 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %37 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %38 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %37, i32 0, i32 6
  store %struct.tty_driver* %36, %struct.tty_driver** %38, align 8
  %39 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %40 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %43 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 8
  %44 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %45 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %48 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %50 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %53 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %55 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %58 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @TTY_DRIVER_TYPE_SERIAL, align 4
  %60 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %61 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @SERIAL_TYPE_NORMAL, align 4
  %63 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %64 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %66 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %65, i32 0, i32 2
  %67 = bitcast %struct.TYPE_2__* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 4 bitcast (%struct.TYPE_2__* @tty_std_termios to i8*), i64 12, i1 false)
  %68 = load i32, i32* @B9600, align 4
  %69 = load i32, i32* @CS8, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @CREAD, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @HUPCL, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @CLOCAL, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %78 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %81 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i32 9600, i32* %82, align 8
  %83 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %84 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32 9600, i32* %85, align 4
  %86 = load i32, i32* @TTY_DRIVER_REAL_RAW, align 4
  %87 = load i32, i32* @TTY_DRIVER_DYNAMIC_DEV, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %90 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %92 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %93 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %92, i32 0, i32 1
  store %struct.uart_driver* %91, %struct.uart_driver** %93, align 8
  %94 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %95 = call i32 @tty_set_operations(%struct.tty_driver* %94, i32* @uart_ops)
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %115, %35
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %99 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %96
  %103 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %104 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %103, i32 0, i32 1
  %105 = load %struct.uart_state*, %struct.uart_state** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %105, i64 %107
  store %struct.uart_state* %108, %struct.uart_state** %7, align 8
  %109 = load %struct.uart_state*, %struct.uart_state** %7, align 8
  %110 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %109, i32 0, i32 0
  store %struct.tty_port* %110, %struct.tty_port** %8, align 8
  %111 = load %struct.tty_port*, %struct.tty_port** %8, align 8
  %112 = call i32 @tty_port_init(%struct.tty_port* %111)
  %113 = load %struct.tty_port*, %struct.tty_port** %8, align 8
  %114 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %113, i32 0, i32 0
  store i32* @uart_port_ops, i32** %114, align 8
  br label %115

115:                                              ; preds = %102
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %96

118:                                              ; preds = %96
  %119 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %120 = call i32 @tty_register_driver(%struct.tty_driver* %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %2, align 4
  br label %154

125:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %141, %125
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %129 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %126
  %133 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %134 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %133, i32 0, i32 1
  %135 = load %struct.uart_state*, %struct.uart_state** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %135, i64 %137
  %139 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %138, i32 0, i32 0
  %140 = call i32 @tty_port_destroy(%struct.tty_port* %139)
  br label %141

141:                                              ; preds = %132
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %5, align 4
  br label %126

144:                                              ; preds = %126
  %145 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %146 = call i32 @put_tty_driver(%struct.tty_driver* %145)
  br label %147

147:                                              ; preds = %144, %34
  %148 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %149 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %148, i32 0, i32 1
  %150 = load %struct.uart_state*, %struct.uart_state** %149, align 8
  %151 = call i32 @kfree(%struct.uart_state* %150)
  br label %152

152:                                              ; preds = %147, %26
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %152, %123
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @BUG_ON(%struct.uart_state*) #1

declare dso_local %struct.uart_state* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.tty_driver* @alloc_tty_driver(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tty_set_operations(%struct.tty_driver*, i32*) #1

declare dso_local i32 @tty_port_init(%struct.tty_port*) #1

declare dso_local i32 @tty_register_driver(%struct.tty_driver*) #1

declare dso_local i32 @tty_port_destroy(%struct.tty_port*) #1

declare dso_local i32 @put_tty_driver(%struct.tty_driver*) #1

declare dso_local i32 @kfree(%struct.uart_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
