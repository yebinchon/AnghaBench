; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_autofs_d_automount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_autofs_d_automount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.path = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.autofs_sb_info = type { i32, i32 }
%struct.autofs_info = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"dentry=%p %pd\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@AUTOFS_INF_PENDING = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfsmount* (%struct.path*)* @autofs_d_automount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfsmount* @autofs_d_automount(%struct.path* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.autofs_sb_info*, align 8
  %6 = alloca %struct.autofs_info*, align 8
  %7 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %3, align 8
  %8 = load %struct.path*, %struct.path** %3, align 8
  %9 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %10, %struct.dentry** %4, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.autofs_sb_info* @autofs_sbi(i32 %13)
  store %struct.autofs_sb_info* %14, %struct.autofs_sb_info** %5, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %15)
  store %struct.autofs_info* %16, %struct.autofs_info** %6, align 8
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.dentry* %17, %struct.dentry* %18)
  %20 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %21 = call i64 @autofs_oz_mode(%struct.autofs_sb_info* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store %struct.vfsmount* null, %struct.vfsmount** %2, align 8
  br label %139

24:                                               ; preds = %1
  %25 = load %struct.path*, %struct.path** %3, align 8
  %26 = call i32 @do_expire_wait(%struct.path* %25, i32 0)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store %struct.vfsmount* null, %struct.vfsmount** %2, align 8
  br label %139

35:                                               ; preds = %29, %24
  %36 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %37 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %36, i32 0, i32 1
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.autofs_info*, %struct.autofs_info** %6, align 8
  %40 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AUTOFS_INF_PENDING, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %35
  %46 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %47 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.path*, %struct.path** %3, align 8
  %50 = call i32 @autofs_mount_wait(%struct.path* %49, i32 0)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = call %struct.vfsmount* @ERR_PTR(i32 %54)
  store %struct.vfsmount* %55, %struct.vfsmount** %2, align 8
  br label %139

56:                                               ; preds = %45
  br label %129

57:                                               ; preds = %35
  %58 = load %struct.dentry*, %struct.dentry** %4, align 8
  %59 = call i64 @d_really_is_positive(%struct.dentry* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load %struct.dentry*, %struct.dentry** %4, align 8
  %63 = call i64 @d_is_symlink(%struct.dentry* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %67 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %66, i32 0, i32 1
  %68 = call i32 @spin_unlock(i32* %67)
  br label %129

69:                                               ; preds = %61, %57
  %70 = load %struct.path*, %struct.path** %3, align 8
  %71 = call i32 @path_is_mountpoint(%struct.path* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %125, label %73

73:                                               ; preds = %69
  %74 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %75 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %76, 4
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.path*, %struct.path** %3, align 8
  %80 = call i64 @path_has_submounts(%struct.path* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %84 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %83, i32 0, i32 1
  %85 = call i32 @spin_unlock(i32* %84)
  br label %129

86:                                               ; preds = %78
  br label %96

87:                                               ; preds = %73
  %88 = load %struct.dentry*, %struct.dentry** %4, align 8
  %89 = call i32 @simple_empty(%struct.dentry* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %93 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %92, i32 0, i32 1
  %94 = call i32 @spin_unlock(i32* %93)
  br label %129

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %86
  %97 = load i32, i32* @AUTOFS_INF_PENDING, align 4
  %98 = load %struct.autofs_info*, %struct.autofs_info** %6, align 8
  %99 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %103 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %102, i32 0, i32 1
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = load %struct.path*, %struct.path** %3, align 8
  %106 = call i32 @autofs_mount_wait(%struct.path* %105, i32 0)
  store i32 %106, i32* %7, align 4
  %107 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %108 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %107, i32 0, i32 1
  %109 = call i32 @spin_lock(i32* %108)
  %110 = load i32, i32* @AUTOFS_INF_PENDING, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.autofs_info*, %struct.autofs_info** %6, align 8
  %113 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %96
  %119 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %120 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %119, i32 0, i32 1
  %121 = call i32 @spin_unlock(i32* %120)
  %122 = load i32, i32* %7, align 4
  %123 = call %struct.vfsmount* @ERR_PTR(i32 %122)
  store %struct.vfsmount* %123, %struct.vfsmount** %2, align 8
  br label %139

124:                                              ; preds = %96
  br label %125

125:                                              ; preds = %124, %69
  %126 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %127 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %126, i32 0, i32 1
  %128 = call i32 @spin_unlock(i32* %127)
  br label %129

129:                                              ; preds = %125, %91, %82, %65, %56
  %130 = load %struct.path*, %struct.path** %3, align 8
  %131 = call %struct.dentry* @autofs_mountpoint_changed(%struct.path* %130)
  store %struct.dentry* %131, %struct.dentry** %4, align 8
  %132 = load %struct.dentry*, %struct.dentry** %4, align 8
  %133 = icmp ne %struct.dentry* %132, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* @ENOENT, align 4
  %136 = sub nsw i32 0, %135
  %137 = call %struct.vfsmount* @ERR_PTR(i32 %136)
  store %struct.vfsmount* %137, %struct.vfsmount** %2, align 8
  br label %139

138:                                              ; preds = %129
  store %struct.vfsmount* null, %struct.vfsmount** %2, align 8
  br label %139

139:                                              ; preds = %138, %134, %118, %53, %34, %23
  %140 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  ret %struct.vfsmount* %140
}

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local %struct.autofs_info* @autofs_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @pr_debug(i8*, %struct.dentry*, %struct.dentry*) #1

declare dso_local i64 @autofs_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i32 @do_expire_wait(%struct.path*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @autofs_mount_wait(%struct.path*, i32) #1

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i64 @d_is_symlink(%struct.dentry*) #1

declare dso_local i32 @path_is_mountpoint(%struct.path*) #1

declare dso_local i64 @path_has_submounts(%struct.path*) #1

declare dso_local i32 @simple_empty(%struct.dentry*) #1

declare dso_local %struct.dentry* @autofs_mountpoint_changed(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
