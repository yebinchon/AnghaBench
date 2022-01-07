; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_common.c_isst_if_relase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_common.c_isst_if_relase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_if_cmd_cb = type { i32, i64 }
%struct.inode = type { i32 }
%struct.file = type { i32 }

@punit_misc_dev_lock = common dso_local global i32 0, align 4
@misc_device_open = common dso_local global i32 0, align 4
@ISST_IF_DEV_MAX = common dso_local global i32 0, align 4
@punit_callbacks = common dso_local global %struct.isst_if_cmd_cb* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @isst_if_relase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isst_if_relase(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.isst_if_cmd_cb*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = call i32 @mutex_lock(i32* @punit_misc_dev_lock)
  %8 = load i32, i32* @misc_device_open, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* @misc_device_open, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %29, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ISST_IF_DEV_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load %struct.isst_if_cmd_cb*, %struct.isst_if_cmd_cb** @punit_callbacks, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.isst_if_cmd_cb, %struct.isst_if_cmd_cb* %15, i64 %17
  store %struct.isst_if_cmd_cb* %18, %struct.isst_if_cmd_cb** %6, align 8
  %19 = load %struct.isst_if_cmd_cb*, %struct.isst_if_cmd_cb** %6, align 8
  %20 = getelementptr inbounds %struct.isst_if_cmd_cb, %struct.isst_if_cmd_cb* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load %struct.isst_if_cmd_cb*, %struct.isst_if_cmd_cb** %6, align 8
  %25 = getelementptr inbounds %struct.isst_if_cmd_cb, %struct.isst_if_cmd_cb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @module_put(i32 %26)
  br label %28

28:                                               ; preds = %23, %14
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %10

32:                                               ; preds = %10
  %33 = call i32 @mutex_unlock(i32* @punit_misc_dev_lock)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
