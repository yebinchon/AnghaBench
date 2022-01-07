; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_addr_treq_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_addr_treq_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.nvmet_port = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@NVME_TREQ_SECURE_CHANNEL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Cannot modify address while enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Disable the address before modifying\0A\00", align 1
@EACCES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"not specified\00", align 1
@NVMF_TREQ_NOT_SPECIFIED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"required\00", align 1
@NVMF_TREQ_REQUIRED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"not required\00", align 1
@NVMF_TREQ_NOT_REQUIRED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Invalid value '%s' for treq\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @nvmet_addr_treq_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvmet_addr_treq_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvmet_port*, align 8
  %9 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.config_item*, %struct.config_item** %5, align 8
  %11 = call %struct.nvmet_port* @to_nvmet_port(%struct.config_item* %10)
  store %struct.nvmet_port* %11, %struct.nvmet_port** %8, align 8
  %12 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %13 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NVME_TREQ_SECURE_CHANNEL_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %20 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i64, i64* @EACCES, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %4, align 8
  br label %65

28:                                               ; preds = %3
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @sysfs_streq(i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @NVMF_TREQ_NOT_SPECIFIED, align 4
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %59

36:                                               ; preds = %28
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @sysfs_streq(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @NVMF_TREQ_REQUIRED, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %58

44:                                               ; preds = %36
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @sysfs_streq(i8* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @NVMF_TREQ_NOT_REQUIRED, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %57

52:                                               ; preds = %44
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %53)
  %55 = load i64, i64* @EINVAL, align 8
  %56 = sub i64 0, %55
  store i64 %56, i64* %4, align 8
  br label %65

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %40
  br label %59

59:                                               ; preds = %58, %32
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %62 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load i64, i64* %7, align 8
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %59, %52, %23
  %66 = load i64, i64* %4, align 8
  ret i64 %66
}

declare dso_local %struct.nvmet_port* @to_nvmet_port(%struct.config_item*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
