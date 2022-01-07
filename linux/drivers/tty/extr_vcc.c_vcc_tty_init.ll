; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_tty_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_tty_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"VCC: %s\0A\00", align 1
@version = common dso_local global i32 0, align 4
@VCC_MAX_PORTS = common dso_local global i32 0, align 4
@VCC_TTY_FLAGS = common dso_local global i32 0, align 4
@vcc_tty_driver = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"VCC: TTY driver alloc failed\0A\00", align 1
@vcc_driver_name = common dso_local global i32 0, align 4
@vcc_device_node = common dso_local global i32 0, align 4
@VCC_MINOR_START = common dso_local global i32 0, align 4
@TTY_DRIVER_TYPE_SYSTEM = common dso_local global i32 0, align 4
@vcc_tty_termios = common dso_local global i32 0, align 4
@vcc_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"VCC: TTY driver registration failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"VCC: TTY driver registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vcc_tty_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcc_tty_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @version, align 4
  %4 = call i32 @pr_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @VCC_MAX_PORTS, align 4
  %6 = load i32, i32* @VCC_TTY_FLAGS, align 4
  %7 = call %struct.TYPE_8__* @tty_alloc_driver(i32 %5, i32 %6)
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** @vcc_tty_driver, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vcc_tty_driver, align 8
  %9 = call i64 @IS_ERR(%struct.TYPE_8__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vcc_tty_driver, align 8
  %14 = call i32 @PTR_ERR(%struct.TYPE_8__* %13)
  store i32 %14, i32* %1, align 4
  br label %44

15:                                               ; preds = %0
  %16 = load i32, i32* @vcc_driver_name, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vcc_tty_driver, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @vcc_device_node, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vcc_tty_driver, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @VCC_MINOR_START, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vcc_tty_driver, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @TTY_DRIVER_TYPE_SYSTEM, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vcc_tty_driver, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @vcc_tty_termios, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vcc_tty_driver, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vcc_tty_driver, align 8
  %32 = call i32 @tty_set_operations(%struct.TYPE_8__* %31, i32* @vcc_ops)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vcc_tty_driver, align 8
  %34 = call i32 @tty_register_driver(%struct.TYPE_8__* %33)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %15
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vcc_tty_driver, align 8
  %40 = call i32 @put_tty_driver(%struct.TYPE_8__* %39)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @vcc_tty_driver, align 8
  %41 = load i32, i32* %2, align 4
  store i32 %41, i32* %1, align 4
  br label %44

42:                                               ; preds = %15
  %43 = call i32 @vccdbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %44

44:                                               ; preds = %42, %37, %11
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.TYPE_8__* @tty_alloc_driver(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @tty_set_operations(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @tty_register_driver(%struct.TYPE_8__*) #1

declare dso_local i32 @put_tty_driver(%struct.TYPE_8__*) #1

declare dso_local i32 @vccdbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
