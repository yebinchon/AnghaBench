; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss-of.c_omapdss_of_find_source_for_first_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss-of.c_omapdss_of_find_source_for_first_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.omap_dss_device* @omapdss_of_find_source_for_first_ep(%struct.device_node* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %7 = load %struct.device_node*, %struct.device_node** %3, align 8
  %8 = call %struct.device_node* @omapdss_of_get_first_endpoint(%struct.device_node* %7)
  store %struct.device_node* %8, %struct.device_node** %4, align 8
  %9 = load %struct.device_node*, %struct.device_node** %4, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.omap_dss_device* @ERR_PTR(i32 %13)
  store %struct.omap_dss_device* %14, %struct.omap_dss_device** %2, align 8
  br label %43

15:                                               ; preds = %1
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = call %struct.device_node* @omapdss_of_get_remote_port(%struct.device_node* %16)
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = call i32 @of_node_put(%struct.device_node* %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.omap_dss_device* @ERR_PTR(i32 %24)
  store %struct.omap_dss_device* %25, %struct.omap_dss_device** %2, align 8
  br label %43

26:                                               ; preds = %15
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = call i32 @of_node_put(%struct.device_node* %27)
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = call %struct.omap_dss_device* @omap_dss_find_output_by_port_node(%struct.device_node* %29)
  store %struct.omap_dss_device* %30, %struct.omap_dss_device** %6, align 8
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = call i32 @of_node_put(%struct.device_node* %31)
  %33 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %34 = icmp ne %struct.omap_dss_device* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  br label %41

37:                                               ; preds = %26
  %38 = load i32, i32* @EPROBE_DEFER, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.omap_dss_device* @ERR_PTR(i32 %39)
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi %struct.omap_dss_device* [ %36, %35 ], [ %40, %37 ]
  store %struct.omap_dss_device* %42, %struct.omap_dss_device** %2, align 8
  br label %43

43:                                               ; preds = %41, %20, %11
  %44 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  ret %struct.omap_dss_device* %44
}

declare dso_local %struct.device_node* @omapdss_of_get_first_endpoint(%struct.device_node*) #1

declare dso_local %struct.omap_dss_device* @ERR_PTR(i32) #1

declare dso_local %struct.device_node* @omapdss_of_get_remote_port(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.omap_dss_device* @omap_dss_find_output_by_port_node(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
