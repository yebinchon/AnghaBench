; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_unmap_zeroes_data_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_unmap_zeroes_data_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_dev_attrib = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [80 x i8] c"dev[%p]: Unable to change SE Device unmap_zeroes_data while export_count is %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [93 x i8] c"dev[%p]: Thin Provisioning LBPRZ will not be set because max_unmap_block_desc_count is zero\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"dev[%p]: SE Device Thin Provisioning LBPRZ bit: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @unmap_zeroes_data_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unmap_zeroes_data_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.se_dev_attrib*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.config_item*, %struct.config_item** %5, align 8
  %12 = call %struct.se_dev_attrib* @to_attrib(%struct.config_item* %11)
  store %struct.se_dev_attrib* %12, %struct.se_dev_attrib** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strtobool(i8* %13, i32* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %64

19:                                               ; preds = %3
  %20 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %21 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  %27 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %28 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %31 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (i8*, %struct.TYPE_3__*, ...) @pr_err(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %29, i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %64

38:                                               ; preds = %19
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %43 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %48 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call i32 (i8*, %struct.TYPE_3__*, ...) @pr_err(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %49)
  %51 = load i32, i32* @ENOSYS, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %64

53:                                               ; preds = %41, %38
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %56 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %58 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_3__* %59, i32 %60)
  %62 = load i64, i64* %7, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %53, %46, %26, %17
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.se_dev_attrib* @to_attrib(%struct.config_item*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, %struct.TYPE_3__*, ...) #1

declare dso_local i32 @pr_debug(i8*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
