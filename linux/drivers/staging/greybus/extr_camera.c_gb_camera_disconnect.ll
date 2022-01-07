; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_bundle = type { i32 }
%struct.gb_camera = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_bundle*)* @gb_camera_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_camera_disconnect(%struct.gb_bundle* %0) #0 {
  %2 = alloca %struct.gb_bundle*, align 8
  %3 = alloca %struct.gb_camera*, align 8
  %4 = alloca i32, align 4
  store %struct.gb_bundle* %0, %struct.gb_bundle** %2, align 8
  %5 = load %struct.gb_bundle*, %struct.gb_bundle** %2, align 8
  %6 = call %struct.gb_camera* @greybus_get_drvdata(%struct.gb_bundle* %5)
  store %struct.gb_camera* %6, %struct.gb_camera** %3, align 8
  %7 = load %struct.gb_bundle*, %struct.gb_bundle** %2, align 8
  %8 = call i32 @gb_pm_runtime_get_sync(%struct.gb_bundle* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.gb_bundle*, %struct.gb_bundle** %2, align 8
  %13 = call i32 @gb_pm_runtime_get_noresume(%struct.gb_bundle* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.gb_camera*, %struct.gb_camera** %3, align 8
  %16 = call i32 @gb_camera_cleanup(%struct.gb_camera* %15)
  %17 = load %struct.gb_camera*, %struct.gb_camera** %3, align 8
  %18 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %17, i32 0, i32 0
  %19 = call i32 @gb_camera_unregister(i32* %18)
  ret void
}

declare dso_local %struct.gb_camera* @greybus_get_drvdata(%struct.gb_bundle*) #1

declare dso_local i32 @gb_pm_runtime_get_sync(%struct.gb_bundle*) #1

declare dso_local i32 @gb_pm_runtime_get_noresume(%struct.gb_bundle*) #1

declare dso_local i32 @gb_camera_cleanup(%struct.gb_camera*) #1

declare dso_local i32 @gb_camera_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
