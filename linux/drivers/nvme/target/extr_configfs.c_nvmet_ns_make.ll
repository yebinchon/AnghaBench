; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ns_make.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ns_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.nvmet_subsys = type { i32 }
%struct.nvmet_ns = type { %struct.config_group }

@EINVAL = common dso_local global i32 0, align 4
@NVME_NSID_ALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"invalid nsid %#x\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@nvmet_ns_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"adding nsid %d to subsystem %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @nvmet_ns_make to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @nvmet_ns_make(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvmet_subsys*, align 8
  %7 = alloca %struct.nvmet_ns*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.config_group*, %struct.config_group** %4, align 8
  %11 = getelementptr inbounds %struct.config_group, %struct.config_group* %10, i32 0, i32 0
  %12 = call %struct.nvmet_subsys* @namespaces_to_subsys(i32* %11)
  store %struct.nvmet_subsys* %12, %struct.nvmet_subsys** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @kstrtou32(i8* %13, i32 0, i64* %9)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %51

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @NVME_NSID_ALL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %18
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %51

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call %struct.nvmet_ns* @nvmet_ns_alloc(%struct.nvmet_subsys* %33, i64 %34)
  store %struct.nvmet_ns* %35, %struct.nvmet_ns** %7, align 8
  %36 = load %struct.nvmet_ns*, %struct.nvmet_ns** %7, align 8
  %37 = icmp ne %struct.nvmet_ns* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %51

39:                                               ; preds = %30
  %40 = load %struct.nvmet_ns*, %struct.nvmet_ns** %7, align 8
  %41 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %40, i32 0, i32 0
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @config_group_init_type_name(%struct.config_group* %41, i8* %42, i32* @nvmet_ns_type)
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %6, align 8
  %46 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %44, i32 %47)
  %49 = load %struct.nvmet_ns*, %struct.nvmet_ns** %7, align 8
  %50 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %49, i32 0, i32 0
  store %struct.config_group* %50, %struct.config_group** %3, align 8
  br label %54

51:                                               ; preds = %38, %27, %17
  %52 = load i32, i32* %8, align 4
  %53 = call %struct.config_group* @ERR_PTR(i32 %52)
  store %struct.config_group* %53, %struct.config_group** %3, align 8
  br label %54

54:                                               ; preds = %51, %39
  %55 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %55
}

declare dso_local %struct.nvmet_subsys* @namespaces_to_subsys(i32*) #1

declare dso_local i32 @kstrtou32(i8*, i32, i64*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local %struct.nvmet_ns* @nvmet_ns_alloc(%struct.nvmet_subsys*, i64) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #1

declare dso_local i32 @pr_info(i8*, i64, i32) #1

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
