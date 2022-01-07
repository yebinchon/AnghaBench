; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_subsys_attr_version_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_subsys_attr_version_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.nvmet_subsys = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%d.%d.%d\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@nvmet_config_sem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @nvmet_subsys_attr_version_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvmet_subsys_attr_version_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvmet_subsys*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.config_item*, %struct.config_item** %5, align 8
  %14 = call %struct.nvmet_subsys* @to_subsys(%struct.config_item* %13)
  store %struct.nvmet_subsys* %14, %struct.nvmet_subsys** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %9, i32* %10, i32* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %35

25:                                               ; preds = %19, %3
  %26 = call i32 @down_write(i32* @nvmet_config_sem)
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @NVME_VS(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %8, align 8
  %32 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = call i32 @up_write(i32* @nvmet_config_sem)
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %25, %22
  %36 = load i64, i64* %4, align 8
  ret i64 %36
}

declare dso_local %struct.nvmet_subsys* @to_subsys(%struct.config_item*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @NVME_VS(i32, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
