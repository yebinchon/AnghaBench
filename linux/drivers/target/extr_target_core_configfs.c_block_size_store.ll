; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_block_size_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_block_size_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_dev_attrib = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [73 x i8] c"dev[%p]: Unable to change SE Device block_size while export_count is %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [92 x i8] c"dev[%p]: Illegal value for block_device: %u for SE device, must be 512, 1024, 2048 or 4096\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"dev[%p]: SE Device block_size changed to %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @block_size_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_size_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
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
  %14 = call i32 @kstrtou32(i8* %13, i32 0, i32* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %82

19:                                               ; preds = %3
  %20 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %21 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  %27 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %28 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %31 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %29, i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %82

38:                                               ; preds = %19
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 512
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 1024
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 2048
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 4096
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %52 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %51, i32 0, i32 3
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %53, i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %82

58:                                               ; preds = %47, %44, %41, %38
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %61 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %63 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %68 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sdiv i32 %69, %70
  %72 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %73 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %66, %58
  %75 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %76 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %75, i32 0, i32 3
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_3__* %77, i32 %78)
  %80 = load i64, i64* %7, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %74, %50, %26, %17
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.se_dev_attrib* @to_attrib(%struct.config_item*) #1

declare dso_local i32 @kstrtou32(i8*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
