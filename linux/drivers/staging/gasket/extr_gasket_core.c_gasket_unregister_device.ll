; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_unregister_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_internal_desc = type { %struct.gasket_driver_desc*, i32 }
%struct.gasket_driver_desc = type { i32, i32, i32 }

@g_mutex = common dso_local global i32 0, align 4
@GASKET_FRAMEWORK_DESC_MAX = common dso_local global i32 0, align 4
@g_descs = common dso_local global %struct.gasket_internal_desc* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"request to unregister unknown desc: %s, %d:%d\0A\00", align 1
@GASKET_DEV_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"removed %s driver\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gasket_unregister_device(%struct.gasket_driver_desc* %0) #0 {
  %2 = alloca %struct.gasket_driver_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gasket_internal_desc*, align 8
  store %struct.gasket_driver_desc* %0, %struct.gasket_driver_desc** %2, align 8
  store %struct.gasket_internal_desc* null, %struct.gasket_internal_desc** %5, align 8
  %6 = call i32 @mutex_lock(i32* @g_mutex)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %27, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @GASKET_FRAMEWORK_DESC_MAX, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** @g_descs, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %12, i64 %14
  %16 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %15, i32 0, i32 0
  %17 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %16, align 8
  %18 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %2, align 8
  %19 = icmp eq %struct.gasket_driver_desc* %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %11
  %21 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** @g_descs, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %21, i64 %23
  store %struct.gasket_internal_desc* %24, %struct.gasket_internal_desc** %5, align 8
  %25 = load i32, i32* %3, align 4
  store i32 %25, i32* %4, align 4
  br label %30

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %7

30:                                               ; preds = %20, %7
  %31 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %5, align 8
  %32 = icmp ne %struct.gasket_internal_desc* %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = call i32 @mutex_unlock(i32* @g_mutex)
  %35 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %2, align 8
  %36 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %2, align 8
  %39 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %2, align 8
  %42 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %43)
  br label %69

45:                                               ; preds = %30
  %46 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %2, align 8
  %47 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %2, align 8
  %50 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @MKDEV(i32 %48, i32 %51)
  %53 = load i32, i32* @GASKET_DEV_MAX, align 4
  %54 = call i32 @unregister_chrdev_region(i32 %52, i32 %53)
  %55 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %5, align 8
  %56 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @class_destroy(i32 %57)
  %59 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** @g_descs, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %59, i64 %61
  %63 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %62, i32 0, i32 0
  store %struct.gasket_driver_desc* null, %struct.gasket_driver_desc** %63, align 8
  %64 = call i32 @mutex_unlock(i32* @g_mutex)
  %65 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %2, align 8
  %66 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %45, %33
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @class_destroy(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
