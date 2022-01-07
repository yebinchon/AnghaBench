; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_populate_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_populate_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { %struct.config_item_type* }
%struct.config_item_type = type { %struct.configfs_bin_attribute**, %struct.configfs_attribute** }
%struct.configfs_bin_attribute = type { i32 }
%struct.configfs_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*)* @populate_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_attrs(%struct.config_item* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.config_item_type*, align 8
  %5 = alloca %struct.configfs_attribute*, align 8
  %6 = alloca %struct.configfs_bin_attribute*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  %9 = load %struct.config_item*, %struct.config_item** %3, align 8
  %10 = getelementptr inbounds %struct.config_item, %struct.config_item* %9, i32 0, i32 0
  %11 = load %struct.config_item_type*, %struct.config_item_type** %10, align 8
  store %struct.config_item_type* %11, %struct.config_item_type** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.config_item_type*, %struct.config_item_type** %4, align 8
  %13 = icmp ne %struct.config_item_type* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %78

17:                                               ; preds = %1
  %18 = load %struct.config_item_type*, %struct.config_item_type** %4, align 8
  %19 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %18, i32 0, i32 1
  %20 = load %struct.configfs_attribute**, %struct.configfs_attribute*** %19, align 8
  %21 = icmp ne %struct.configfs_attribute** %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %39, %22
  %24 = load %struct.config_item_type*, %struct.config_item_type** %4, align 8
  %25 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %24, i32 0, i32 1
  %26 = load %struct.configfs_attribute**, %struct.configfs_attribute*** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.configfs_attribute*, %struct.configfs_attribute** %26, i64 %28
  %30 = load %struct.configfs_attribute*, %struct.configfs_attribute** %29, align 8
  store %struct.configfs_attribute* %30, %struct.configfs_attribute** %5, align 8
  %31 = icmp ne %struct.configfs_attribute* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load %struct.config_item*, %struct.config_item** %3, align 8
  %34 = load %struct.configfs_attribute*, %struct.configfs_attribute** %5, align 8
  %35 = call i32 @configfs_create_file(%struct.config_item* %33, %struct.configfs_attribute* %34)
  store i32 %35, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %42

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %23

42:                                               ; preds = %37, %23
  br label %43

43:                                               ; preds = %42, %17
  %44 = load %struct.config_item_type*, %struct.config_item_type** %4, align 8
  %45 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %44, i32 0, i32 0
  %46 = load %struct.configfs_bin_attribute**, %struct.configfs_bin_attribute*** %45, align 8
  %47 = icmp ne %struct.configfs_bin_attribute** %46, null
  br i1 %47, label %48, label %70

48:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %66, %48
  %50 = load %struct.config_item_type*, %struct.config_item_type** %4, align 8
  %51 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %50, i32 0, i32 0
  %52 = load %struct.configfs_bin_attribute**, %struct.configfs_bin_attribute*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.configfs_bin_attribute*, %struct.configfs_bin_attribute** %52, i64 %54
  %56 = load %struct.configfs_bin_attribute*, %struct.configfs_bin_attribute** %55, align 8
  store %struct.configfs_bin_attribute* %56, %struct.configfs_bin_attribute** %6, align 8
  %57 = icmp ne %struct.configfs_bin_attribute* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %49
  %59 = load %struct.config_item*, %struct.config_item** %3, align 8
  %60 = load %struct.configfs_bin_attribute*, %struct.configfs_bin_attribute** %6, align 8
  %61 = call i32 @configfs_create_bin_file(%struct.config_item* %59, %struct.configfs_bin_attribute* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %69

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %49

69:                                               ; preds = %64, %49
  br label %70

70:                                               ; preds = %69, %43
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.config_item*, %struct.config_item** %3, align 8
  %75 = call i32 @detach_attrs(%struct.config_item* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %14
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @configfs_create_file(%struct.config_item*, %struct.configfs_attribute*) #1

declare dso_local i32 @configfs_create_bin_file(%struct.config_item*, %struct.configfs_bin_attribute*) #1

declare dso_local i32 @detach_attrs(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
