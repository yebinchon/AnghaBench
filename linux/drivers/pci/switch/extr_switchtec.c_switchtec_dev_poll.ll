; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/switch/extr_switchtec.c_switchtec_dev_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/switch/extr_switchtec.c_switchtec_dev_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.switchtec_user* }
%struct.switchtec_user = type { i64, %struct.TYPE_2__, %struct.switchtec_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.switchtec_dev = type { i32, i32, i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@EPOLLRDBAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @switchtec_dev_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchtec_dev_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.switchtec_user*, align 8
  %7 = alloca %struct.switchtec_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.switchtec_user*, %struct.switchtec_user** %10, align 8
  store %struct.switchtec_user* %11, %struct.switchtec_user** %6, align 8
  %12 = load %struct.switchtec_user*, %struct.switchtec_user** %6, align 8
  %13 = getelementptr inbounds %struct.switchtec_user, %struct.switchtec_user* %12, i32 0, i32 2
  %14 = load %struct.switchtec_dev*, %struct.switchtec_dev** %13, align 8
  store %struct.switchtec_dev* %14, %struct.switchtec_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = load %struct.switchtec_user*, %struct.switchtec_user** %6, align 8
  %17 = getelementptr inbounds %struct.switchtec_user, %struct.switchtec_user* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @poll_wait(%struct.file* %15, i32* %18, i32* %19)
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = load %struct.switchtec_dev*, %struct.switchtec_dev** %7, align 8
  %23 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %22, i32 0, i32 2
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @poll_wait(%struct.file* %21, i32* %23, i32* %24)
  %26 = load %struct.switchtec_dev*, %struct.switchtec_dev** %7, align 8
  %27 = call i64 @lock_mutex_and_test_alive(%struct.switchtec_dev* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load i32, i32* @EPOLLIN, align 4
  %31 = load i32, i32* @EPOLLRDHUP, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @EPOLLOUT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @EPOLLERR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @EPOLLHUP, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %3, align 4
  br label %69

39:                                               ; preds = %2
  %40 = load %struct.switchtec_dev*, %struct.switchtec_dev** %7, align 8
  %41 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.switchtec_user*, %struct.switchtec_user** %6, align 8
  %44 = getelementptr inbounds %struct.switchtec_user, %struct.switchtec_user* %43, i32 0, i32 1
  %45 = call i64 @try_wait_for_completion(%struct.TYPE_2__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load i32, i32* @EPOLLIN, align 4
  %49 = load i32, i32* @EPOLLRDNORM, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %47, %39
  %54 = load %struct.switchtec_user*, %struct.switchtec_user** %6, align 8
  %55 = getelementptr inbounds %struct.switchtec_user, %struct.switchtec_user* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.switchtec_dev*, %struct.switchtec_dev** %7, align 8
  %58 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %57, i32 0, i32 0
  %59 = call i64 @atomic_read(i32* %58)
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load i32, i32* @EPOLLPRI, align 4
  %63 = load i32, i32* @EPOLLRDBAND, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %61, %53
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %29
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @lock_mutex_and_test_alive(%struct.switchtec_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @try_wait_for_completion(%struct.TYPE_2__*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
