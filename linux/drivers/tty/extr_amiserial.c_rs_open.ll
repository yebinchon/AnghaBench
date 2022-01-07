; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_rs_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_rs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_state = type { %struct.tty_port }
%struct.tty_port = type { i32, i32, %struct.tty_struct*, i32 }
%struct.tty_struct = type { i32, i32, %struct.tty_port*, %struct.serial_state* }
%struct.file = type { i32 }

@rs_table = common dso_local global %struct.serial_state* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"rs_open\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ASYNC_LOW_LATENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @rs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.serial_state*, align 8
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.serial_state*, %struct.serial_state** @rs_table, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %9, i64 %13
  store %struct.serial_state* %14, %struct.serial_state** %6, align 8
  %15 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %16 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %15, i32 0, i32 0
  store %struct.tty_port* %16, %struct.tty_port** %7, align 8
  %17 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %18 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %22 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %23 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %22, i32 0, i32 2
  store %struct.tty_struct* %21, %struct.tty_struct** %23, align 8
  %24 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %25 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 3
  store %struct.serial_state* %24, %struct.serial_state** %26, align 8
  %27 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %28 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %29 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %28, i32 0, i32 2
  store %struct.tty_port* %27, %struct.tty_port** %29, align 8
  %30 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %31 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %32 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @serial_paranoia_check(%struct.serial_state* %30, i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %62

39:                                               ; preds = %2
  %40 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %41 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ASYNC_LOW_LATENCY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %49 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %51 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %52 = call i32 @startup(%struct.tty_struct* %50, %struct.serial_state* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %39
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %62

57:                                               ; preds = %39
  %58 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %59 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %60 = load %struct.file*, %struct.file** %5, align 8
  %61 = call i32 @tty_port_block_til_ready(%struct.tty_port* %58, %struct.tty_struct* %59, %struct.file* %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %55, %36
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @serial_paranoia_check(%struct.serial_state*, i32, i8*) #1

declare dso_local i32 @startup(%struct.tty_struct*, %struct.serial_state*) #1

declare dso_local i32 @tty_port_block_til_ready(%struct.tty_port*, %struct.tty_struct*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
