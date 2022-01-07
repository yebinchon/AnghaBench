; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_subsys_attr_allow_any_host_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_subsys_attr_allow_any_host_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.nvmet_subsys = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@nvmet_config_sem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Can't set allow_any_host when explicit hosts are set!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @nvmet_subsys_attr_allow_any_host_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_subsys_attr_allow_any_host_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvmet_subsys*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.config_item*, %struct.config_item** %5, align 8
  %12 = call %struct.nvmet_subsys* @to_subsys(%struct.config_item* %11)
  store %struct.nvmet_subsys* %12, %struct.nvmet_subsys** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strtobool(i8* %13, i32* %9)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %57

19:                                               ; preds = %3
  %20 = call i32 @down_write(i32* @nvmet_config_sem)
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %8, align 8
  %25 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %24, i32 0, i32 1
  %26 = call i32 @list_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  br label %45

32:                                               ; preds = %23, %19
  %33 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %8, align 8
  %34 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %8, align 8
  %41 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %8, align 8
  %43 = call i32 @nvmet_subsys_disc_changed(%struct.nvmet_subsys* %42, i32* null)
  br label %44

44:                                               ; preds = %38, %32
  br label %45

45:                                               ; preds = %44, %28
  %46 = call i32 @up_write(i32* @nvmet_config_sem)
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  br label %54

52:                                               ; preds = %45
  %53 = load i64, i64* %7, align 8
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi i64 [ %51, %49 ], [ %53, %52 ]
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %16
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.nvmet_subsys* @to_subsys(%struct.config_item*) #1

declare dso_local i64 @strtobool(i8*, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @nvmet_subsys_disc_changed(%struct.nvmet_subsys*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
