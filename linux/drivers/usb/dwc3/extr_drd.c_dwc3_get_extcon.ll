; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_get_extcon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_get_extcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extcon_dev = type { i32 }
%struct.dwc3 = type { %struct.device* }
%struct.device = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"linux,extcon-name\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extcon_dev* (%struct.dwc3*)* @dwc3_get_extcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extcon_dev* @dwc3_get_extcon(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.extcon_dev*, align 8
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.extcon_dev*, align 8
  %8 = alloca i8*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  %9 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %10 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i64 @device_property_read_bool(%struct.device* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.extcon_dev* @extcon_get_edev_by_phandle(%struct.device* %16, i32 0)
  store %struct.extcon_dev* %17, %struct.extcon_dev** %2, align 8
  br label %52

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i64 @device_property_read_string(%struct.device* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i8*, i8** %8, align 8
  %24 = call %struct.extcon_dev* @extcon_get_extcon_dev(i8* %23)
  store %struct.extcon_dev* %24, %struct.extcon_dev** %7, align 8
  %25 = load %struct.extcon_dev*, %struct.extcon_dev** %7, align 8
  %26 = icmp ne %struct.extcon_dev* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @EPROBE_DEFER, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.extcon_dev* @ERR_PTR(i32 %29)
  store %struct.extcon_dev* %30, %struct.extcon_dev** %2, align 8
  br label %52

31:                                               ; preds = %22
  %32 = load %struct.extcon_dev*, %struct.extcon_dev** %7, align 8
  store %struct.extcon_dev* %32, %struct.extcon_dev** %2, align 8
  br label %52

33:                                               ; preds = %18
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.device_node* @of_parse_phandle(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.device_node* %37, %struct.device_node** %5, align 8
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call %struct.device_node* @of_graph_get_remote_node(%struct.device_node* %38, i32 -1, i32 -1)
  store %struct.device_node* %39, %struct.device_node** %6, align 8
  %40 = load %struct.device_node*, %struct.device_node** %6, align 8
  %41 = icmp ne %struct.device_node* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.device_node*, %struct.device_node** %6, align 8
  %44 = call %struct.extcon_dev* @extcon_find_edev_by_node(%struct.device_node* %43)
  store %struct.extcon_dev* %44, %struct.extcon_dev** %7, align 8
  br label %46

45:                                               ; preds = %33
  store %struct.extcon_dev* null, %struct.extcon_dev** %7, align 8
  br label %46

46:                                               ; preds = %45, %42
  %47 = load %struct.device_node*, %struct.device_node** %6, align 8
  %48 = call i32 @of_node_put(%struct.device_node* %47)
  %49 = load %struct.device_node*, %struct.device_node** %5, align 8
  %50 = call i32 @of_node_put(%struct.device_node* %49)
  %51 = load %struct.extcon_dev*, %struct.extcon_dev** %7, align 8
  store %struct.extcon_dev* %51, %struct.extcon_dev** %2, align 8
  br label %52

52:                                               ; preds = %46, %31, %27, %15
  %53 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  ret %struct.extcon_dev* %53
}

declare dso_local i64 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local %struct.extcon_dev* @extcon_get_edev_by_phandle(%struct.device*, i32) #1

declare dso_local i64 @device_property_read_string(%struct.device*, i8*, i8**) #1

declare dso_local %struct.extcon_dev* @extcon_get_extcon_dev(i8*) #1

declare dso_local %struct.extcon_dev* @ERR_PTR(i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.device_node* @of_graph_get_remote_node(%struct.device_node*, i32, i32) #1

declare dso_local %struct.extcon_dev* @extcon_find_edev_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
