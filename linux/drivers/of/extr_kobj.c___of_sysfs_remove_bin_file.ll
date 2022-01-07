; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_kobj.c___of_sysfs_remove_bin_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_kobj.c___of_sysfs_remove_bin_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CONFIG_SYSFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__of_sysfs_remove_bin_file(%struct.device_node* %0, %struct.property* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.property*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.property* %1, %struct.property** %4, align 8
  %5 = load i32, i32* @CONFIG_SYSFS, align 4
  %6 = call i32 @IS_ENABLED(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %21

9:                                                ; preds = %2
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = getelementptr inbounds %struct.device_node, %struct.device_node* %10, i32 0, i32 0
  %12 = load %struct.property*, %struct.property** %4, align 8
  %13 = getelementptr inbounds %struct.property, %struct.property* %12, i32 0, i32 0
  %14 = call i32 @sysfs_remove_bin_file(i32* %11, %struct.TYPE_4__* %13)
  %15 = load %struct.property*, %struct.property** %4, align 8
  %16 = getelementptr inbounds %struct.property, %struct.property* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @kfree(i32 %19)
  br label %21

21:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @sysfs_remove_bin_file(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
