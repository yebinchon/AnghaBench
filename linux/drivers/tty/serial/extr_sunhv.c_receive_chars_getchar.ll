; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunhv.c_receive_chars_getchar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunhv.c_receive_chars_getchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@HV_EWOULDBLOCK = common dso_local global i64 0, align 8
@CON_BREAK = common dso_local global i64 0, align 8
@CON_HUP = common dso_local global i64 0, align 8
@hung_up = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @receive_chars_getchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_chars_getchar(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 10000, i32* %4, align 4
  br label %7

7:                                                ; preds = %61, %60, %46, %25, %1
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %4, align 4
  %10 = icmp sgt i32 %8, 0
  br i1 %10, label %11, label %69

11:                                               ; preds = %7
  %12 = call i64 @sun4v_con_getchar(i64* %5)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @HV_EWOULDBLOCK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %69

17:                                               ; preds = %11
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @CON_BREAK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = call i64 @uart_handle_break(%struct.uart_port* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %7

26:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  store i64 0, i64* %6, align 8
  br label %27

27:                                               ; preds = %26, %17
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @CON_HUP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  store i32 1, i32* @hung_up, align 4
  %32 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %33 = call i32 @uart_handle_dcd_change(%struct.uart_port* %32, i32 0)
  br label %41

34:                                               ; preds = %27
  %35 = load i32, i32* @hung_up, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  store i32 0, i32* @hung_up, align 4
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = call i32 @uart_handle_dcd_change(%struct.uart_port* %38, i32 1)
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %31
  %42 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = icmp eq %struct.TYPE_4__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %47, i64 %48)
  br label %7

50:                                               ; preds = %41
  %51 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %52 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %7

61:                                               ; preds = %50
  %62 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %6, align 8
  %67 = load i32, i32* @TTY_NORMAL, align 4
  %68 = call i32 @tty_insert_flip_char(i32* %65, i64 %66, i32 %67)
  br label %7

69:                                               ; preds = %16, %7
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @sun4v_con_getchar(i64*) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.uart_port*, i32) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i64) #1

declare dso_local i32 @tty_insert_flip_char(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
