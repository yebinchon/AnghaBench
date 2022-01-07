; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, i32 }
%struct.soc_camera_host = type { %struct.soc_camera_device*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.soc_camera_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_camera_device*)* @soc_camera_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soc_camera_remove_device(%struct.soc_camera_device* %0) #0 {
  %2 = alloca %struct.soc_camera_device*, align 8
  %3 = alloca %struct.soc_camera_host*, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %2, align 8
  %4 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %5 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %6)
  store %struct.soc_camera_host* %7, %struct.soc_camera_host** %3, align 8
  %8 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %9 = load %struct.soc_camera_host*, %struct.soc_camera_host** %3, align 8
  %10 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %9, i32 0, i32 0
  %11 = load %struct.soc_camera_device*, %struct.soc_camera_device** %10, align 8
  %12 = icmp ne %struct.soc_camera_device* %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %43

17:                                               ; preds = %1
  %18 = load %struct.soc_camera_host*, %struct.soc_camera_host** %3, align 8
  %19 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.soc_camera_device*)*, i32 (%struct.soc_camera_device*)** %21, align 8
  %23 = icmp ne i32 (%struct.soc_camera_device*)* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.soc_camera_host*, %struct.soc_camera_host** %3, align 8
  %26 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.soc_camera_device*)*, i32 (%struct.soc_camera_device*)** %28, align 8
  %30 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %31 = call i32 %29(%struct.soc_camera_device* %30)
  br label %32

32:                                               ; preds = %24, %17
  %33 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %34 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load %struct.soc_camera_host*, %struct.soc_camera_host** %3, align 8
  %39 = call i32 @soc_camera_clock_stop(%struct.soc_camera_host* %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.soc_camera_host*, %struct.soc_camera_host** %3, align 8
  %42 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %41, i32 0, i32 0
  store %struct.soc_camera_device* null, %struct.soc_camera_device** %42, align 8
  br label %43

43:                                               ; preds = %40, %16
  ret void
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @soc_camera_clock_stop(%struct.soc_camera_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
