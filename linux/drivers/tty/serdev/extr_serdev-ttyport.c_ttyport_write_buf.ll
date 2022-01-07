; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_ttyport_write_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_ttyport_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_controller = type { i32 }
%struct.serport = type { %struct.tty_struct*, i32 }
%struct.tty_struct = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*, i8*, i64)* }

@SERPORT_ACTIVE = common dso_local global i32 0, align 4
@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_controller*, i8*, i64)* @ttyport_write_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttyport_write_buf(%struct.serdev_controller* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.serdev_controller*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.serport*, align 8
  %9 = alloca %struct.tty_struct*, align 8
  store %struct.serdev_controller* %0, %struct.serdev_controller** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.serdev_controller*, %struct.serdev_controller** %5, align 8
  %11 = call %struct.serport* @serdev_controller_get_drvdata(%struct.serdev_controller* %10)
  store %struct.serport* %11, %struct.serport** %8, align 8
  %12 = load %struct.serport*, %struct.serport** %8, align 8
  %13 = getelementptr inbounds %struct.serport, %struct.serport* %12, i32 0, i32 0
  %14 = load %struct.tty_struct*, %struct.tty_struct** %13, align 8
  store %struct.tty_struct* %14, %struct.tty_struct** %9, align 8
  %15 = load i32, i32* @SERPORT_ACTIVE, align 4
  %16 = load %struct.serport*, %struct.serport** %8, align 8
  %17 = getelementptr inbounds %struct.serport, %struct.serport* %16, i32 0, i32 1
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %37

21:                                               ; preds = %3
  %22 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %23 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %24 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %23, i32 0, i32 1
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  %26 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %27 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.tty_struct*, i8*, i64)*, i32 (%struct.tty_struct*, i8*, i64)** %29, align 8
  %31 = load %struct.serport*, %struct.serport** %8, align 8
  %32 = getelementptr inbounds %struct.serport, %struct.serport* %31, i32 0, i32 0
  %33 = load %struct.tty_struct*, %struct.tty_struct** %32, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 %30(%struct.tty_struct* %33, i8* %34, i64 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %21, %20
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.serport* @serdev_controller_get_drvdata(%struct.serdev_controller*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
