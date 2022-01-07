; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_emulate_model_alias_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_emulate_model_alias_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_dev_attrib = type { i32, %struct.se_device* }
%struct.se_device = type { %struct.TYPE_4__*, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"dev[%p]: Unable to change model alias while export_count is %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INQUIRY_MODEL_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @emulate_model_alias_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_model_alias_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
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
  %15 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %14, i32 0, i32 1
  %16 = load %struct.se_device*, %struct.se_device** %15, align 8
  store %struct.se_device* %16, %struct.se_device** %9, align 8
  %17 = load %struct.se_device*, %struct.se_device** %9, align 8
  %18 = getelementptr inbounds %struct.se_device, %struct.se_device* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.se_device*, %struct.se_device** %9, align 8
  %23 = load %struct.se_device*, %struct.se_device** %9, align 8
  %24 = getelementptr inbounds %struct.se_device, %struct.se_device* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), %struct.se_device* %22, i64 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %65

29:                                               ; preds = %3
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strtobool(i8* %30, i32* %10)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %4, align 4
  br label %65

36:                                               ; preds = %29
  %37 = load i32, i32* @INQUIRY_MODEL_LEN, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 4, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUILD_BUG_ON(i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.se_device*, %struct.se_device** %9, align 8
  %47 = call i32 @dev_set_t10_wwn_model_alias(%struct.se_device* %46)
  br label %59

48:                                               ; preds = %36
  %49 = load %struct.se_device*, %struct.se_device** %9, align 8
  %50 = getelementptr inbounds %struct.se_device, %struct.se_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.se_device*, %struct.se_device** %9, align 8
  %54 = getelementptr inbounds %struct.se_device, %struct.se_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @strlcpy(i32 %52, i32 %57, i32 4)
  br label %59

59:                                               ; preds = %48, %45
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %62 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i64, i64* %7, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %59, %34, %21
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.se_dev_attrib* @to_attrib(%struct.config_item*) #1

declare dso_local i32 @pr_err(i8*, %struct.se_device*, i64) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @dev_set_t10_wwn_model_alias(%struct.se_device*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
