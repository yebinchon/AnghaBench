; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_autofs_dir_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_autofs_dir_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { %struct.dentry* }
%struct.autofs_sb_info = type { i32, i32 }
%struct.autofs_info = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@AUTOFS_SBI_CATATONIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"dentry %p, creating %pd\0A\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @autofs_dir_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_dir_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.autofs_sb_info*, align 8
  %9 = alloca %struct.autofs_info*, align 8
  %10 = alloca %struct.autofs_info*, align 8
  %11 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.autofs_sb_info* @autofs_sbi(i32 %14)
  store %struct.autofs_sb_info* %15, %struct.autofs_sb_info** %8, align 8
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %16)
  store %struct.autofs_info* %17, %struct.autofs_info** %9, align 8
  %18 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %19 = call i32 @autofs_oz_mode(%struct.autofs_sb_info* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EACCES, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %97

24:                                               ; preds = %3
  %25 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %26 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AUTOFS_SBI_CATATONIC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EACCES, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %97

34:                                               ; preds = %24
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.dentry* %35, %struct.dentry* %36)
  %38 = load %struct.autofs_info*, %struct.autofs_info** %9, align 8
  %39 = icmp ne %struct.autofs_info* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.autofs_info*, %struct.autofs_info** %9, align 8
  %44 = call i32 @autofs_clean_ino(%struct.autofs_info* %43)
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = call i32 @autofs_del_active(%struct.dentry* %45)
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @S_IFDIR, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %50, %51
  %53 = call %struct.inode* @autofs_get_inode(i32 %49, i32 %52)
  store %struct.inode* %53, %struct.inode** %11, align 8
  %54 = load %struct.inode*, %struct.inode** %11, align 8
  %55 = icmp ne %struct.inode* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %34
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %97

59:                                               ; preds = %34
  %60 = load %struct.dentry*, %struct.dentry** %6, align 8
  %61 = load %struct.inode*, %struct.inode** %11, align 8
  %62 = call i32 @d_add(%struct.dentry* %60, %struct.inode* %61)
  %63 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %64 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 5
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load %struct.dentry*, %struct.dentry** %6, align 8
  %69 = call i32 @autofs_set_leaf_automount_flags(%struct.dentry* %68)
  br label %70

70:                                               ; preds = %67, %59
  %71 = load %struct.dentry*, %struct.dentry** %6, align 8
  %72 = call i32 @dget(%struct.dentry* %71)
  %73 = load %struct.autofs_info*, %struct.autofs_info** %9, align 8
  %74 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %73, i32 0, i32 0
  %75 = call i32 @atomic_inc(i32* %74)
  %76 = load %struct.dentry*, %struct.dentry** %6, align 8
  %77 = getelementptr inbounds %struct.dentry, %struct.dentry* %76, i32 0, i32 0
  %78 = load %struct.dentry*, %struct.dentry** %77, align 8
  %79 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %78)
  store %struct.autofs_info* %79, %struct.autofs_info** %10, align 8
  %80 = load %struct.autofs_info*, %struct.autofs_info** %10, align 8
  %81 = icmp ne %struct.autofs_info* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %70
  %83 = load %struct.dentry*, %struct.dentry** %6, align 8
  %84 = call i32 @IS_ROOT(%struct.dentry* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load %struct.autofs_info*, %struct.autofs_info** %10, align 8
  %88 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %87, i32 0, i32 0
  %89 = call i32 @atomic_inc(i32* %88)
  br label %90

90:                                               ; preds = %86, %82, %70
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = call i32 @inc_nlink(%struct.inode* %91)
  %93 = load %struct.inode*, %struct.inode** %5, align 8
  %94 = call i32 @current_time(%struct.inode* %93)
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %90, %56, %31, %21
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local %struct.autofs_info* @autofs_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @autofs_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i32 @pr_debug(i8*, %struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @autofs_clean_ino(%struct.autofs_info*) #1

declare dso_local i32 @autofs_del_active(%struct.dentry*) #1

declare dso_local %struct.inode* @autofs_get_inode(i32, i32) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @autofs_set_leaf_automount_flags(%struct.dentry*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
