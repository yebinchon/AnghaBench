; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ns_device_path_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ns_device_path_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.nvmet_ns = type { i32, i64, %struct.nvmet_subsys* }
%struct.nvmet_subsys = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @nvmet_ns_device_path_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvmet_ns_device_path_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvmet_ns*, align 8
  %9 = alloca %struct.nvmet_subsys*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.config_item*, %struct.config_item** %5, align 8
  %13 = call %struct.nvmet_ns* @to_nvmet_ns(%struct.config_item* %12)
  store %struct.nvmet_ns* %13, %struct.nvmet_ns** %8, align 8
  %14 = load %struct.nvmet_ns*, %struct.nvmet_ns** %8, align 8
  %15 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %14, i32 0, i32 2
  %16 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %15, align 8
  store %struct.nvmet_subsys* %16, %struct.nvmet_subsys** %9, align 8
  %17 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %9, align 8
  %18 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.nvmet_ns*, %struct.nvmet_ns** %8, align 8
  %23 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %58

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @strcspn(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %58

35:                                               ; preds = %27
  %36 = load %struct.nvmet_ns*, %struct.nvmet_ns** %8, align 8
  %37 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @kfree(i32 %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %11, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32 @kstrndup(i8* %42, i64 %43, i32 %44)
  %46 = load %struct.nvmet_ns*, %struct.nvmet_ns** %8, align 8
  %47 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.nvmet_ns*, %struct.nvmet_ns** %8, align 8
  %49 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %35
  br label %58

53:                                               ; preds = %35
  %54 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %9, align 8
  %55 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i64, i64* %7, align 8
  store i64 %57, i64* %4, align 8
  br label %64

58:                                               ; preds = %52, %34, %26
  %59 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %9, align 8
  %60 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %58, %53
  %65 = load i64, i64* %4, align 8
  ret i64 %65
}

declare dso_local %struct.nvmet_ns* @to_nvmet_ns(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kstrndup(i8*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
