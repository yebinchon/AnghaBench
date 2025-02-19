; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_adutux.c_adu_abort_transfers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_adutux.c_adu_abort_transfers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adu_device = type { i32, i32, i32, i32, i32, i32, i64 }

@COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adu_device*)* @adu_abort_transfers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adu_abort_transfers(%struct.adu_device* %0) #0 {
  %2 = alloca %struct.adu_device*, align 8
  %3 = alloca i64, align 8
  store %struct.adu_device* %0, %struct.adu_device** %2, align 8
  %4 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %5 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %63

9:                                                ; preds = %1
  %10 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %11 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %10, i32 0, i32 0
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %15 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %9
  %19 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %20 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %19, i32 0, i32 0
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %24 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @usb_kill_urb(i32 %25)
  br label %32

27:                                               ; preds = %9
  %28 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %29 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %28, i32 0, i32 0
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  br label %32

32:                                               ; preds = %27, %18
  %33 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %34 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %33, i32 0, i32 0
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %38 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %32
  %42 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %43 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %42, i32 0, i32 0
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %47 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %50 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @COMMAND_TIMEOUT, align 4
  %53 = call i32 @wait_event_timeout(i32 %48, i32 %51, i32 %52)
  %54 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %55 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @usb_kill_urb(i32 %56)
  br label %63

58:                                               ; preds = %32
  %59 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %60 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %59, i32 0, i32 0
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %8, %58, %41
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
