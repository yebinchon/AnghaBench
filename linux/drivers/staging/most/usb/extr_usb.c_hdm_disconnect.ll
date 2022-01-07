; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_hdm_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_hdm_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.most_dev = type { %struct.most_dev*, %struct.most_dev*, %struct.most_dev*, %struct.most_dev*, i32, %struct.TYPE_2__*, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @hdm_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdm_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.most_dev*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.most_dev* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.most_dev* %5, %struct.most_dev** %3, align 8
  %6 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %7 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %6, i32 0, i32 8
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %10 = call i32 @usb_set_intfdata(%struct.usb_interface* %9, i32* null)
  %11 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %12 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %11, i32 0, i32 9
  store i32* null, i32** %12, align 8
  %13 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %14 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %13, i32 0, i32 8
  %15 = call i32 @mutex_unlock(i32* %14)
  %16 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %17 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %16, i32 0, i32 7
  %18 = call i32 @del_timer_sync(i32* %17)
  %19 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %20 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %19, i32 0, i32 6
  %21 = call i32 @cancel_work_sync(i32* %20)
  %22 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %23 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %22, i32 0, i32 5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @device_unregister(i32* %25)
  %27 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %28 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %27, i32 0, i32 4
  %29 = call i32 @most_deregister_interface(i32* %28)
  %30 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %31 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %30, i32 0, i32 3
  %32 = load %struct.most_dev*, %struct.most_dev** %31, align 8
  %33 = call i32 @kfree(%struct.most_dev* %32)
  %34 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %35 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %34, i32 0, i32 2
  %36 = load %struct.most_dev*, %struct.most_dev** %35, align 8
  %37 = call i32 @kfree(%struct.most_dev* %36)
  %38 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %39 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %38, i32 0, i32 1
  %40 = load %struct.most_dev*, %struct.most_dev** %39, align 8
  %41 = call i32 @kfree(%struct.most_dev* %40)
  %42 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %43 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %42, i32 0, i32 0
  %44 = load %struct.most_dev*, %struct.most_dev** %43, align 8
  %45 = call i32 @kfree(%struct.most_dev* %44)
  %46 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %47 = call i32 @kfree(%struct.most_dev* %46)
  ret void
}

declare dso_local %struct.most_dev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @most_deregister_interface(i32*) #1

declare dso_local i32 @kfree(%struct.most_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
