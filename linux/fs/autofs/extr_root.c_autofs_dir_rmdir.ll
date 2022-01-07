; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_autofs_dir_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_autofs_dir_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.dentry = type { %struct.dentry* }
%struct.autofs_sb_info = type { i32, i32, i32 }
%struct.autofs_info = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"dentry %p, removing %pd\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@AUTOFS_SBI_CATATONIC = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @autofs_dir_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_dir_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.autofs_sb_info*, align 8
  %7 = alloca %struct.autofs_info*, align 8
  %8 = alloca %struct.autofs_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.autofs_sb_info* @autofs_sbi(i32 %11)
  store %struct.autofs_sb_info* %12, %struct.autofs_sb_info** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %13)
  store %struct.autofs_info* %14, %struct.autofs_info** %7, align 8
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.dentry* %15, %struct.dentry* %16)
  %18 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %19 = call i32 @autofs_oz_mode(%struct.autofs_sb_info* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EACCES, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %104

24:                                               ; preds = %2
  %25 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %26 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AUTOFS_SBI_CATATONIC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EACCES, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %104

34:                                               ; preds = %24
  %35 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %36 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %35, i32 0, i32 2
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = call i32 @simple_empty(%struct.dentry* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %34
  %42 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %43 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %42, i32 0, i32 2
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load i32, i32* @ENOTEMPTY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %104

47:                                               ; preds = %34
  %48 = load %struct.dentry*, %struct.dentry** %5, align 8
  %49 = call i32 @__autofs_add_expiring(%struct.dentry* %48)
  %50 = load %struct.dentry*, %struct.dentry** %5, align 8
  %51 = call i32 @d_drop(%struct.dentry* %50)
  %52 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %53 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %52, i32 0, i32 2
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %56 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 5
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load %struct.dentry*, %struct.dentry** %5, align 8
  %61 = call i32 @autofs_clear_leaf_automount_flags(%struct.dentry* %60)
  br label %62

62:                                               ; preds = %59, %47
  %63 = load %struct.autofs_info*, %struct.autofs_info** %7, align 8
  %64 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %63, i32 0, i32 1
  %65 = call i64 @atomic_dec_and_test(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load %struct.dentry*, %struct.dentry** %5, align 8
  %69 = getelementptr inbounds %struct.dentry, %struct.dentry* %68, i32 0, i32 0
  %70 = load %struct.dentry*, %struct.dentry** %69, align 8
  %71 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %70)
  store %struct.autofs_info* %71, %struct.autofs_info** %8, align 8
  %72 = load %struct.autofs_info*, %struct.autofs_info** %8, align 8
  %73 = icmp ne %struct.autofs_info* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load %struct.dentry*, %struct.dentry** %5, align 8
  %76 = getelementptr inbounds %struct.dentry, %struct.dentry* %75, i32 0, i32 0
  %77 = load %struct.dentry*, %struct.dentry** %76, align 8
  %78 = load %struct.dentry*, %struct.dentry** %5, align 8
  %79 = icmp ne %struct.dentry* %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.autofs_info*, %struct.autofs_info** %8, align 8
  %82 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %81, i32 0, i32 1
  %83 = call i32 @atomic_dec(i32* %82)
  br label %84

84:                                               ; preds = %80, %74, %67
  br label %85

85:                                               ; preds = %84, %62
  %86 = load %struct.autofs_info*, %struct.autofs_info** %7, align 8
  %87 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dput(i32 %88)
  %90 = load %struct.dentry*, %struct.dentry** %5, align 8
  %91 = call %struct.TYPE_3__* @d_inode(%struct.dentry* %90)
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load %struct.dentry*, %struct.dentry** %5, align 8
  %94 = call %struct.TYPE_3__* @d_inode(%struct.dentry* %93)
  %95 = call i32 @clear_nlink(%struct.TYPE_3__* %94)
  %96 = load %struct.inode*, %struct.inode** %4, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %85
  %101 = load %struct.inode*, %struct.inode** %4, align 8
  %102 = call i32 @drop_nlink(%struct.inode* %101)
  br label %103

103:                                              ; preds = %100, %85
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %41, %31, %21
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local %struct.autofs_info* @autofs_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @pr_debug(i8*, %struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @autofs_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @simple_empty(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__autofs_add_expiring(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @autofs_clear_leaf_automount_flags(%struct.dentry*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @dput(i32) #1

declare dso_local %struct.TYPE_3__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @clear_nlink(%struct.TYPE_3__*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
