; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_sysfs.c_wlcore_sysfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_sysfs.c_wlcore_sysfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }

@dev_attr_bt_coex_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to create sysfs file bt_coex_state\00", align 1
@dev_attr_hw_pg_ver = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to create sysfs file hw_pg_ver\00", align 1
@fwlog_attr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to create sysfs file fwlog\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_sysfs_init(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %4 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %5 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @device_create_file(i32 %6, i32* @dev_attr_bt_coex_state)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @wl1271_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %41

12:                                               ; preds = %1
  %13 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %14 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @device_create_file(i32 %15, i32* @dev_attr_hw_pg_ver)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = call i32 @wl1271_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %36

21:                                               ; preds = %12
  %22 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @device_create_bin_file(i32 %24, i32* @fwlog_attr)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @wl1271_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %31

30:                                               ; preds = %21
  br label %41

31:                                               ; preds = %28
  %32 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %33 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @device_remove_file(i32 %34, i32* @dev_attr_hw_pg_ver)
  br label %36

36:                                               ; preds = %31, %19
  %37 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %38 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @device_remove_file(i32 %39, i32* @dev_attr_bt_coex_state)
  br label %41

41:                                               ; preds = %36, %30, %10
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @device_create_bin_file(i32, i32*) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
