; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_suncore.c_sunserial_console_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_suncore.c_sunserial_console_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.console = type { i32, i32 }
%struct.uart_driver = type { %struct.console* }

@of_console_device = common dso_local global %struct.device_node* null, align 8
@of_console_options = common dso_local global i8* null, align 8
@console_set_on_cmdline = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sunserial_console_match(%struct.console* %0, %struct.device_node* %1, %struct.uart_driver* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.console*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.uart_driver*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.console* %0, %struct.console** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store %struct.uart_driver* %2, %struct.uart_driver** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.console*, %struct.console** %7, align 8
  %14 = icmp ne %struct.console* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %56

16:                                               ; preds = %5
  %17 = load %struct.console*, %struct.console** %7, align 8
  %18 = load %struct.uart_driver*, %struct.uart_driver** %9, align 8
  %19 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %18, i32 0, i32 0
  store %struct.console* %17, %struct.console** %19, align 8
  %20 = load %struct.device_node*, %struct.device_node** @of_console_device, align 8
  %21 = load %struct.device_node*, %struct.device_node** %8, align 8
  %22 = icmp ne %struct.device_node* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %56

24:                                               ; preds = %16
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  %28 = load i8*, i8** @of_console_options, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i8*, i8** @of_console_options, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 98
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %12, align 4
  br label %36

36:                                               ; preds = %35, %30, %27
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, 1
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %56

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32, i32* @console_set_on_cmdline, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.console*, %struct.console** %7, align 8
  %49 = getelementptr inbounds %struct.console, %struct.console* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.console*, %struct.console** %7, align 8
  %51 = getelementptr inbounds %struct.console, %struct.console* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @add_preferred_console(i32 %52, i32 %53, i32* null)
  br label %55

55:                                               ; preds = %46, %43
  store i32 1, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %41, %23, %15
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @add_preferred_console(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
