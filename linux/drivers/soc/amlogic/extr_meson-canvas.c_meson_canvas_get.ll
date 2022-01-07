; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-canvas.c_meson_canvas_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-canvas.c_meson_canvas_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_canvas = type { i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"amlogic,canvas\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.meson_canvas* @meson_canvas_get(%struct.device* %0) #0 {
  %2 = alloca %struct.meson_canvas*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.meson_canvas*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.device_node* @of_parse_phandle(i32 %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.meson_canvas* @ERR_PTR(i32 %15)
  store %struct.meson_canvas* %16, %struct.meson_canvas** %2, align 8
  br label %42

17:                                               ; preds = %1
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %18)
  store %struct.platform_device* %19, %struct.platform_device** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %21 = icmp ne %struct.platform_device* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = call i32 @of_node_put(%struct.device_node* %23)
  %25 = load i32, i32* @EPROBE_DEFER, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.meson_canvas* @ERR_PTR(i32 %26)
  store %struct.meson_canvas* %27, %struct.meson_canvas** %2, align 8
  br label %42

28:                                               ; preds = %17
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = call i32 @of_node_put(%struct.device_node* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call %struct.meson_canvas* @dev_get_drvdata(i32* %32)
  store %struct.meson_canvas* %33, %struct.meson_canvas** %6, align 8
  %34 = load %struct.meson_canvas*, %struct.meson_canvas** %6, align 8
  %35 = icmp ne %struct.meson_canvas* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.meson_canvas* @ERR_PTR(i32 %38)
  store %struct.meson_canvas* %39, %struct.meson_canvas** %2, align 8
  br label %42

40:                                               ; preds = %28
  %41 = load %struct.meson_canvas*, %struct.meson_canvas** %6, align 8
  store %struct.meson_canvas* %41, %struct.meson_canvas** %2, align 8
  br label %42

42:                                               ; preds = %40, %36, %22, %13
  %43 = load %struct.meson_canvas*, %struct.meson_canvas** %2, align 8
  ret %struct.meson_canvas* %43
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.meson_canvas* @ERR_PTR(i32) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.meson_canvas* @dev_get_drvdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
