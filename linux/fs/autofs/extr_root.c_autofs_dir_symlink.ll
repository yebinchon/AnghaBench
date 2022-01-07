; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_autofs_dir_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_autofs_dir_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i8*, i64, i32, i32 }
%struct.dentry = type { %struct.dentry* }
%struct.autofs_sb_info = type { i32 }
%struct.autofs_info = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s <- %pd\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@AUTOFS_SBI_CATATONIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @autofs_dir_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_dir_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.autofs_sb_info*, align 8
  %9 = alloca %struct.autofs_info*, align 8
  %10 = alloca %struct.autofs_info*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.autofs_sb_info* @autofs_sbi(i32 %16)
  store %struct.autofs_sb_info* %17, %struct.autofs_sb_info** %8, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %18)
  store %struct.autofs_info* %19, %struct.autofs_info** %9, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %12, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %22, %struct.dentry* %23)
  %25 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %26 = call i32 @autofs_oz_mode(%struct.autofs_sb_info* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EACCES, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %111

31:                                               ; preds = %3
  %32 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %33 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AUTOFS_SBI_CATATONIC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EACCES, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %111

41:                                               ; preds = %31
  %42 = load %struct.autofs_info*, %struct.autofs_info** %9, align 8
  %43 = icmp ne %struct.autofs_info* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.autofs_info*, %struct.autofs_info** %9, align 8
  %48 = call i32 @autofs_clean_ino(%struct.autofs_info* %47)
  %49 = load %struct.dentry*, %struct.dentry** %6, align 8
  %50 = call i32 @autofs_del_active(%struct.dentry* %49)
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %51, 1
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @kmalloc(i64 %52, i32 %53)
  store i8* %54, i8** %13, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %41
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %111

60:                                               ; preds = %41
  %61 = load i8*, i8** %13, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @strcpy(i8* %61, i8* %62)
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @S_IFLNK, align 4
  %68 = or i32 %67, 365
  %69 = call %struct.inode* @autofs_get_inode(i32 %66, i32 %68)
  store %struct.inode* %69, %struct.inode** %11, align 8
  %70 = load %struct.inode*, %struct.inode** %11, align 8
  %71 = icmp ne %struct.inode* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %60
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @kfree(i8* %73)
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %111

77:                                               ; preds = %60
  %78 = load i8*, i8** %13, align 8
  %79 = load %struct.inode*, %struct.inode** %11, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load %struct.inode*, %struct.inode** %11, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.dentry*, %struct.dentry** %6, align 8
  %85 = load %struct.inode*, %struct.inode** %11, align 8
  %86 = call i32 @d_add(%struct.dentry* %84, %struct.inode* %85)
  %87 = load %struct.dentry*, %struct.dentry** %6, align 8
  %88 = call i32 @dget(%struct.dentry* %87)
  %89 = load %struct.autofs_info*, %struct.autofs_info** %9, align 8
  %90 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %89, i32 0, i32 0
  %91 = call i32 @atomic_inc(i32* %90)
  %92 = load %struct.dentry*, %struct.dentry** %6, align 8
  %93 = getelementptr inbounds %struct.dentry, %struct.dentry* %92, i32 0, i32 0
  %94 = load %struct.dentry*, %struct.dentry** %93, align 8
  %95 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %94)
  store %struct.autofs_info* %95, %struct.autofs_info** %10, align 8
  %96 = load %struct.autofs_info*, %struct.autofs_info** %10, align 8
  %97 = icmp ne %struct.autofs_info* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %77
  %99 = load %struct.dentry*, %struct.dentry** %6, align 8
  %100 = call i32 @IS_ROOT(%struct.dentry* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load %struct.autofs_info*, %struct.autofs_info** %10, align 8
  %104 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %103, i32 0, i32 0
  %105 = call i32 @atomic_inc(i32* %104)
  br label %106

106:                                              ; preds = %102, %98, %77
  %107 = load %struct.inode*, %struct.inode** %5, align 8
  %108 = call i32 @current_time(%struct.inode* %107)
  %109 = load %struct.inode*, %struct.inode** %5, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %106, %72, %57, %38, %28
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local %struct.autofs_info* @autofs_dentry_ino(%struct.dentry*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pr_debug(i8*, i8*, %struct.dentry*) #1

declare dso_local i32 @autofs_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @autofs_clean_ino(%struct.autofs_info*) #1

declare dso_local i32 @autofs_del_active(%struct.dentry*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.inode* @autofs_get_inode(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
