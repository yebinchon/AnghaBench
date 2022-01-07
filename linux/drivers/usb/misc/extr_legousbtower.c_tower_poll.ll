; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_legousbtower.c_tower_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_legousbtower.c_tower_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.lego_usb_tower* }
%struct.lego_usb_tower = type { i64, i32, i32, i32, i64 }

@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @tower_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tower_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.lego_usb_tower*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %9, align 8
  store %struct.lego_usb_tower* %10, %struct.lego_usb_tower** %6, align 8
  %11 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %6, align 8
  %12 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @EPOLLERR, align 4
  %17 = load i32, i32* @EPOLLHUP, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %3, align 4
  br label %55

19:                                               ; preds = %2
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %6, align 8
  %22 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %21, i32 0, i32 3
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @poll_wait(%struct.file* %20, i32* %22, i32* %23)
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %6, align 8
  %27 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %26, i32 0, i32 2
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @poll_wait(%struct.file* %25, i32* %27, i32* %28)
  %30 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %6, align 8
  %31 = call i32 @tower_check_for_read_packet(%struct.lego_usb_tower* %30)
  %32 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %6, align 8
  %33 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %19
  %37 = load i32, i32* @EPOLLIN, align 4
  %38 = load i32, i32* @EPOLLRDNORM, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %36, %19
  %43 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %6, align 8
  %44 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @EPOLLOUT, align 4
  %49 = load i32, i32* @EPOLLWRNORM, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %15
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @tower_check_for_read_packet(%struct.lego_usb_tower*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
