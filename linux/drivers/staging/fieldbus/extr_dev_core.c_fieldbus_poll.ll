; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/extr_dev_core.c_fieldbus_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/extr_dev_core.c_fieldbus_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.fb_open_file* }
%struct.fb_open_file = type { i64, %struct.fieldbus_dev* }
%struct.fieldbus_dev = type { i64, i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @fieldbus_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fieldbus_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fb_open_file*, align 8
  %6 = alloca %struct.fieldbus_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.fb_open_file*, %struct.fb_open_file** %9, align 8
  store %struct.fb_open_file* %10, %struct.fb_open_file** %5, align 8
  %11 = load %struct.fb_open_file*, %struct.fb_open_file** %5, align 8
  %12 = getelementptr inbounds %struct.fb_open_file, %struct.fb_open_file* %11, i32 0, i32 1
  %13 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %12, align 8
  store %struct.fieldbus_dev* %13, %struct.fieldbus_dev** %6, align 8
  %14 = load i32, i32* @EPOLLIN, align 4
  %15 = load i32, i32* @EPOLLRDNORM, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @EPOLLOUT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @EPOLLWRNORM, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.file*, %struct.file** %3, align 8
  %22 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %6, align 8
  %23 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %22, i32 0, i32 1
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @poll_wait(%struct.file* %21, i32* %23, i32* %24)
  %26 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %6, align 8
  %27 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.fb_open_file*, %struct.fb_open_file** %5, align 8
  %30 = getelementptr inbounds %struct.fb_open_file, %struct.fb_open_file* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load i32, i32* @EPOLLPRI, align 4
  %35 = load i32, i32* @EPOLLERR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %33, %2
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
