; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-meson-g12a.c_dwc3_meson_g12_find_child.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-meson-g12a.c_dwc3_meson_g12_find_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (%struct.device*, i8*)* @dwc3_meson_g12_find_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @dwc3_meson_g12_find_child(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.device_node* @of_get_compatible_child(i32 %10, i8* %11)
  store %struct.device_node* %12, %struct.device_node** %7, align 8
  %13 = load %struct.device_node*, %struct.device_node** %7, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.device* null, %struct.device** %3, align 8
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.device_node*, %struct.device_node** %7, align 8
  %18 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %17)
  store %struct.platform_device* %18, %struct.platform_device** %6, align 8
  %19 = load %struct.device_node*, %struct.device_node** %7, align 8
  %20 = call i32 @of_node_put(%struct.device_node* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %22 = icmp ne %struct.platform_device* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store %struct.device* null, %struct.device** %3, align 8
  br label %27

24:                                               ; preds = %16
  %25 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  store %struct.device* %26, %struct.device** %3, align 8
  br label %27

27:                                               ; preds = %24, %23, %15
  %28 = load %struct.device*, %struct.device** %3, align 8
  ret %struct.device* %28
}

declare dso_local %struct.device_node* @of_get_compatible_child(i32, i8*) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
