; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_expire.c_autofs_tree_busy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_expire.c_autofs_tree_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { i32 }
%struct.autofs_info = type { i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"top %p %pd\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"dentry %p %pd\0A\00", align 1
@jiffies = common dso_local global i8* null, align 8
@AUTOFS_EXP_FORCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*, %struct.dentry*, i64, i32)* @autofs_tree_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_tree_busy(%struct.vfsmount* %0, %struct.dentry* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.autofs_info*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.autofs_info*, align 8
  %13 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.dentry*, %struct.dentry** %7, align 8
  %15 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %14)
  store %struct.autofs_info* %15, %struct.autofs_info** %10, align 8
  %16 = load %struct.dentry*, %struct.dentry** %7, align 8
  %17 = load %struct.dentry*, %struct.dentry** %7, align 8
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.dentry* %16, %struct.dentry* %17)
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = call i32 @simple_positive(%struct.dentry* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %91

23:                                               ; preds = %4
  store %struct.dentry* null, %struct.dentry** %11, align 8
  br label %24

24:                                               ; preds = %76, %23
  %25 = load %struct.dentry*, %struct.dentry** %11, align 8
  %26 = load %struct.dentry*, %struct.dentry** %7, align 8
  %27 = call %struct.dentry* @get_next_positive_dentry(%struct.dentry* %25, %struct.dentry* %26)
  store %struct.dentry* %27, %struct.dentry** %11, align 8
  %28 = icmp ne %struct.dentry* %27, null
  br i1 %28, label %29, label %77

29:                                               ; preds = %24
  %30 = load %struct.dentry*, %struct.dentry** %11, align 8
  %31 = load %struct.dentry*, %struct.dentry** %11, align 8
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %30, %struct.dentry* %31)
  %33 = load %struct.dentry*, %struct.dentry** %11, align 8
  %34 = call i64 @d_mountpoint(%struct.dentry* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %38 = load %struct.dentry*, %struct.dentry** %11, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @autofs_mount_busy(%struct.vfsmount* %37, %struct.dentry* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i8*, i8** @jiffies, align 8
  %44 = load %struct.autofs_info*, %struct.autofs_info** %10, align 8
  %45 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.dentry*, %struct.dentry** %11, align 8
  %47 = call i32 @dput(%struct.dentry* %46)
  store i32 1, i32* %5, align 4
  br label %91

48:                                               ; preds = %36
  br label %76

49:                                               ; preds = %29
  %50 = load %struct.dentry*, %struct.dentry** %11, align 8
  %51 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %50)
  store %struct.autofs_info* %51, %struct.autofs_info** %12, align 8
  %52 = load %struct.autofs_info*, %struct.autofs_info** %12, align 8
  %53 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %52, i32 0, i32 1
  %54 = call i32 @atomic_read(i32* %53)
  store i32 %54, i32* %13, align 4
  %55 = load %struct.dentry*, %struct.dentry** %11, align 8
  %56 = load %struct.dentry*, %struct.dentry** %7, align 8
  %57 = icmp eq %struct.dentry* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32, i32* %13, align 4
  %60 = add i32 %59, 2
  store i32 %60, i32* %13, align 4
  br label %64

61:                                               ; preds = %49
  %62 = load i32, i32* %13, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.dentry*, %struct.dentry** %11, align 8
  %66 = call i32 @d_count(%struct.dentry* %65)
  %67 = load i32, i32* %13, align 4
  %68 = icmp ugt i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i8*, i8** @jiffies, align 8
  %71 = load %struct.autofs_info*, %struct.autofs_info** %10, align 8
  %72 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.dentry*, %struct.dentry** %11, align 8
  %74 = call i32 @dput(%struct.dentry* %73)
  store i32 1, i32* %5, align 4
  br label %91

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %48
  br label %24

77:                                               ; preds = %24
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @AUTOFS_EXP_FORCED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %91

83:                                               ; preds = %77
  %84 = load %struct.dentry*, %struct.dentry** %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @autofs_can_expire(%struct.dentry* %84, i64 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  store i32 1, i32* %5, align 4
  br label %91

90:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %89, %82, %69, %42, %22
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.autofs_info* @autofs_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @pr_debug(i8*, %struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @simple_positive(%struct.dentry*) #1

declare dso_local %struct.dentry* @get_next_positive_dentry(%struct.dentry*, %struct.dentry*) #1

declare dso_local i64 @d_mountpoint(%struct.dentry*) #1

declare dso_local i64 @autofs_mount_busy(%struct.vfsmount*, %struct.dentry*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @d_count(%struct.dentry*) #1

declare dso_local i32 @autofs_can_expire(%struct.dentry*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
