; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_addr_adrfam_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_addr_adrfam_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.nvmet_port = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Cannot modify address while enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Disable the address before modifying\0A\00", align 1
@EACCES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"ipv4\00", align 1
@NVMF_ADDR_FAMILY_IP4 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"ipv6\00", align 1
@NVMF_ADDR_FAMILY_IP6 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"ib\00", align 1
@NVMF_ADDR_FAMILY_IB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"fc\00", align 1
@NVMF_ADDR_FAMILY_FC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Invalid value '%s' for adrfam\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @nvmet_addr_adrfam_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvmet_addr_adrfam_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvmet_port*, align 8
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.config_item*, %struct.config_item** %5, align 8
  %10 = call %struct.nvmet_port* @to_nvmet_port(%struct.config_item* %9)
  store %struct.nvmet_port* %10, %struct.nvmet_port** %8, align 8
  %11 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %12 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i64, i64* @EACCES, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %4, align 8
  br label %66

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @sysfs_streq(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* @NVMF_ADDR_FAMILY_IP4, align 4
  %26 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %27 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  br label %64

29:                                               ; preds = %20
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @sysfs_streq(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @NVMF_ADDR_FAMILY_IP6, align 4
  %35 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %36 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  br label %63

38:                                               ; preds = %29
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @sysfs_streq(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* @NVMF_ADDR_FAMILY_IB, align 4
  %44 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %45 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  br label %62

47:                                               ; preds = %38
  %48 = load i8*, i8** %6, align 8
  %49 = call i64 @sysfs_streq(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* @NVMF_ADDR_FAMILY_FC, align 4
  %53 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %54 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  br label %61

56:                                               ; preds = %47
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %57)
  %59 = load i64, i64* @EINVAL, align 8
  %60 = sub i64 0, %59
  store i64 %60, i64* %4, align 8
  br label %66

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %42
  br label %63

63:                                               ; preds = %62, %33
  br label %64

64:                                               ; preds = %63, %24
  %65 = load i64, i64* %7, align 8
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %64, %56, %15
  %67 = load i64, i64* %4, align 8
  ret i64 %67
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
