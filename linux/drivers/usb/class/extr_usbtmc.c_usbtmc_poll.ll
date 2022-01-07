; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_usbtmc.c_usbtmc_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_usbtmc.c_usbtmc_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.usbtmc_file_data* }
%struct.usbtmc_file_data = type { i32, i64, i64, i32, i32, i32, %struct.usbtmc_device_data* }
%struct.usbtmc_device_data = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"poll mask = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @usbtmc_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtmc_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.usbtmc_file_data*, align 8
  %6 = alloca %struct.usbtmc_device_data*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %9, align 8
  store %struct.usbtmc_file_data* %10, %struct.usbtmc_file_data** %5, align 8
  %11 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %5, align 8
  %12 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %11, i32 0, i32 6
  %13 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %12, align 8
  store %struct.usbtmc_device_data* %13, %struct.usbtmc_device_data** %6, align 8
  %14 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %6, align 8
  %15 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %6, align 8
  %18 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @EPOLLHUP, align 4
  %23 = load i32, i32* @EPOLLERR, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %7, align 4
  br label %88

25:                                               ; preds = %2
  %26 = load %struct.file*, %struct.file** %3, align 8
  %27 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %6, align 8
  %28 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %27, i32 0, i32 2
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @poll_wait(%struct.file* %26, i32* %28, i32* %29)
  store i32 0, i32* %7, align 4
  %31 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %5, align 8
  %32 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %31, i32 0, i32 5
  %33 = call i64 @atomic_read(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load i32, i32* @EPOLLPRI, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %25
  %40 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %5, align 8
  %41 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %40, i32 0, i32 4
  %42 = call i64 @usb_anchor_empty(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* @EPOLLOUT, align 4
  %46 = load i32, i32* @EPOLLWRNORM, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %44, %39
  %51 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %5, align 8
  %52 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %51, i32 0, i32 3
  %53 = call i64 @usb_anchor_empty(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @EPOLLIN, align 4
  %57 = load i32, i32* @EPOLLRDNORM, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %55, %50
  %62 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %5, align 8
  %63 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %62, i32 0, i32 0
  %64 = call i32 @spin_lock_irq(i32* %63)
  %65 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %5, align 8
  %66 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %61
  %70 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %5, align 8
  %71 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69, %61
  %75 = load i32, i32* @EPOLLERR, align 4
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %5, align 8
  %80 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock_irq(i32* %80)
  %82 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %6, align 8
  %83 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @dev_dbg(i32* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %78, %21
  %89 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %6, align 8
  %90 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @usb_anchor_empty(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
