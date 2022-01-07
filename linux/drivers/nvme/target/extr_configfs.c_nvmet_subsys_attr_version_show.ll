; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_subsys_attr_version_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_subsys_attr_version_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.nvmet_subsys = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%d.%d.%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @nvmet_subsys_attr_version_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_subsys_attr_version_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvmet_subsys*, align 8
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.config_item*, %struct.config_item** %4, align 8
  %8 = call %struct.nvmet_subsys* @to_subsys(%struct.config_item* %7)
  store %struct.nvmet_subsys* %8, %struct.nvmet_subsys** %6, align 8
  %9 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %6, align 8
  %10 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @NVME_TERTIARY(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %6, align 8
  %18 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @NVME_MAJOR(i32 %19)
  %21 = trunc i64 %20 to i32
  %22 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %6, align 8
  %23 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @NVME_MINOR(i32 %24)
  %26 = trunc i64 %25 to i32
  %27 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %6, align 8
  %28 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @NVME_TERTIARY(i32 %29)
  %31 = trunc i64 %30 to i32
  %32 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %26, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %47

33:                                               ; preds = %2
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %6, align 8
  %37 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @NVME_MAJOR(i32 %38)
  %40 = trunc i64 %39 to i32
  %41 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %6, align 8
  %42 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @NVME_MINOR(i32 %43)
  %45 = trunc i64 %44 to i32
  %46 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %33, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.nvmet_subsys* @to_subsys(%struct.config_item*) #1

declare dso_local i64 @NVME_TERTIARY(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, ...) #1

declare dso_local i64 @NVME_MAJOR(i32) #1

declare dso_local i64 @NVME_MINOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
