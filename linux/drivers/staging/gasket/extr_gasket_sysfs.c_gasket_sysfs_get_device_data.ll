; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_sysfs.c_gasket_sysfs_get_device_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_sysfs.c_gasket_sysfs_get_device_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { i32 }
%struct.device = type { i32 }
%struct.gasket_sysfs_mapping = type { %struct.gasket_dev* }

@.str = private unnamed_addr constant [23 x i8] c"device not registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gasket_dev* @gasket_sysfs_get_device_data(%struct.device* %0) #0 {
  %2 = alloca %struct.gasket_dev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.gasket_sysfs_mapping*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call %struct.gasket_sysfs_mapping* @get_mapping(%struct.device* %5)
  store %struct.gasket_sysfs_mapping* %6, %struct.gasket_sysfs_mapping** %4, align 8
  %7 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %4, align 8
  %8 = icmp ne %struct.gasket_sysfs_mapping* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i32 @dev_err(%struct.device* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.gasket_dev* null, %struct.gasket_dev** %2, align 8
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %4, align 8
  %14 = getelementptr inbounds %struct.gasket_sysfs_mapping, %struct.gasket_sysfs_mapping* %13, i32 0, i32 0
  %15 = load %struct.gasket_dev*, %struct.gasket_dev** %14, align 8
  store %struct.gasket_dev* %15, %struct.gasket_dev** %2, align 8
  br label %16

16:                                               ; preds = %12, %9
  %17 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  ret %struct.gasket_dev* %17
}

declare dso_local %struct.gasket_sysfs_mapping* @get_mapping(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
