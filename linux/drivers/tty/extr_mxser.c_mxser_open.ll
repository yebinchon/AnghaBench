; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mxser_port* }
%struct.mxser_port = type { i32, i32 }
%struct.tty_struct = type { i32, %struct.mxser_port* }
%struct.file = type { i32 }

@MXSER_PORTS = common dso_local global i32 0, align 4
@mxser_boards = common dso_local global %struct.TYPE_2__* null, align 8
@MXSER_PORTS_PER_BOARD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @mxser_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxser_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.mxser_port*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @MXSER_PORTS, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mxser_boards, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MXSER_PORTS_PER_BOARD, align 4
  %19 = sdiv i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.mxser_port*, %struct.mxser_port** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MXSER_PORTS_PER_BOARD, align 4
  %26 = srem i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %23, i64 %27
  store %struct.mxser_port* %28, %struct.mxser_port** %6, align 8
  %29 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %30 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %15
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %45

36:                                               ; preds = %15
  %37 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %38 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %39 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %38, i32 0, i32 1
  store %struct.mxser_port* %37, %struct.mxser_port** %39, align 8
  %40 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %41 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %40, i32 0, i32 0
  %42 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %43 = load %struct.file*, %struct.file** %5, align 8
  %44 = call i32 @tty_port_open(i32* %41, %struct.tty_struct* %42, %struct.file* %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %36, %33, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @tty_port_open(i32*, %struct.tty_struct*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
