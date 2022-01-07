; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_kobj.c___of_update_property_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_kobj.c___of_update_property_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i32 }

@of_kset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__of_update_property_sysfs(%struct.device_node* %0, %struct.property* %1, %struct.property* %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca %struct.property*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.property* %1, %struct.property** %5, align 8
  store %struct.property* %2, %struct.property** %6, align 8
  %7 = load i32, i32* @of_kset, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %21

10:                                               ; preds = %3
  %11 = load %struct.property*, %struct.property** %6, align 8
  %12 = icmp ne %struct.property* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = load %struct.property*, %struct.property** %6, align 8
  %16 = call i32 @__of_sysfs_remove_bin_file(%struct.device_node* %14, %struct.property* %15)
  br label %17

17:                                               ; preds = %13, %10
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = load %struct.property*, %struct.property** %5, align 8
  %20 = call i32 @__of_add_property_sysfs(%struct.device_node* %18, %struct.property* %19)
  br label %21

21:                                               ; preds = %17, %9
  ret void
}

declare dso_local i32 @__of_sysfs_remove_bin_file(%struct.device_node*, %struct.property*) #1

declare dso_local i32 @__of_add_property_sysfs(%struct.device_node*, %struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
