; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, i64, i32, %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s is available\0A\00", align 1
@rproc_list_mutex = common dso_local global i32 0, align 4
@rproc_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rproc_add(%struct.rproc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  %6 = load %struct.rproc*, %struct.rproc** %3, align 8
  %7 = getelementptr inbounds %struct.rproc, %struct.rproc* %6, i32 0, i32 3
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i32 @device_add(%struct.device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load %struct.rproc*, %struct.rproc** %3, align 8
  %17 = getelementptr inbounds %struct.rproc, %struct.rproc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_info(%struct.device* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.rproc*, %struct.rproc** %3, align 8
  %21 = call i32 @rproc_create_debug_dir(%struct.rproc* %20)
  %22 = load %struct.rproc*, %struct.rproc** %3, align 8
  %23 = getelementptr inbounds %struct.rproc, %struct.rproc* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %14
  %27 = load %struct.rproc*, %struct.rproc** %3, align 8
  %28 = call i32 @rproc_trigger_auto_boot(%struct.rproc* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %40

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %14
  %35 = call i32 @mutex_lock(i32* @rproc_list_mutex)
  %36 = load %struct.rproc*, %struct.rproc** %3, align 8
  %37 = getelementptr inbounds %struct.rproc, %struct.rproc* %36, i32 0, i32 0
  %38 = call i32 @list_add(i32* %37, i32* @rproc_list)
  %39 = call i32 @mutex_unlock(i32* @rproc_list_mutex)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %34, %31, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @device_add(%struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @rproc_create_debug_dir(%struct.rproc*) #1

declare dso_local i32 @rproc_trigger_auto_boot(%struct.rproc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
