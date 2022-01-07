; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.uvesafb_ktask = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@v86d_started = common dso_local global i64 0, align 8
@TF_EXIT = common dso_local global i32 0, align 4
@uvesafb_cn_id = common dso_local global i32 0, align 4
@uvesafb_driver = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@driver_attr_v86d = common dso_local global i32 0, align 4
@uvesafb_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @uvesafb_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvesafb_exit() #0 {
  %1 = alloca %struct.uvesafb_ktask*, align 8
  %2 = load i64, i64* @v86d_started, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %18

4:                                                ; preds = %0
  %5 = call %struct.uvesafb_ktask* (...) @uvesafb_prep()
  store %struct.uvesafb_ktask* %5, %struct.uvesafb_ktask** %1, align 8
  %6 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %1, align 8
  %7 = icmp ne %struct.uvesafb_ktask* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = load i32, i32* @TF_EXIT, align 4
  %10 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %1, align 8
  %11 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %1, align 8
  %14 = call i32 @uvesafb_exec(%struct.uvesafb_ktask* %13)
  %15 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %1, align 8
  %16 = call i32 @uvesafb_free(%struct.uvesafb_ktask* %15)
  br label %17

17:                                               ; preds = %8, %4
  br label %18

18:                                               ; preds = %17, %0
  %19 = call i32 @cn_del_callback(i32* @uvesafb_cn_id)
  %20 = call i32 @driver_remove_file(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uvesafb_driver, i32 0, i32 0), i32* @driver_attr_v86d)
  %21 = load i32, i32* @uvesafb_device, align 4
  %22 = call i32 @platform_device_unregister(i32 %21)
  %23 = call i32 @platform_driver_unregister(%struct.TYPE_5__* @uvesafb_driver)
  ret void
}

declare dso_local %struct.uvesafb_ktask* @uvesafb_prep(...) #1

declare dso_local i32 @uvesafb_exec(%struct.uvesafb_ktask*) #1

declare dso_local i32 @uvesafb_free(%struct.uvesafb_ktask*) #1

declare dso_local i32 @cn_del_callback(i32*) #1

declare dso_local i32 @driver_remove_file(i32*, i32*) #1

declare dso_local i32 @platform_device_unregister(i32) #1

declare dso_local i32 @platform_driver_unregister(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
