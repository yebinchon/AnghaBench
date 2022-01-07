; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_delete_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_delete_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270 = type { %struct.raw3270*, %struct.ccw_device*, i32 }
%struct.ccw_device = type { i32, i32* }

@raw3270_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3270*)* @raw3270_delete_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3270_delete_device(%struct.raw3270* %0) #0 {
  %2 = alloca %struct.raw3270*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  store %struct.raw3270* %0, %struct.raw3270** %2, align 8
  %4 = call i32 @mutex_lock(i32* @raw3270_mutex)
  %5 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %6 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %5, i32 0, i32 2
  %7 = call i32 @list_del_init(i32* %6)
  %8 = call i32 @mutex_unlock(i32* @raw3270_mutex)
  %9 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %10 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %9, i32 0, i32 1
  %11 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  store %struct.ccw_device* %11, %struct.ccw_device** %3, align 8
  %12 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %13 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %12, i32 0, i32 1
  store %struct.ccw_device* null, %struct.ccw_device** %13, align 8
  %14 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 0
  %16 = call i32 @dev_set_drvdata(i32* %15, i32* null)
  %17 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %18 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %20 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %19, i32 0, i32 0
  %21 = call i32 @put_device(i32* %20)
  %22 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %23 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %22, i32 0, i32 0
  %24 = load %struct.raw3270*, %struct.raw3270** %23, align 8
  %25 = call i32 @kfree(%struct.raw3270* %24)
  %26 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %27 = call i32 @kfree(%struct.raw3270* %26)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @kfree(%struct.raw3270*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
