; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_expire.c_autofs_expire_indirect.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_expire.c_autofs_expire_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { %struct.dentry* }
%struct.vfsmount = type { i32 }
%struct.autofs_sb_info = type { i64, i32 }
%struct.autofs_info = type { i32, i32 }

@AUTOFS_INF_WANT_EXPIRE = common dso_local global i32 0, align 4
@AUTOFS_EXP_LEAVES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"returning %p %pd\0A\00", align 1
@AUTOFS_INF_EXPIRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.vfsmount*, %struct.autofs_sb_info*, i32)* @autofs_expire_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @autofs_expire_indirect(%struct.super_block* %0, %struct.vfsmount* %1, %struct.autofs_sb_info* %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.vfsmount*, align 8
  %8 = alloca %struct.autofs_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca %struct.autofs_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %7, align 8
  store %struct.autofs_sb_info* %2, %struct.autofs_sb_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  %18 = load %struct.dentry*, %struct.dentry** %17, align 8
  store %struct.dentry* %18, %struct.dentry** %11, align 8
  %19 = load %struct.dentry*, %struct.dentry** %11, align 8
  %20 = icmp ne %struct.dentry* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %138

22:                                               ; preds = %4
  %23 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %24 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  store %struct.dentry* null, %struct.dentry** %12, align 8
  br label %26

26:                                               ; preds = %120, %58, %43, %22
  %27 = load %struct.dentry*, %struct.dentry** %12, align 8
  %28 = load %struct.dentry*, %struct.dentry** %11, align 8
  %29 = call %struct.dentry* @get_next_positive_subdir(%struct.dentry* %27, %struct.dentry* %28)
  store %struct.dentry* %29, %struct.dentry** %12, align 8
  %30 = icmp ne %struct.dentry* %29, null
  br i1 %30, label %31, label %121

31:                                               ; preds = %26
  %32 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %33 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %32, i32 0, i32 1
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.dentry*, %struct.dentry** %12, align 8
  %36 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %35)
  store %struct.autofs_info* %36, %struct.autofs_info** %15, align 8
  %37 = load %struct.autofs_info*, %struct.autofs_info** %15, align 8
  %38 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AUTOFS_INF_WANT_EXPIRE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %45 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock(i32* %45)
  br label %26

47:                                               ; preds = %31
  %48 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %49 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load %struct.dentry*, %struct.dentry** %12, align 8
  %52 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call %struct.dentry* @should_expire(%struct.dentry* %51, %struct.vfsmount* %52, i64 %53, i32 %54)
  store %struct.dentry* %55, %struct.dentry** %13, align 8
  %56 = load %struct.dentry*, %struct.dentry** %13, align 8
  %57 = icmp ne %struct.dentry* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %47
  br label %26

59:                                               ; preds = %47
  %60 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %61 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %60, i32 0, i32 1
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.dentry*, %struct.dentry** %13, align 8
  %64 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %63)
  store %struct.autofs_info* %64, %struct.autofs_info** %15, align 8
  %65 = load i32, i32* @AUTOFS_INF_WANT_EXPIRE, align 4
  %66 = load %struct.autofs_info*, %struct.autofs_info** %15, align 8
  %67 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %71 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = call i32 (...) @synchronize_rcu()
  %74 = load i32, i32* @AUTOFS_EXP_LEAVES, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %9, align 4
  %78 = load %struct.dentry*, %struct.dentry** %13, align 8
  %79 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call %struct.dentry* @should_expire(%struct.dentry* %78, %struct.vfsmount* %79, i64 %80, i32 %81)
  store %struct.dentry* %82, %struct.dentry** %14, align 8
  %83 = load %struct.dentry*, %struct.dentry** %14, align 8
  %84 = icmp ne %struct.dentry* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %59
  %86 = load %struct.dentry*, %struct.dentry** %14, align 8
  %87 = load %struct.dentry*, %struct.dentry** %13, align 8
  %88 = icmp ne %struct.dentry* %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %59
  br label %101

90:                                               ; preds = %85
  %91 = load %struct.dentry*, %struct.dentry** %13, align 8
  %92 = load %struct.dentry*, %struct.dentry** %12, align 8
  %93 = icmp ne %struct.dentry* %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.dentry*, %struct.dentry** %12, align 8
  %96 = call i32 @dput(%struct.dentry* %95)
  br label %97

97:                                               ; preds = %94, %90
  %98 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %99 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %98, i32 0, i32 1
  %100 = call i32 @spin_lock(i32* %99)
  br label %122

101:                                              ; preds = %89
  %102 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %103 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %102, i32 0, i32 1
  %104 = call i32 @spin_lock(i32* %103)
  %105 = load i32, i32* @AUTOFS_INF_WANT_EXPIRE, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.autofs_info*, %struct.autofs_info** %15, align 8
  %108 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %112 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %111, i32 0, i32 1
  %113 = call i32 @spin_unlock(i32* %112)
  %114 = load %struct.dentry*, %struct.dentry** %13, align 8
  %115 = load %struct.dentry*, %struct.dentry** %12, align 8
  %116 = icmp ne %struct.dentry* %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %101
  %118 = load %struct.dentry*, %struct.dentry** %13, align 8
  %119 = call i32 @dput(%struct.dentry* %118)
  br label %120

120:                                              ; preds = %117, %101
  br label %26

121:                                              ; preds = %26
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %138

122:                                              ; preds = %97
  %123 = load %struct.dentry*, %struct.dentry** %13, align 8
  %124 = load %struct.dentry*, %struct.dentry** %13, align 8
  %125 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.dentry* %123, %struct.dentry* %124)
  %126 = load i32, i32* @AUTOFS_INF_EXPIRING, align 4
  %127 = load %struct.autofs_info*, %struct.autofs_info** %15, align 8
  %128 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.autofs_info*, %struct.autofs_info** %15, align 8
  %132 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %131, i32 0, i32 1
  %133 = call i32 @init_completion(i32* %132)
  %134 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %135 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %134, i32 0, i32 1
  %136 = call i32 @spin_unlock(i32* %135)
  %137 = load %struct.dentry*, %struct.dentry** %13, align 8
  store %struct.dentry* %137, %struct.dentry** %5, align 8
  br label %138

138:                                              ; preds = %122, %121, %21
  %139 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %139
}

declare dso_local %struct.dentry* @get_next_positive_subdir(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.autofs_info* @autofs_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.dentry* @should_expire(%struct.dentry*, %struct.vfsmount*, i64, i32) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @pr_debug(i8*, %struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
