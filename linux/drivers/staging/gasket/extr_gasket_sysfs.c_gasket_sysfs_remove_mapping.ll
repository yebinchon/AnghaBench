; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_sysfs.c_gasket_sysfs_remove_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_sysfs.c_gasket_sysfs_remove_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gasket_sysfs_mapping = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"Attempted to remove non-existent sysfs mapping to device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gasket_sysfs_remove_mapping(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.gasket_sysfs_mapping*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.gasket_sysfs_mapping* @get_mapping(%struct.device* %4)
  store %struct.gasket_sysfs_mapping* %5, %struct.gasket_sysfs_mapping** %3, align 8
  %6 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %3, align 8
  %7 = icmp ne %struct.gasket_sysfs_mapping* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call i32 @dev_err(%struct.device* %9, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %3, align 8
  %13 = call i32 @put_mapping_n(%struct.gasket_sysfs_mapping* %12, i32 2)
  br label %14

14:                                               ; preds = %11, %8
  ret void
}

declare dso_local %struct.gasket_sysfs_mapping* @get_mapping(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @put_mapping_n(%struct.gasket_sysfs_mapping*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
