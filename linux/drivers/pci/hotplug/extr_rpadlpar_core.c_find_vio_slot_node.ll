; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_rpadlpar_core.c_find_vio_slot_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_rpadlpar_core.c_find_vio_slot_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"vdevice\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (i8*)* @find_vio_slot_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @find_vio_slot_node(i8* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = call %struct.device_node* @of_find_node_by_name(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %7, %struct.device_node** %4, align 8
  store %struct.device_node* null, %struct.device_node** %5, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.device_node* null, %struct.device_node** %2, align 8
  br label %29

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %24, %11
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call %struct.device_node* @of_get_next_child(%struct.device_node* %13, %struct.device_node* %14)
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @rpaphp_check_drc_props(%struct.device_node* %18, i8* %19, i32* null)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %25

24:                                               ; preds = %17
  br label %12

25:                                               ; preds = %23, %12
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = call i32 @of_node_put(%struct.device_node* %26)
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  store %struct.device_node* %28, %struct.device_node** %2, align 8
  br label %29

29:                                               ; preds = %25, %10
  %30 = load %struct.device_node*, %struct.device_node** %2, align 8
  ret %struct.device_node* %30
}

declare dso_local %struct.device_node* @of_find_node_by_name(i32*, i8*) #1

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #1

declare dso_local i32 @rpaphp_check_drc_props(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
