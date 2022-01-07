; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_expire.c_should_expire.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_expire.c_should_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.vfsmount = type { i32 }
%struct.autofs_info = type { i32, i32 }

@AUTOFS_INF_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"checking mountpoint %p %pd\0A\00", align 1
@AUTOFS_EXP_FORCED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"checking symlink %p %pd\0A\00", align 1
@AUTOFS_EXP_LEAVES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, %struct.vfsmount*, i64, i32)* @should_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @should_expire(%struct.dentry* %0, %struct.vfsmount* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.vfsmount*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.autofs_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %13)
  store %struct.autofs_info* %14, %struct.autofs_info** %10, align 8
  %15 = load %struct.autofs_info*, %struct.autofs_info** %10, align 8
  %16 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AUTOFS_INF_PENDING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %150

22:                                               ; preds = %4
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = call i64 @d_mountpoint(%struct.dentry* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.dentry* %27, %struct.dentry* %28)
  %30 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @autofs_mount_busy(%struct.vfsmount* %30, %struct.dentry* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %150

36:                                               ; preds = %26
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @AUTOFS_EXP_FORCED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %42, %struct.dentry** %5, align 8
  br label %150

43:                                               ; preds = %36
  %44 = load %struct.dentry*, %struct.dentry** %6, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @autofs_can_expire(%struct.dentry* %44, i64 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %50, %struct.dentry** %5, align 8
  br label %150

51:                                               ; preds = %43
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %150

52:                                               ; preds = %22
  %53 = load %struct.dentry*, %struct.dentry** %6, align 8
  %54 = call i64 @d_really_is_positive(%struct.dentry* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load %struct.dentry*, %struct.dentry** %6, align 8
  %58 = call i64 @d_is_symlink(%struct.dentry* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = load %struct.dentry*, %struct.dentry** %6, align 8
  %62 = load %struct.dentry*, %struct.dentry** %6, align 8
  %63 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %61, %struct.dentry* %62)
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @AUTOFS_EXP_FORCED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %69, %struct.dentry** %5, align 8
  br label %150

70:                                               ; preds = %60
  %71 = load %struct.dentry*, %struct.dentry** %6, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @autofs_can_expire(%struct.dentry* %71, i64 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %77, %struct.dentry** %5, align 8
  br label %150

78:                                               ; preds = %70
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %150

79:                                               ; preds = %56, %52
  %80 = load %struct.dentry*, %struct.dentry** %6, align 8
  %81 = call i64 @simple_empty(%struct.dentry* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %150

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @AUTOFS_EXP_LEAVES, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %115, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @AUTOFS_EXP_FORCED, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %89
  %95 = load %struct.autofs_info*, %struct.autofs_info** %10, align 8
  %96 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %95, i32 0, i32 1
  %97 = call i32 @atomic_read(i32* %96)
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  %99 = load %struct.dentry*, %struct.dentry** %6, align 8
  %100 = call i32 @d_count(%struct.dentry* %99)
  %101 = load i32, i32* %11, align 4
  %102 = icmp ugt i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %150

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104, %89
  %106 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %107 = load %struct.dentry*, %struct.dentry** %6, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @autofs_tree_busy(%struct.vfsmount* %106, %struct.dentry* %107, i64 %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %105
  %113 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %113, %struct.dentry** %5, align 8
  br label %150

114:                                              ; preds = %105
  br label %149

115:                                              ; preds = %84
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @AUTOFS_EXP_FORCED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %131, label %120

120:                                              ; preds = %115
  %121 = load %struct.autofs_info*, %struct.autofs_info** %10, align 8
  %122 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %121, i32 0, i32 1
  %123 = call i32 @atomic_read(i32* %122)
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  %125 = load %struct.dentry*, %struct.dentry** %6, align 8
  %126 = call i32 @d_count(%struct.dentry* %125)
  %127 = load i32, i32* %11, align 4
  %128 = icmp ugt i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %150

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %115
  %132 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %133 = load %struct.dentry*, %struct.dentry** %6, align 8
  %134 = load i64, i64* %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call %struct.dentry* @autofs_check_leaves(%struct.vfsmount* %132, %struct.dentry* %133, i64 %134, i32 %135)
  store %struct.dentry* %136, %struct.dentry** %12, align 8
  %137 = load %struct.dentry*, %struct.dentry** %12, align 8
  %138 = icmp ne %struct.dentry* %137, null
  br i1 %138, label %139, label %148

139:                                              ; preds = %131
  %140 = load %struct.dentry*, %struct.dentry** %12, align 8
  %141 = load %struct.dentry*, %struct.dentry** %6, align 8
  %142 = icmp eq %struct.dentry* %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load %struct.dentry*, %struct.dentry** %6, align 8
  %145 = call i32 @dput(%struct.dentry* %144)
  br label %146

146:                                              ; preds = %143, %139
  %147 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %147, %struct.dentry** %5, align 8
  br label %150

148:                                              ; preds = %131
  br label %149

149:                                              ; preds = %148, %114
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %150

150:                                              ; preds = %149, %146, %129, %112, %103, %83, %78, %76, %68, %51, %49, %41, %35, %21
  %151 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %151
}

declare dso_local %struct.autofs_info* @autofs_dentry_ino(%struct.dentry*) #1

declare dso_local i64 @d_mountpoint(%struct.dentry*) #1

declare dso_local i32 @pr_debug(i8*, %struct.dentry*, %struct.dentry*) #1

declare dso_local i64 @autofs_mount_busy(%struct.vfsmount*, %struct.dentry*, i32) #1

declare dso_local i64 @autofs_can_expire(%struct.dentry*, i64, i32) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i64 @d_is_symlink(%struct.dentry*) #1

declare dso_local i64 @simple_empty(%struct.dentry*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @d_count(%struct.dentry*) #1

declare dso_local i32 @autofs_tree_busy(%struct.vfsmount*, %struct.dentry*, i64, i32) #1

declare dso_local %struct.dentry* @autofs_check_leaves(%struct.vfsmount*, %struct.dentry*, i64, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
