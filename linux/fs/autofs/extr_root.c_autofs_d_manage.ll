; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_autofs_d_manage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_autofs_d_manage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry* }
%struct.dentry = type { i32, i32 }
%struct.autofs_sb_info = type { i32 }
%struct.autofs_info = type { i32 }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"dentry=%p %pd\0A\00", align 1
@EISDIR = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@AUTOFS_INF_WANT_EXPIRE = common dso_local global i32 0, align 4
@AUTOFS_INF_EXPIRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i32)* @autofs_d_manage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_d_manage(%struct.path* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.autofs_sb_info*, align 8
  %8 = alloca %struct.autofs_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  store %struct.path* %0, %struct.path** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.path*, %struct.path** %4, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %13, %struct.dentry** %6, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.autofs_sb_info* @autofs_sbi(i32 %16)
  store %struct.autofs_sb_info* %17, %struct.autofs_sb_info** %7, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %18)
  store %struct.autofs_info* %19, %struct.autofs_info** %8, align 8
  %20 = load %struct.dentry*, %struct.dentry** %6, align 8
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.dentry* %20, %struct.dentry* %21)
  %23 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %24 = call i64 @autofs_oz_mode(%struct.autofs_sb_info* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.path*, %struct.path** %4, align 8
  %28 = call i64 @path_is_mountpoint(%struct.path* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @EISDIR, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %131

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %131

34:                                               ; preds = %2
  %35 = load %struct.path*, %struct.path** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @do_expire_wait(%struct.path* %35, i32 %36)
  %38 = load i32, i32* @ECHILD, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @ECHILD, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %131

44:                                               ; preds = %34
  %45 = load %struct.path*, %struct.path** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @autofs_mount_wait(%struct.path* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %131

52:                                               ; preds = %44
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %96

55:                                               ; preds = %52
  %56 = load %struct.autofs_info*, %struct.autofs_info** %8, align 8
  %57 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @AUTOFS_INF_WANT_EXPIRE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %131

63:                                               ; preds = %55
  %64 = load %struct.path*, %struct.path** %4, align 8
  %65 = call i64 @path_is_mountpoint(%struct.path* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %131

68:                                               ; preds = %63
  %69 = load %struct.dentry*, %struct.dentry** %6, align 8
  %70 = call %struct.inode* @d_inode_rcu(%struct.dentry* %69)
  store %struct.inode* %70, %struct.inode** %10, align 8
  %71 = load %struct.inode*, %struct.inode** %10, align 8
  %72 = icmp ne %struct.inode* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.inode*, %struct.inode** %10, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @S_ISLNK(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @EISDIR, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %131

82:                                               ; preds = %73, %68
  %83 = load %struct.dentry*, %struct.dentry** %6, align 8
  %84 = getelementptr inbounds %struct.dentry, %struct.dentry* %83, i32 0, i32 0
  %85 = call i64 @list_empty(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %131

88:                                               ; preds = %82
  %89 = load %struct.dentry*, %struct.dentry** %6, align 8
  %90 = call i32 @simple_empty(%struct.dentry* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @EISDIR, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %131

95:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %131

96:                                               ; preds = %52
  %97 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %98 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %97, i32 0, i32 0
  %99 = call i32 @spin_lock(i32* %98)
  %100 = load %struct.autofs_info*, %struct.autofs_info** %8, align 8
  %101 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @AUTOFS_INF_EXPIRING, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %126, label %106

106:                                              ; preds = %96
  %107 = load %struct.path*, %struct.path** %4, align 8
  %108 = call i64 @path_is_mountpoint(%struct.path* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load %struct.dentry*, %struct.dentry** %6, align 8
  %112 = call i32 @simple_empty(%struct.dentry* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %110, %106
  %115 = load %struct.dentry*, %struct.dentry** %6, align 8
  %116 = call i64 @d_really_is_positive(%struct.dentry* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = load %struct.dentry*, %struct.dentry** %6, align 8
  %120 = call i64 @d_is_symlink(%struct.dentry* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118, %110
  %123 = load i32, i32* @EISDIR, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %122, %118, %114
  br label %126

126:                                              ; preds = %125, %96
  %127 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %128 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %127, i32 0, i32 0
  %129 = call i32 @spin_unlock(i32* %128)
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %126, %95, %92, %87, %79, %67, %62, %50, %41, %33, %30
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local %struct.autofs_info* @autofs_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @pr_debug(i8*, %struct.dentry*, %struct.dentry*) #1

declare dso_local i64 @autofs_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i64 @path_is_mountpoint(%struct.path*) #1

declare dso_local i32 @do_expire_wait(%struct.path*, i32) #1

declare dso_local i32 @autofs_mount_wait(%struct.path*, i32) #1

declare dso_local %struct.inode* @d_inode_rcu(%struct.dentry*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @simple_empty(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i64 @d_is_symlink(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
