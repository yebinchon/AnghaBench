; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_pi_prot_format_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_pi_prot_format_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_dev_attrib = type { %struct.se_device* }
%struct.se_device = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.se_device*)*, i32 }

@.str = private unnamed_addr constant [51 x i8] c"DIF protection format not supported by backend %s\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"DIF protection format requires device to be configured\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"dev[%p]: Unable to format SE Device PROT type while export_count is %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"dev[%p]: SE Device Protection Format complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @pi_prot_format_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pi_prot_format_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.se_dev_attrib*, align 8
  %9 = alloca %struct.se_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.config_item*, %struct.config_item** %5, align 8
  %13 = call %struct.se_dev_attrib* @to_attrib(%struct.config_item* %12)
  store %struct.se_dev_attrib* %13, %struct.se_dev_attrib** %8, align 8
  %14 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %15 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %14, i32 0, i32 0
  %16 = load %struct.se_device*, %struct.se_device** %15, align 8
  store %struct.se_device* %16, %struct.se_device** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strtobool(i8* %17, i32* %10)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %4, align 4
  br label %83

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  br label %83

29:                                               ; preds = %23
  %30 = load %struct.se_device*, %struct.se_device** %9, align 8
  %31 = getelementptr inbounds %struct.se_device, %struct.se_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.se_device*)*, i32 (%struct.se_device*)** %33, align 8
  %35 = icmp ne i32 (%struct.se_device*)* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = load %struct.se_device*, %struct.se_device** %9, align 8
  %38 = getelementptr inbounds %struct.se_device, %struct.se_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ENOSYS, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %83

45:                                               ; preds = %29
  %46 = load %struct.se_device*, %struct.se_device** %9, align 8
  %47 = call i32 @target_dev_configured(%struct.se_device* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %83

53:                                               ; preds = %45
  %54 = load %struct.se_device*, %struct.se_device** %9, align 8
  %55 = getelementptr inbounds %struct.se_device, %struct.se_device* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.se_device*, %struct.se_device** %9, align 8
  %60 = load %struct.se_device*, %struct.se_device** %9, align 8
  %61 = getelementptr inbounds %struct.se_device, %struct.se_device* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), %struct.se_device* %59, i64 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %83

66:                                               ; preds = %53
  %67 = load %struct.se_device*, %struct.se_device** %9, align 8
  %68 = getelementptr inbounds %struct.se_device, %struct.se_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32 (%struct.se_device*)*, i32 (%struct.se_device*)** %70, align 8
  %72 = load %struct.se_device*, %struct.se_device** %9, align 8
  %73 = call i32 %71(%struct.se_device* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %4, align 4
  br label %83

78:                                               ; preds = %66
  %79 = load %struct.se_device*, %struct.se_device** %9, align 8
  %80 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), %struct.se_device* %79)
  %81 = load i64, i64* %7, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %78, %76, %58, %49, %36, %26, %21
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.se_dev_attrib* @to_attrib(%struct.config_item*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @target_dev_configured(%struct.se_device*) #1

declare dso_local i32 @pr_debug(i8*, %struct.se_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
