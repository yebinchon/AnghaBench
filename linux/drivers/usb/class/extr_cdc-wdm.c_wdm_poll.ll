; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-wdm.c_wdm_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-wdm.c_wdm_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.wdm_device* }
%struct.wdm_device = type { i32, i32, i32, i64, i64 }
%struct.poll_table_struct = type { i32 }

@WDM_DISCONNECTING = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@WDM_READ = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@WDM_IN_USE = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @wdm_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdm_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.wdm_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.wdm_device*, %struct.wdm_device** %9, align 8
  store %struct.wdm_device* %10, %struct.wdm_device** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %12 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %11, i32 0, i32 1
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* @WDM_DISCONNECTING, align 4
  %16 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %17 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %16, i32 0, i32 2
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load i32, i32* @EPOLLHUP, align 4
  %22 = load i32, i32* @EPOLLERR, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %25 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %24, i32 0, i32 1
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  br label %74

28:                                               ; preds = %2
  %29 = load i32, i32* @WDM_READ, align 4
  %30 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %31 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %30, i32 0, i32 2
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @EPOLLIN, align 4
  %36 = load i32, i32* @EPOLLRDNORM, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %40 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %45 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43, %38
  %49 = load i32, i32* @EPOLLERR, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* @WDM_IN_USE, align 4
  %54 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %55 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %54, i32 0, i32 2
  %56 = call i64 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @EPOLLOUT, align 4
  %60 = load i32, i32* @EPOLLWRNORM, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %58, %52
  %65 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %66 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %65, i32 0, i32 1
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.file*, %struct.file** %3, align 8
  %70 = load %struct.wdm_device*, %struct.wdm_device** %5, align 8
  %71 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %70, i32 0, i32 0
  %72 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %73 = call i32 @poll_wait(%struct.file* %69, i32* %71, %struct.poll_table_struct* %72)
  br label %74

74:                                               ; preds = %64, %20
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
