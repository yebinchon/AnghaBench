; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_waitq.c_validate_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_waitq.c_validate_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_wait_queue = type { i32 }
%struct.autofs_sb_info = type { i32, i32 }
%struct.qstr = type { i32 }
%struct.path = type { %struct.dentry*, i32 }
%struct.dentry = type { i32, %struct.dentry* }
%struct.autofs_info = type { i32 }

@AUTOFS_SBI_CATATONIC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NFY_NONE = common dso_local global i32 0, align 4
@AUTOFS_INF_EXPIRING = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@NFY_MOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.autofs_wait_queue**, %struct.autofs_sb_info*, %struct.qstr*, %struct.path*, i32)* @validate_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_request(%struct.autofs_wait_queue** %0, %struct.autofs_sb_info* %1, %struct.qstr* %2, %struct.path* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.autofs_wait_queue**, align 8
  %8 = alloca %struct.autofs_sb_info*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca %struct.path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.autofs_wait_queue*, align 8
  %14 = alloca %struct.autofs_info*, align 8
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca %struct.path, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.dentry*, align 8
  store %struct.autofs_wait_queue** %0, %struct.autofs_wait_queue*** %7, align 8
  store %struct.autofs_sb_info* %1, %struct.autofs_sb_info** %8, align 8
  store %struct.qstr* %2, %struct.qstr** %9, align 8
  store %struct.path* %3, %struct.path** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.path*, %struct.path** %10, align 8
  %20 = getelementptr inbounds %struct.path, %struct.path* %19, i32 0, i32 0
  %21 = load %struct.dentry*, %struct.dentry** %20, align 8
  store %struct.dentry* %21, %struct.dentry** %12, align 8
  %22 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %23 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AUTOFS_SBI_CATATONIC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %143

31:                                               ; preds = %5
  %32 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %33 = load %struct.qstr*, %struct.qstr** %9, align 8
  %34 = call %struct.autofs_wait_queue* @autofs_find_wait(%struct.autofs_sb_info* %32, %struct.qstr* %33)
  store %struct.autofs_wait_queue* %34, %struct.autofs_wait_queue** %13, align 8
  %35 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %13, align 8
  %36 = icmp ne %struct.autofs_wait_queue* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %13, align 8
  %39 = load %struct.autofs_wait_queue**, %struct.autofs_wait_queue*** %7, align 8
  store %struct.autofs_wait_queue* %38, %struct.autofs_wait_queue** %39, align 8
  store i32 1, i32* %6, align 4
  br label %143

40:                                               ; preds = %31
  %41 = load %struct.autofs_wait_queue**, %struct.autofs_wait_queue*** %7, align 8
  store %struct.autofs_wait_queue* null, %struct.autofs_wait_queue** %41, align 8
  %42 = load %struct.dentry*, %struct.dentry** %12, align 8
  %43 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %42)
  store %struct.autofs_info* %43, %struct.autofs_info** %14, align 8
  %44 = load %struct.autofs_info*, %struct.autofs_info** %14, align 8
  %45 = icmp ne %struct.autofs_info* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  br label %143

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @NFY_NONE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %94

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %92, %51
  %53 = load %struct.autofs_info*, %struct.autofs_info** %14, align 8
  %54 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AUTOFS_INF_EXPIRING, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %93

59:                                               ; preds = %52
  %60 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %61 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* @HZ, align 4
  %64 = sdiv i32 %63, 10
  %65 = call i32 @schedule_timeout_interruptible(i32 %64)
  %66 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %67 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %66, i32 0, i32 1
  %68 = call i64 @mutex_lock_interruptible(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load i32, i32* @EINTR, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %143

73:                                               ; preds = %59
  %74 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %75 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AUTOFS_SBI_CATATONIC, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* @ENOENT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %143

83:                                               ; preds = %73
  %84 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %85 = load %struct.qstr*, %struct.qstr** %9, align 8
  %86 = call %struct.autofs_wait_queue* @autofs_find_wait(%struct.autofs_sb_info* %84, %struct.qstr* %85)
  store %struct.autofs_wait_queue* %86, %struct.autofs_wait_queue** %13, align 8
  %87 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %13, align 8
  %88 = icmp ne %struct.autofs_wait_queue* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %13, align 8
  %91 = load %struct.autofs_wait_queue**, %struct.autofs_wait_queue*** %7, align 8
  store %struct.autofs_wait_queue* %90, %struct.autofs_wait_queue** %91, align 8
  store i32 1, i32* %6, align 4
  br label %143

92:                                               ; preds = %83
  br label %52

93:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %143

94:                                               ; preds = %47
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @NFY_MOUNT, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %142

98:                                               ; preds = %94
  store %struct.dentry* null, %struct.dentry** %15, align 8
  store i32 1, i32* %17, align 4
  %99 = load %struct.dentry*, %struct.dentry** %12, align 8
  %100 = call i32 @IS_ROOT(%struct.dentry* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %124, label %102

102:                                              ; preds = %98
  %103 = load %struct.dentry*, %struct.dentry** %12, align 8
  %104 = call i64 @d_unhashed(%struct.dentry* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %102
  %107 = load %struct.dentry*, %struct.dentry** %12, align 8
  %108 = call i64 @d_really_is_positive(%struct.dentry* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %106
  %111 = load %struct.dentry*, %struct.dentry** %12, align 8
  %112 = getelementptr inbounds %struct.dentry, %struct.dentry* %111, i32 0, i32 1
  %113 = load %struct.dentry*, %struct.dentry** %112, align 8
  store %struct.dentry* %113, %struct.dentry** %18, align 8
  %114 = load %struct.dentry*, %struct.dentry** %18, align 8
  %115 = load %struct.dentry*, %struct.dentry** %12, align 8
  %116 = getelementptr inbounds %struct.dentry, %struct.dentry* %115, i32 0, i32 0
  %117 = call %struct.dentry* @d_lookup(%struct.dentry* %114, i32* %116)
  store %struct.dentry* %117, %struct.dentry** %15, align 8
  %118 = load %struct.dentry*, %struct.dentry** %15, align 8
  %119 = icmp ne %struct.dentry* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %110
  %121 = load %struct.dentry*, %struct.dentry** %15, align 8
  store %struct.dentry* %121, %struct.dentry** %12, align 8
  br label %122

122:                                              ; preds = %120, %110
  br label %123

123:                                              ; preds = %122, %106, %102
  br label %124

124:                                              ; preds = %123, %98
  %125 = load %struct.path*, %struct.path** %10, align 8
  %126 = getelementptr inbounds %struct.path, %struct.path* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.path, %struct.path* %16, i32 0, i32 1
  store i32 %127, i32* %128, align 8
  %129 = load %struct.dentry*, %struct.dentry** %12, align 8
  %130 = getelementptr inbounds %struct.path, %struct.path* %16, i32 0, i32 0
  store %struct.dentry* %129, %struct.dentry** %130, align 8
  %131 = call i64 @path_has_submounts(%struct.path* %16)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  store i32 0, i32* %17, align 4
  br label %134

134:                                              ; preds = %133, %124
  %135 = load %struct.dentry*, %struct.dentry** %15, align 8
  %136 = icmp ne %struct.dentry* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.dentry*, %struct.dentry** %15, align 8
  %139 = call i32 @dput(%struct.dentry* %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* %17, align 4
  store i32 %141, i32* %6, align 4
  br label %143

142:                                              ; preds = %94
  store i32 1, i32* %6, align 4
  br label %143

143:                                              ; preds = %142, %140, %93, %89, %80, %70, %46, %37, %28
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local %struct.autofs_wait_queue* @autofs_find_wait(%struct.autofs_sb_info*, %struct.qstr*) #1

declare dso_local %struct.autofs_info* @autofs_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local i64 @d_unhashed(%struct.dentry*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, i32*) #1

declare dso_local i64 @path_has_submounts(%struct.path*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
