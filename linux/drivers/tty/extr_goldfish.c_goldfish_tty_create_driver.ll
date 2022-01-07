; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_goldfish.c_goldfish_tty_create_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_goldfish.c_goldfish_tty_create_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i8*, i8*, i32, i32, i32, i32 }

@goldfish_tty_line_count = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@goldfish_ttys = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"goldfish\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ttyGF\00", align 1
@TTY_DRIVER_TYPE_SERIAL = common dso_local global i32 0, align 4
@SERIAL_TYPE_NORMAL = common dso_local global i32 0, align 4
@tty_std_termios = common dso_local global i32 0, align 4
@TTY_DRIVER_RESET_TERMIOS = common dso_local global i32 0, align 4
@TTY_DRIVER_REAL_RAW = common dso_local global i32 0, align 4
@TTY_DRIVER_DYNAMIC_DEV = common dso_local global i32 0, align 4
@goldfish_tty_ops = common dso_local global i32 0, align 4
@goldfish_tty_driver = common dso_local global %struct.tty_driver* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @goldfish_tty_create_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goldfish_tty_create_driver() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_driver*, align 8
  %4 = load i32, i32* @goldfish_tty_line_count, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i32* @kcalloc(i32 %4, i32 4, i32 %5)
  store i32* %6, i32** @goldfish_ttys, align 8
  %7 = load i32*, i32** @goldfish_ttys, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %56

12:                                               ; preds = %0
  %13 = load i32, i32* @goldfish_tty_line_count, align 4
  %14 = call %struct.tty_driver* @alloc_tty_driver(i32 %13)
  store %struct.tty_driver* %14, %struct.tty_driver** %3, align 8
  %15 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %16 = icmp eq %struct.tty_driver* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %53

20:                                               ; preds = %12
  %21 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %22 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %24 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %23, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 8
  %25 = load i32, i32* @TTY_DRIVER_TYPE_SERIAL, align 4
  %26 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %27 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @SERIAL_TYPE_NORMAL, align 4
  %29 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %30 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @tty_std_termios, align 4
  %32 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %33 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @TTY_DRIVER_RESET_TERMIOS, align 4
  %35 = load i32, i32* @TTY_DRIVER_REAL_RAW, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @TTY_DRIVER_DYNAMIC_DEV, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %40 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %42 = call i32 @tty_set_operations(%struct.tty_driver* %41, i32* @goldfish_tty_ops)
  %43 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %44 = call i32 @tty_register_driver(%struct.tty_driver* %43)
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %20
  br label %50

48:                                               ; preds = %20
  %49 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  store %struct.tty_driver* %49, %struct.tty_driver** @goldfish_tty_driver, align 8
  store i32 0, i32* %1, align 4
  br label %58

50:                                               ; preds = %47
  %51 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %52 = call i32 @put_tty_driver(%struct.tty_driver* %51)
  br label %53

53:                                               ; preds = %50, %17
  %54 = load i32*, i32** @goldfish_ttys, align 8
  %55 = call i32 @kfree(i32* %54)
  store i32* null, i32** @goldfish_ttys, align 8
  br label %56

56:                                               ; preds = %53, %9
  %57 = load i32, i32* %2, align 4
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %56, %48
  %59 = load i32, i32* %1, align 4
  ret i32 %59
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.tty_driver* @alloc_tty_driver(i32) #1

declare dso_local i32 @tty_set_operations(%struct.tty_driver*, i32*) #1

declare dso_local i32 @tty_register_driver(%struct.tty_driver*) #1

declare dso_local i32 @put_tty_driver(%struct.tty_driver*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
