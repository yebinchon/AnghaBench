; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_ep0_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_ep0_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.dev_data* }
%struct.dev_data = type { i64, i64, i32, i64, i64, i64, i32 }

@STATE_DEV_OPENED = common dso_local global i64 0, align 8
@DEFAULT_POLLMASK = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@STATE_DEV_SETUP = common dso_local global i64 0, align 8
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @ep0_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep0_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dev_data*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.dev_data*, %struct.dev_data** %9, align 8
  store %struct.dev_data* %10, %struct.dev_data** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %12 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @STATE_DEV_OPENED, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @DEFAULT_POLLMASK, align 4
  store i32 %17, i32* %3, align 4
  br label %68

18:                                               ; preds = %2
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %21 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %20, i32 0, i32 6
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @poll_wait(%struct.file* %19, i32* %21, i32* %22)
  %24 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %25 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %24, i32 0, i32 2
  %26 = call i32 @spin_lock_irq(i32* %25)
  %27 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %28 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %33 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @EPOLLHUP, align 4
  store i32 %34, i32* %7, align 4
  br label %63

35:                                               ; preds = %18
  %36 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %37 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @STATE_DEV_SETUP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %43 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %48 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46, %41
  %52 = load i32, i32* @EPOLLOUT, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %51, %46
  br label %62

54:                                               ; preds = %35
  %55 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %56 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @EPOLLIN, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %59, %54
  br label %62

62:                                               ; preds = %61, %53
  br label %63

63:                                               ; preds = %62, %31
  %64 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %65 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %64, i32 0, i32 2
  %66 = call i32 @spin_unlock_irq(i32* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %63, %16
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
