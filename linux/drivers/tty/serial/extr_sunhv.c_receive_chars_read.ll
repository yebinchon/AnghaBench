; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunhv.c_receive_chars_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunhv.c_receive_chars_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@receive_chars_read.saw_console_brk = internal global i32 0, align 4
@con_read_page = common dso_local global i64* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@HV_EOK = common dso_local global i64 0, align 8
@CON_BREAK = common dso_local global i64 0, align 8
@CON_HUP = common dso_local global i64 0, align 8
@hung_up = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @receive_chars_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_chars_read(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  store i32 10000, i32* %3, align 4
  br label %8

8:                                                ; preds = %83, %82, %41, %34, %1
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %3, align 4
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %12, label %97

12:                                               ; preds = %8
  %13 = load i64*, i64** @con_read_page, align 8
  %14 = call i64 @__pa(i64* %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = call i64 @sun4v_con_read(i64 %15, i32 %16, i64* %5)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @HV_EOK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %12
  store i64 0, i64* %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @CON_BREAK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32, i32* @receive_chars_read.saw_console_brk, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @sun_do_break()
  br label %30

30:                                               ; preds = %28, %25
  %31 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %32 = call i64 @uart_handle_break(%struct.uart_port* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %8

35:                                               ; preds = %30
  store i32 1, i32* @receive_chars_read.saw_console_brk, align 4
  %36 = load i64*, i64** @con_read_page, align 8
  store i64 0, i64* %36, align 8
  store i64 1, i64* %5, align 8
  br label %45

37:                                               ; preds = %21
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @CON_HUP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  store i32 1, i32* @hung_up, align 4
  %42 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %43 = call i32 @uart_handle_dcd_change(%struct.uart_port* %42, i32 0)
  br label %8

44:                                               ; preds = %37
  br label %97

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %12
  %47 = load i32, i32* @hung_up, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  store i32 0, i32* @hung_up, align 4
  %50 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %51 = call i32 @uart_handle_dcd_change(%struct.uart_port* %50, i32 1)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = load i64*, i64** @con_read_page, align 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  store i64 0, i64* %6, align 8
  br label %62

62:                                               ; preds = %73, %61
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %68 = load i64*, i64** @con_read_page, align 8
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @uart_handle_sysrq_char(%struct.uart_port* %67, i64 %71)
  br label %73

73:                                               ; preds = %66
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %6, align 8
  br label %62

76:                                               ; preds = %62
  store i32 0, i32* @receive_chars_read.saw_console_brk, align 4
  br label %77

77:                                               ; preds = %76, %57, %52
  %78 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %79 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = icmp eq %struct.TYPE_4__* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %8

83:                                               ; preds = %77
  %84 = load i64, i64* %5, align 8
  %85 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %86 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, %84
  store i64 %89, i64* %87, align 8
  %90 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %91 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64*, i64** @con_read_page, align 8
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @tty_insert_flip_string(i32* %93, i64* %94, i64 %95)
  br label %8

97:                                               ; preds = %44, %8
  %98 = load i32, i32* @receive_chars_read.saw_console_brk, align 4
  ret i32 %98
}

declare dso_local i64 @__pa(i64*) #1

declare dso_local i64 @sun4v_con_read(i64, i32, i64*) #1

declare dso_local i32 @sun_do_break(...) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_handle_sysrq_char(%struct.uart_port*, i64) #1

declare dso_local i32 @tty_insert_flip_string(i32*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
