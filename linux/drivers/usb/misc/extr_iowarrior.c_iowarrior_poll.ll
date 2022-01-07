; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_iowarrior.c_iowarrior_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_iowarrior.c_iowarrior_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.iowarrior* }
%struct.iowarrior = type { i32, i32, i32, i32 }

@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@MAX_WRITES_IN_FLIGHT = common dso_local global i64 0, align 8
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @iowarrior_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iowarrior_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.iowarrior*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.iowarrior*, %struct.iowarrior** %9, align 8
  store %struct.iowarrior* %10, %struct.iowarrior** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %12 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EPOLLERR, align 4
  %17 = load i32, i32* @EPOLLHUP, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %3, align 4
  br label %62

19:                                               ; preds = %2
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %22 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %21, i32 0, i32 3
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @poll_wait(%struct.file* %20, i32* %22, i32* %23)
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %27 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %26, i32 0, i32 2
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @poll_wait(%struct.file* %25, i32* %27, i32* %28)
  %30 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %31 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %19
  %35 = load i32, i32* @EPOLLERR, align 4
  %36 = load i32, i32* @EPOLLHUP, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %3, align 4
  br label %62

38:                                               ; preds = %19
  %39 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %40 = call i32 @read_index(%struct.iowarrior* %39)
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @EPOLLIN, align 4
  %44 = load i32, i32* @EPOLLRDNORM, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %42, %38
  %49 = load %struct.iowarrior*, %struct.iowarrior** %6, align 8
  %50 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %49, i32 0, i32 0
  %51 = call i64 @atomic_read(i32* %50)
  %52 = load i64, i64* @MAX_WRITES_IN_FLIGHT, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i32, i32* @EPOLLOUT, align 4
  %56 = load i32, i32* @EPOLLWRNORM, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %54, %48
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %34, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @read_index(%struct.iowarrior*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
