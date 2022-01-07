; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_core.c_slim_report_absent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_core.c_slim_report_absent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_device = type { i32, i32, %struct.slim_controller* }
%struct.slim_controller = type { i32, i32 }

@SLIM_DEVICE_STATUS_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slim_report_absent(%struct.slim_device* %0) #0 {
  %2 = alloca %struct.slim_device*, align 8
  %3 = alloca %struct.slim_controller*, align 8
  store %struct.slim_device* %0, %struct.slim_device** %2, align 8
  %4 = load %struct.slim_device*, %struct.slim_device** %2, align 8
  %5 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %4, i32 0, i32 2
  %6 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  store %struct.slim_controller* %6, %struct.slim_controller** %3, align 8
  %7 = load %struct.slim_controller*, %struct.slim_controller** %3, align 8
  %8 = icmp ne %struct.slim_controller* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.slim_controller*, %struct.slim_controller** %3, align 8
  %12 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.slim_device*, %struct.slim_device** %2, align 8
  %15 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.slim_controller*, %struct.slim_controller** %3, align 8
  %17 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %16, i32 0, i32 1
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load %struct.slim_controller*, %struct.slim_controller** %3, align 8
  %20 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %19, i32 0, i32 0
  %21 = load %struct.slim_device*, %struct.slim_device** %2, align 8
  %22 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ida_simple_remove(i32* %20, i32 %23)
  %25 = load %struct.slim_device*, %struct.slim_device** %2, align 8
  %26 = load i32, i32* @SLIM_DEVICE_STATUS_DOWN, align 4
  %27 = call i32 @slim_device_update_status(%struct.slim_device* %25, i32 %26)
  br label %28

28:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @slim_device_update_status(%struct.slim_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
