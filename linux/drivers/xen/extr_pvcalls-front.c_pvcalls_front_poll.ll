; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.socket = type { i32 }
%struct.pvcalls_bedata = type { i32 }
%struct.sock_mapping = type { i64 }

@EPOLLNVAL = common dso_local global i32 0, align 4
@pvcalls_front_dev = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvcalls_front_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pvcalls_bedata*, align 8
  %9 = alloca %struct.sock_mapping*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.socket*, %struct.socket** %6, align 8
  %12 = call %struct.sock_mapping* @pvcalls_enter_sock(%struct.socket* %11)
  store %struct.sock_mapping* %12, %struct.sock_mapping** %9, align 8
  %13 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %14 = call i64 @IS_ERR(%struct.sock_mapping* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EPOLLNVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %42

18:                                               ; preds = %3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pvcalls_front_dev, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call %struct.pvcalls_bedata* @dev_get_drvdata(i32* %20)
  store %struct.pvcalls_bedata* %21, %struct.pvcalls_bedata** %8, align 8
  %22 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %23 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.file*, %struct.file** %5, align 8
  %28 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %29 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @pvcalls_front_poll_active(%struct.file* %27, %struct.pvcalls_bedata* %28, %struct.sock_mapping* %29, i32* %30)
  store i32 %31, i32* %10, align 4
  br label %38

32:                                               ; preds = %18
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %35 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @pvcalls_front_poll_passive(%struct.file* %33, %struct.pvcalls_bedata* %34, %struct.sock_mapping* %35, i32* %36)
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.socket*, %struct.socket** %6, align 8
  %40 = call i32 @pvcalls_exit_sock(%struct.socket* %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %16
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.sock_mapping* @pvcalls_enter_sock(%struct.socket*) #1

declare dso_local i64 @IS_ERR(%struct.sock_mapping*) #1

declare dso_local %struct.pvcalls_bedata* @dev_get_drvdata(i32*) #1

declare dso_local i32 @pvcalls_front_poll_active(%struct.file*, %struct.pvcalls_bedata*, %struct.sock_mapping*, i32*) #1

declare dso_local i32 @pvcalls_front_poll_passive(%struct.file*, %struct.pvcalls_bedata*, %struct.sock_mapping*, i32*) #1

declare dso_local i32 @pvcalls_exit_sock(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
