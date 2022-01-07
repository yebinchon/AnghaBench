; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_of_reset_control_array_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_of_reset_control_array_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_control = type { i32 }
%struct.device_node = type { i32 }
%struct.reset_control_array = type { i32, %struct.reset_control**, %struct.reset_control }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@reset_list_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.reset_control* @of_reset_control_array_get(%struct.device_node* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.reset_control*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.reset_control_array*, align 8
  %11 = alloca %struct.reset_control*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.device_node*, %struct.device_node** %6, align 8
  %15 = call i32 @of_reset_control_get_count(%struct.device_node* %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %12, align 4
  %24 = call %struct.reset_control* @ERR_PTR(i32 %23)
  br label %25

25:                                               ; preds = %22, %21
  %26 = phi %struct.reset_control* [ null, %21 ], [ %24, %22 ]
  store %struct.reset_control* %26, %struct.reset_control** %5, align 8
  br label %96

27:                                               ; preds = %4
  %28 = load %struct.reset_control_array*, %struct.reset_control_array** %10, align 8
  %29 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @struct_size(%struct.reset_control_array* %28, %struct.reset_control* %29, i32 %30)
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.reset_control_array* @kzalloc(i32 %31, i32 %32)
  store %struct.reset_control_array* %33, %struct.reset_control_array** %10, align 8
  %34 = load %struct.reset_control_array*, %struct.reset_control_array** %10, align 8
  %35 = icmp ne %struct.reset_control_array* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.reset_control* @ERR_PTR(i32 %38)
  store %struct.reset_control* %39, %struct.reset_control** %5, align 8
  br label %96

40:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %64, %40
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load %struct.device_node*, %struct.device_node** %6, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call %struct.reset_control* @__of_reset_control_get(%struct.device_node* %46, i32* null, i32 %47, i32 %48, i32 %49, i32 %50)
  store %struct.reset_control* %51, %struct.reset_control** %11, align 8
  %52 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %53 = call i64 @IS_ERR(%struct.reset_control* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %76

56:                                               ; preds = %45
  %57 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %58 = load %struct.reset_control_array*, %struct.reset_control_array** %10, align 8
  %59 = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %58, i32 0, i32 1
  %60 = load %struct.reset_control**, %struct.reset_control*** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.reset_control*, %struct.reset_control** %60, i64 %62
  store %struct.reset_control* %57, %struct.reset_control** %63, align 8
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %41

67:                                               ; preds = %41
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.reset_control_array*, %struct.reset_control_array** %10, align 8
  %70 = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.reset_control_array*, %struct.reset_control_array** %10, align 8
  %72 = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.reset_control_array*, %struct.reset_control_array** %10, align 8
  %75 = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %74, i32 0, i32 2
  store %struct.reset_control* %75, %struct.reset_control** %5, align 8
  br label %96

76:                                               ; preds = %55
  %77 = call i32 @mutex_lock(i32* @reset_list_mutex)
  br label %78

78:                                               ; preds = %82, %76
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %13, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load %struct.reset_control_array*, %struct.reset_control_array** %10, align 8
  %84 = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %83, i32 0, i32 1
  %85 = load %struct.reset_control**, %struct.reset_control*** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.reset_control*, %struct.reset_control** %85, i64 %87
  %89 = load %struct.reset_control*, %struct.reset_control** %88, align 8
  %90 = call i32 @__reset_control_put_internal(%struct.reset_control* %89)
  br label %78

91:                                               ; preds = %78
  %92 = call i32 @mutex_unlock(i32* @reset_list_mutex)
  %93 = load %struct.reset_control_array*, %struct.reset_control_array** %10, align 8
  %94 = call i32 @kfree(%struct.reset_control_array* %93)
  %95 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  store %struct.reset_control* %95, %struct.reset_control** %5, align 8
  br label %96

96:                                               ; preds = %91, %67, %36, %25
  %97 = load %struct.reset_control*, %struct.reset_control** %5, align 8
  ret %struct.reset_control* %97
}

declare dso_local i32 @of_reset_control_get_count(%struct.device_node*) #1

declare dso_local %struct.reset_control* @ERR_PTR(i32) #1

declare dso_local %struct.reset_control_array* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.reset_control_array*, %struct.reset_control*, i32) #1

declare dso_local %struct.reset_control* @__of_reset_control_get(%struct.device_node*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__reset_control_put_internal(%struct.reset_control*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.reset_control_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
