; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ns_device_uuid_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ns_device_uuid_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.nvmet_ns = type { i32, i64, %struct.nvmet_subsys* }
%struct.nvmet_subsys = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @nvmet_ns_device_uuid_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_ns_device_uuid_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nvmet_ns*, align 8
  %8 = alloca %struct.nvmet_subsys*, align 8
  %9 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.config_item*, %struct.config_item** %4, align 8
  %11 = call %struct.nvmet_ns* @to_nvmet_ns(%struct.config_item* %10)
  store %struct.nvmet_ns* %11, %struct.nvmet_ns** %7, align 8
  %12 = load %struct.nvmet_ns*, %struct.nvmet_ns** %7, align 8
  %13 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %12, i32 0, i32 2
  %14 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %13, align 8
  store %struct.nvmet_subsys* %14, %struct.nvmet_subsys** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %8, align 8
  %16 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.nvmet_ns*, %struct.nvmet_ns** %7, align 8
  %19 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %35

25:                                               ; preds = %3
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.nvmet_ns*, %struct.nvmet_ns** %7, align 8
  %28 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %27, i32 0, i32 0
  %29 = call i64 @uuid_parse(i8* %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %31, %25
  br label %35

35:                                               ; preds = %34, %22
  %36 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %8, align 8
  %37 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  br label %46

44:                                               ; preds = %35
  %45 = load i64, i64* %6, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi i64 [ %43, %41 ], [ %45, %44 ]
  %48 = trunc i64 %47 to i32
  ret i32 %48
}

declare dso_local %struct.nvmet_ns* @to_nvmet_ns(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @uuid_parse(i8*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
