; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_tty.c_jsm_remove_uart_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_tty.c_jsm_remove_uart_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_board = type { i32, i32, i32, %struct.jsm_channel** }
%struct.jsm_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@linemap = common dso_local global i32 0, align 4
@jsm_uart_driver = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"finish\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jsm_remove_uart_port(%struct.jsm_board* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jsm_board*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jsm_channel*, align 8
  store %struct.jsm_board* %0, %struct.jsm_board** %3, align 8
  %6 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %7 = icmp ne %struct.jsm_board* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %68

11:                                               ; preds = %1
  %12 = load i32, i32* @INIT, align 4
  %13 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %14 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %13, i32 0, i32 2
  %15 = call i32 @jsm_dbg(i32 %12, i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %17 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %20 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %60, %11
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %24 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %21
  %28 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %29 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %28, i32 0, i32 3
  %30 = load %struct.jsm_channel**, %struct.jsm_channel*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.jsm_channel*, %struct.jsm_channel** %30, i64 %32
  %34 = load %struct.jsm_channel*, %struct.jsm_channel** %33, align 8
  %35 = icmp ne %struct.jsm_channel* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %60

37:                                               ; preds = %27
  %38 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %39 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %38, i32 0, i32 3
  %40 = load %struct.jsm_channel**, %struct.jsm_channel*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.jsm_channel*, %struct.jsm_channel** %40, i64 %42
  %44 = load %struct.jsm_channel*, %struct.jsm_channel** %43, align 8
  store %struct.jsm_channel* %44, %struct.jsm_channel** %5, align 8
  %45 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %46 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @linemap, align 4
  %50 = call i32 @clear_bit(i32 %48, i32 %49)
  %51 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %52 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %51, i32 0, i32 3
  %53 = load %struct.jsm_channel**, %struct.jsm_channel*** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.jsm_channel*, %struct.jsm_channel** %53, i64 %55
  %57 = load %struct.jsm_channel*, %struct.jsm_channel** %56, align 8
  %58 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %57, i32 0, i32 0
  %59 = call i32 @uart_remove_one_port(i32* @jsm_uart_driver, %struct.TYPE_2__* %58)
  br label %60

60:                                               ; preds = %37, %36
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %21

63:                                               ; preds = %21
  %64 = load i32, i32* @INIT, align 4
  %65 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %66 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %65, i32 0, i32 2
  %67 = call i32 @jsm_dbg(i32 %64, i32* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %63, %8
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @jsm_dbg(i32, i32*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
