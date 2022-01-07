; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_feature_attr_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_feature_attr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }
%struct.btrfs_fs_info = type { i32, i32, i32 }
%struct.btrfs_feature_attr = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@FEAT_COMPAT = common dso_local global i64 0, align 8
@BTRFS_FEATURE_COMPAT_SAFE_SET = common dso_local global i32 0, align 4
@BTRFS_FEATURE_COMPAT_SAFE_CLEAR = common dso_local global i32 0, align 4
@FEAT_COMPAT_RO = common dso_local global i64 0, align 8
@BTRFS_FEATURE_COMPAT_RO_SAFE_SET = common dso_local global i32 0, align 4
@BTRFS_FEATURE_COMPAT_RO_SAFE_CLEAR = common dso_local global i32 0, align 4
@BTRFS_FEATURE_INCOMPAT_SAFE_SET = common dso_local global i32 0, align 4
@BTRFS_FEATURE_INCOMPAT_SAFE_CLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%sabling feature %s on mounted fs is not supported.\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s %s feature flag\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Setting\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Clearing\00", align 1
@COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @btrfs_feature_attr_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_feature_attr_store(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.kobj_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.btrfs_fs_info*, align 8
  %11 = alloca %struct.btrfs_feature_attr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.kobj_attribute*, %struct.kobj_attribute** %7, align 8
  %18 = call %struct.btrfs_feature_attr* @to_btrfs_feature_attr(%struct.kobj_attribute* %17)
  store %struct.btrfs_feature_attr* %18, %struct.btrfs_feature_attr** %11, align 8
  %19 = load %struct.kobject*, %struct.kobject** %6, align 8
  %20 = call %struct.btrfs_fs_info* @to_fs_info(%struct.kobject* %19)
  store %struct.btrfs_fs_info* %20, %struct.btrfs_fs_info** %10, align 8
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %22 = icmp ne %struct.btrfs_fs_info* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %181

26:                                               ; preds = %4
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @sb_rdonly(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EROFS, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %181

35:                                               ; preds = %26
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @skip_spaces(i8* %36)
  %38 = call i32 @kstrtoul(i32 %37, i32 0, i64* %15)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %5, align 4
  br label %181

43:                                               ; preds = %35
  %44 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %11, align 8
  %45 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @FEAT_COMPAT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @BTRFS_FEATURE_COMPAT_SAFE_SET, align 4
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* @BTRFS_FEATURE_COMPAT_SAFE_CLEAR, align 4
  store i32 %51, i32* %14, align 4
  br label %65

52:                                               ; preds = %43
  %53 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %11, align 8
  %54 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FEAT_COMPAT_RO, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @BTRFS_FEATURE_COMPAT_RO_SAFE_SET, align 4
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* @BTRFS_FEATURE_COMPAT_RO_SAFE_CLEAR, align 4
  store i32 %60, i32* %14, align 4
  br label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @BTRFS_FEATURE_INCOMPAT_SAFE_SET, align 4
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* @BTRFS_FEATURE_INCOMPAT_SAFE_CLEAR, align 4
  store i32 %63, i32* %14, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %49
  %66 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %67 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %11, align 8
  %68 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @get_features(%struct.btrfs_fs_info* %66, i64 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i64, i64* %15, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %11, align 8
  %76 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %73, %65
  %81 = load i64, i64* %15, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %11, align 8
  %86 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %83, %73
  %91 = load i64, i64* %9, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %5, align 4
  br label %181

93:                                               ; preds = %83, %80
  %94 = load i64, i64* %15, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %11, align 8
  %99 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %97, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %96, %93
  %104 = load i64, i64* %15, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %127, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %14, align 4
  %108 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %11, align 8
  %109 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %107, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %106, %96
  %114 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %115 = load i64, i64* %15, align 8
  %116 = icmp ne i64 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %119 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %11, align 8
  %120 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @btrfs_info(%struct.btrfs_fs_info* %114, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %118, i32 %123)
  %125 = load i32, i32* @EPERM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %181

127:                                              ; preds = %106, %103
  %128 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %129 = load i64, i64* %15, align 8
  %130 = icmp ne i64 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %133 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %11, align 8
  %134 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @btrfs_info(%struct.btrfs_fs_info* %128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %132, i32 %137)
  %139 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %140 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %139, i32 0, i32 1
  %141 = call i32 @spin_lock(i32* %140)
  %142 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %143 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %11, align 8
  %144 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @get_features(%struct.btrfs_fs_info* %142, i64 %145)
  store i32 %146, i32* %12, align 4
  %147 = load i64, i64* %15, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %127
  %150 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %11, align 8
  %151 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %12, align 4
  br label %162

155:                                              ; preds = %127
  %156 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %11, align 8
  %157 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %12, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %12, align 4
  br label %162

162:                                              ; preds = %155, %149
  %163 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %164 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %11, align 8
  %165 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @set_features(%struct.btrfs_fs_info* %163, i64 %166, i32 %167)
  %169 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %170 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %169, i32 0, i32 1
  %171 = call i32 @spin_unlock(i32* %170)
  %172 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %173 = load i32, i32* @COMMIT, align 4
  %174 = call i32 @btrfs_set_pending(%struct.btrfs_fs_info* %172, i32 %173)
  %175 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %176 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @wake_up_process(i32 %177)
  %179 = load i64, i64* %9, align 8
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %162, %113, %90, %41, %32, %23
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local %struct.btrfs_feature_attr* @to_btrfs_feature_attr(%struct.kobj_attribute*) #1

declare dso_local %struct.btrfs_fs_info* @to_fs_info(%struct.kobject*) #1

declare dso_local i64 @sb_rdonly(i32) #1

declare dso_local i32 @kstrtoul(i32, i32, i64*) #1

declare dso_local i32 @skip_spaces(i8*) #1

declare dso_local i32 @get_features(%struct.btrfs_fs_info*, i64) #1

declare dso_local i32 @btrfs_info(%struct.btrfs_fs_info*, i8*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_features(%struct.btrfs_fs_info*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_set_pending(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
