; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_quiesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, %struct.TYPE_4__, i32, i64, i32, i32, %struct.TYPE_3__**, i32, %struct.usb_device* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.usb_device = type { i32 }

@HUB_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hub*, i32)* @hub_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hub_quiesce(%struct.usb_hub* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_hub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %9 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %8, i32 0, i32 8
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %5, align 8
  %11 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %12 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %11, i32 0, i32 7
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %16 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %18 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %17, i32 0, i32 7
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @HUB_SUSPEND, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %53, %24
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %28 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %25
  %32 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %33 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %32, i32 0, i32 6
  %34 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %34, i64 %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %31
  %43 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %44 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %43, i32 0, i32 6
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @usb_disconnect(i64* %50)
  br label %52

52:                                               ; preds = %42, %31
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %25

56:                                               ; preds = %25
  br label %57

57:                                               ; preds = %56, %2
  %58 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %59 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %58, i32 0, i32 5
  %60 = call i32 @del_timer_sync(i32* %59)
  %61 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %62 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @usb_kill_urb(i32 %63)
  %65 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %66 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %71 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %70, i32 0, i32 2
  %72 = call i32 @cancel_delayed_work_sync(i32* %71)
  br label %73

73:                                               ; preds = %69, %57
  %74 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %75 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %81 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = call i32 @flush_work(i32* %82)
  br label %84

84:                                               ; preds = %79, %73
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_disconnect(i64*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
