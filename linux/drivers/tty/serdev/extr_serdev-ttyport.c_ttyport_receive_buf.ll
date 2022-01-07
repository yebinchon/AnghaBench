; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_ttyport_receive_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_ttyport_receive_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { %struct.serdev_controller* }
%struct.serdev_controller = type { i32 }
%struct.serport = type { i32 }

@SERPORT_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"receive_buf returns %d (count = %zu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_port*, i8*, i8*, i64)* @ttyport_receive_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttyport_receive_buf(%struct.tty_port* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_port*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.serdev_controller*, align 8
  %11 = alloca %struct.serport*, align 8
  %12 = alloca i32, align 4
  store %struct.tty_port* %0, %struct.tty_port** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %14 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %13, i32 0, i32 0
  %15 = load %struct.serdev_controller*, %struct.serdev_controller** %14, align 8
  store %struct.serdev_controller* %15, %struct.serdev_controller** %10, align 8
  %16 = load %struct.serdev_controller*, %struct.serdev_controller** %10, align 8
  %17 = call %struct.serport* @serdev_controller_get_drvdata(%struct.serdev_controller* %16)
  store %struct.serport* %17, %struct.serport** %11, align 8
  %18 = load i32, i32* @SERPORT_ACTIVE, align 4
  %19 = load %struct.serport*, %struct.serport** %11, align 8
  %20 = getelementptr inbounds %struct.serport, %struct.serport* %19, i32 0, i32 0
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %58

24:                                               ; preds = %4
  %25 = load %struct.serdev_controller*, %struct.serdev_controller** %10, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @serdev_controller_receive_buf(%struct.serdev_controller* %25, i8* %26, i64 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.serdev_controller*, %struct.serdev_controller** %10, align 8
  %30 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %29, i32 0, i32 0
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %9, align 8
  %37 = icmp ugt i64 %35, %36
  br label %38

38:                                               ; preds = %33, %24
  %39 = phi i1 [ true, %24 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %12, align 4
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @dev_WARN_ONCE(i32* %30, i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %42)
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %58

47:                                               ; preds = %38
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %9, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i64, i64* %9, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %52, %46, %23
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.serport* @serdev_controller_get_drvdata(%struct.serdev_controller*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @serdev_controller_receive_buf(%struct.serdev_controller*, i8*, i64) #1

declare dso_local i32 @dev_WARN_ONCE(i32*, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
