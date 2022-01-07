; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_common.c_isst_if_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_common.c_isst_if_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_if_cmd_cb = type { i32, i64 }
%struct.inode = type { i32 }
%struct.file = type { i32 }

@punit_misc_dev_lock = common dso_local global i32 0, align 4
@ISST_IF_DEV_MAX = common dso_local global i32 0, align 4
@punit_callbacks = common dso_local global %struct.isst_if_cmd_cb* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@misc_device_open = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @isst_if_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isst_if_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.isst_if_cmd_cb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.isst_if_cmd_cb*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = call i32 @mutex_lock(i32* @punit_misc_dev_lock)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %34, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ISST_IF_DEV_MAX, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = load %struct.isst_if_cmd_cb*, %struct.isst_if_cmd_cb** @punit_callbacks, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.isst_if_cmd_cb, %struct.isst_if_cmd_cb* %16, i64 %18
  store %struct.isst_if_cmd_cb* %19, %struct.isst_if_cmd_cb** %7, align 8
  %20 = load %struct.isst_if_cmd_cb*, %struct.isst_if_cmd_cb** %7, align 8
  %21 = getelementptr inbounds %struct.isst_if_cmd_cb, %struct.isst_if_cmd_cb* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %15
  %25 = load %struct.isst_if_cmd_cb*, %struct.isst_if_cmd_cb** %7, align 8
  %26 = getelementptr inbounds %struct.isst_if_cmd_cb, %struct.isst_if_cmd_cb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @try_module_get(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %37

33:                                               ; preds = %24, %15
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %11

37:                                               ; preds = %30, %11
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %60, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = load %struct.isst_if_cmd_cb*, %struct.isst_if_cmd_cb** @punit_callbacks, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.isst_if_cmd_cb, %struct.isst_if_cmd_cb* %46, i64 %48
  store %struct.isst_if_cmd_cb* %49, %struct.isst_if_cmd_cb** %9, align 8
  %50 = load %struct.isst_if_cmd_cb*, %struct.isst_if_cmd_cb** %9, align 8
  %51 = getelementptr inbounds %struct.isst_if_cmd_cb, %struct.isst_if_cmd_cb* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load %struct.isst_if_cmd_cb*, %struct.isst_if_cmd_cb** %9, align 8
  %56 = getelementptr inbounds %struct.isst_if_cmd_cb, %struct.isst_if_cmd_cb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @module_put(i32 %57)
  br label %59

59:                                               ; preds = %54, %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %41

63:                                               ; preds = %41
  br label %67

64:                                               ; preds = %37
  %65 = load i32, i32* @misc_device_open, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @misc_device_open, align 4
  br label %67

67:                                               ; preds = %64, %63
  %68 = call i32 @mutex_unlock(i32* @punit_misc_dev_lock)
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
