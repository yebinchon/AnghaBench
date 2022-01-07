; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion.c_ion_buffer_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion.c_ion_buffer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_buffer = type { i64, i64, i32, i32, i32, %struct.ion_device*, %struct.ion_heap* }
%struct.ion_heap = type { i32, i64, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ion_heap*, %struct.ion_buffer*, i64, i64)*, i32 (%struct.ion_buffer*)* }
%struct.ion_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ION_HEAP_FLAG_DEFER_FREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"This heap needs to set the sgtable\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ion_buffer* (%struct.ion_heap*, %struct.ion_device*, i64, i64)* @ion_buffer_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ion_buffer* @ion_buffer_create(%struct.ion_heap* %0, %struct.ion_device* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ion_buffer*, align 8
  %6 = alloca %struct.ion_heap*, align 8
  %7 = alloca %struct.ion_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ion_buffer*, align 8
  %11 = alloca i32, align 4
  store %struct.ion_heap* %0, %struct.ion_heap** %6, align 8
  store %struct.ion_device* %1, %struct.ion_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ion_buffer* @kzalloc(i32 48, i32 %12)
  store %struct.ion_buffer* %13, %struct.ion_buffer** %10, align 8
  %14 = load %struct.ion_buffer*, %struct.ion_buffer** %10, align 8
  %15 = icmp ne %struct.ion_buffer* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.ion_buffer* @ERR_PTR(i32 %18)
  store %struct.ion_buffer* %19, %struct.ion_buffer** %5, align 8
  br label %129

20:                                               ; preds = %4
  %21 = load %struct.ion_heap*, %struct.ion_heap** %6, align 8
  %22 = load %struct.ion_buffer*, %struct.ion_buffer** %10, align 8
  %23 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %22, i32 0, i32 6
  store %struct.ion_heap* %21, %struct.ion_heap** %23, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.ion_buffer*, %struct.ion_buffer** %10, align 8
  %26 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.ion_device*, %struct.ion_device** %7, align 8
  %28 = load %struct.ion_buffer*, %struct.ion_buffer** %10, align 8
  %29 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %28, i32 0, i32 5
  store %struct.ion_device* %27, %struct.ion_device** %29, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.ion_buffer*, %struct.ion_buffer** %10, align 8
  %32 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.ion_heap*, %struct.ion_heap** %6, align 8
  %34 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.ion_heap*, %struct.ion_buffer*, i64, i64)*, i32 (%struct.ion_heap*, %struct.ion_buffer*, i64, i64)** %36, align 8
  %38 = load %struct.ion_heap*, %struct.ion_heap** %6, align 8
  %39 = load %struct.ion_buffer*, %struct.ion_buffer** %10, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 %37(%struct.ion_heap* %38, %struct.ion_buffer* %39, i64 %40, i64 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %20
  %46 = load %struct.ion_heap*, %struct.ion_heap** %6, align 8
  %47 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ION_HEAP_FLAG_DEFER_FREE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %124

53:                                               ; preds = %45
  %54 = load %struct.ion_heap*, %struct.ion_heap** %6, align 8
  %55 = call i32 @ion_heap_freelist_drain(%struct.ion_heap* %54, i32 0)
  %56 = load %struct.ion_heap*, %struct.ion_heap** %6, align 8
  %57 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.ion_heap*, %struct.ion_buffer*, i64, i64)*, i32 (%struct.ion_heap*, %struct.ion_buffer*, i64, i64)** %59, align 8
  %61 = load %struct.ion_heap*, %struct.ion_heap** %6, align 8
  %62 = load %struct.ion_buffer*, %struct.ion_buffer** %10, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 %60(%struct.ion_heap* %61, %struct.ion_buffer* %62, i64 %63, i64 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  br label %124

69:                                               ; preds = %53
  br label %70

70:                                               ; preds = %69, %20
  %71 = load %struct.ion_buffer*, %struct.ion_buffer** %10, align 8
  %72 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  br label %116

79:                                               ; preds = %70
  %80 = load %struct.ion_heap*, %struct.ion_heap** %6, align 8
  %81 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %80, i32 0, i32 4
  %82 = call i32 @spin_lock(i32* %81)
  %83 = load %struct.ion_heap*, %struct.ion_heap** %6, align 8
  %84 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.ion_heap*, %struct.ion_heap** %6, align 8
  %89 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = load %struct.ion_heap*, %struct.ion_heap** %6, align 8
  %93 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ion_heap*, %struct.ion_heap** %6, align 8
  %96 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %94, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %79
  %100 = load %struct.ion_heap*, %struct.ion_heap** %6, align 8
  %101 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.ion_heap*, %struct.ion_heap** %6, align 8
  %104 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %99, %79
  %106 = load %struct.ion_heap*, %struct.ion_heap** %6, align 8
  %107 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %106, i32 0, i32 4
  %108 = call i32 @spin_unlock(i32* %107)
  %109 = load %struct.ion_buffer*, %struct.ion_buffer** %10, align 8
  %110 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %109, i32 0, i32 3
  %111 = call i32 @INIT_LIST_HEAD(i32* %110)
  %112 = load %struct.ion_buffer*, %struct.ion_buffer** %10, align 8
  %113 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %112, i32 0, i32 2
  %114 = call i32 @mutex_init(i32* %113)
  %115 = load %struct.ion_buffer*, %struct.ion_buffer** %10, align 8
  store %struct.ion_buffer* %115, %struct.ion_buffer** %5, align 8
  br label %129

116:                                              ; preds = %75
  %117 = load %struct.ion_heap*, %struct.ion_heap** %6, align 8
  %118 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %117, i32 0, i32 3
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32 (%struct.ion_buffer*)*, i32 (%struct.ion_buffer*)** %120, align 8
  %122 = load %struct.ion_buffer*, %struct.ion_buffer** %10, align 8
  %123 = call i32 %121(%struct.ion_buffer* %122)
  br label %124

124:                                              ; preds = %116, %68, %52
  %125 = load %struct.ion_buffer*, %struct.ion_buffer** %10, align 8
  %126 = call i32 @kfree(%struct.ion_buffer* %125)
  %127 = load i32, i32* %11, align 4
  %128 = call %struct.ion_buffer* @ERR_PTR(i32 %127)
  store %struct.ion_buffer* %128, %struct.ion_buffer** %5, align 8
  br label %129

129:                                              ; preds = %124, %105, %16
  %130 = load %struct.ion_buffer*, %struct.ion_buffer** %5, align 8
  ret %struct.ion_buffer* %130
}

declare dso_local %struct.ion_buffer* @kzalloc(i32, i32) #1

declare dso_local %struct.ion_buffer* @ERR_PTR(i32) #1

declare dso_local i32 @ion_heap_freelist_drain(%struct.ion_heap*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kfree(%struct.ion_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
