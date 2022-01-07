; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorinput/extr_visorinput.c_visorinput_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorinput/extr_visorinput.c_visorinput_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visor_device = type { i32 }
%struct.visor_device.0 = type opaque
%struct.visorinput_devdata = type { i32, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.visor_device*, i32 (%struct.visor_device.0*, i32)*)* @visorinput_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visorinput_resume(%struct.visor_device* %0, i32 (%struct.visor_device.0*, i32)* %1) #0 {
  %3 = alloca %struct.visor_device*, align 8
  %4 = alloca i32 (%struct.visor_device.0*, i32)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.visorinput_devdata*, align 8
  store %struct.visor_device* %0, %struct.visor_device** %3, align 8
  store i32 (%struct.visor_device.0*, i32)* %1, i32 (%struct.visor_device.0*, i32)** %4, align 8
  %7 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %8 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %7, i32 0, i32 0
  %9 = call %struct.visorinput_devdata* @dev_get_drvdata(i32* %8)
  store %struct.visorinput_devdata* %9, %struct.visorinput_devdata** %6, align 8
  %10 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %11 = icmp ne %struct.visorinput_devdata* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %45

15:                                               ; preds = %2
  %16 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %17 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %20 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %41

26:                                               ; preds = %15
  %27 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %28 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load i32 (%struct.visor_device.0*, i32)*, i32 (%struct.visor_device.0*, i32)** %4, align 8
  %30 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %31 = bitcast %struct.visor_device* %30 to %struct.visor_device.0*
  %32 = call i32 %29(%struct.visor_device.0* %31, i32 0)
  %33 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %34 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %39 = call i32 @visorbus_enable_channel_interrupts(%struct.visor_device* %38)
  br label %40

40:                                               ; preds = %37, %26
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %23
  %42 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %43 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  br label %45

45:                                               ; preds = %41, %12
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.visorinput_devdata* @dev_get_drvdata(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @visorbus_enable_channel_interrupts(%struct.visor_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
