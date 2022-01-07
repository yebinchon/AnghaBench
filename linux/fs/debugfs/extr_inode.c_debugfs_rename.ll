; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debugfs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debugfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.name_snapshot = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @debugfs_rename(%struct.dentry* %0, %struct.dentry* %1, %struct.dentry* %2, i8* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.name_snapshot, align 4
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.dentry* null, %struct.dentry** %11, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = call i64 @IS_ERR(%struct.dentry* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %18, %struct.dentry** %5, align 8
  br label %131

19:                                               ; preds = %4
  %20 = load %struct.dentry*, %struct.dentry** %8, align 8
  %21 = call i64 @IS_ERR(%struct.dentry* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %24, %struct.dentry** %5, align 8
  br label %131

25:                                               ; preds = %19
  %26 = load %struct.dentry*, %struct.dentry** %7, align 8
  %27 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %30, %struct.dentry** %5, align 8
  br label %131

31:                                               ; preds = %25
  %32 = load %struct.dentry*, %struct.dentry** %8, align 8
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = call %struct.dentry* @lock_rename(%struct.dentry* %32, %struct.dentry* %33)
  store %struct.dentry* %34, %struct.dentry** %12, align 8
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = call i64 @d_really_is_negative(%struct.dentry* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = load %struct.dentry*, %struct.dentry** %8, align 8
  %40 = call i64 @d_really_is_negative(%struct.dentry* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %31
  br label %108

43:                                               ; preds = %38
  %44 = load %struct.dentry*, %struct.dentry** %7, align 8
  %45 = call i64 @d_really_is_negative(%struct.dentry* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = load %struct.dentry*, %struct.dentry** %7, align 8
  %49 = load %struct.dentry*, %struct.dentry** %12, align 8
  %50 = icmp eq %struct.dentry* %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load %struct.dentry*, %struct.dentry** %7, align 8
  %53 = call i64 @d_mountpoint(%struct.dentry* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %47, %43
  br label %108

56:                                               ; preds = %51
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.dentry*, %struct.dentry** %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = call %struct.dentry* @lookup_one_len(i8* %57, %struct.dentry* %58, i32 %60)
  store %struct.dentry* %61, %struct.dentry** %11, align 8
  %62 = load %struct.dentry*, %struct.dentry** %11, align 8
  %63 = call i64 @IS_ERR(%struct.dentry* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %56
  %66 = load %struct.dentry*, %struct.dentry** %11, align 8
  %67 = load %struct.dentry*, %struct.dentry** %12, align 8
  %68 = icmp eq %struct.dentry* %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load %struct.dentry*, %struct.dentry** %11, align 8
  %71 = call i64 @d_really_is_positive(%struct.dentry* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %65, %56
  br label %108

74:                                               ; preds = %69
  %75 = load %struct.dentry*, %struct.dentry** %7, align 8
  %76 = call i32 @take_dentry_name_snapshot(%struct.name_snapshot* %13, %struct.dentry* %75)
  %77 = load %struct.dentry*, %struct.dentry** %6, align 8
  %78 = call i32 @d_inode(%struct.dentry* %77)
  %79 = load %struct.dentry*, %struct.dentry** %7, align 8
  %80 = load %struct.dentry*, %struct.dentry** %8, align 8
  %81 = call i32 @d_inode(%struct.dentry* %80)
  %82 = load %struct.dentry*, %struct.dentry** %11, align 8
  %83 = call i32 @simple_rename(i32 %78, %struct.dentry* %79, i32 %81, %struct.dentry* %82, i32 0)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %74
  %87 = call i32 @release_dentry_name_snapshot(%struct.name_snapshot* %13)
  br label %108

88:                                               ; preds = %74
  %89 = load %struct.dentry*, %struct.dentry** %7, align 8
  %90 = load %struct.dentry*, %struct.dentry** %11, align 8
  %91 = call i32 @d_move(%struct.dentry* %89, %struct.dentry* %90)
  %92 = load %struct.dentry*, %struct.dentry** %6, align 8
  %93 = call i32 @d_inode(%struct.dentry* %92)
  %94 = load %struct.dentry*, %struct.dentry** %8, align 8
  %95 = call i32 @d_inode(%struct.dentry* %94)
  %96 = getelementptr inbounds %struct.name_snapshot, %struct.name_snapshot* %13, i32 0, i32 0
  %97 = load %struct.dentry*, %struct.dentry** %7, align 8
  %98 = call i32 @d_is_dir(%struct.dentry* %97)
  %99 = load %struct.dentry*, %struct.dentry** %7, align 8
  %100 = call i32 @fsnotify_move(i32 %93, i32 %95, i32* %96, i32 %98, i32* null, %struct.dentry* %99)
  %101 = call i32 @release_dentry_name_snapshot(%struct.name_snapshot* %13)
  %102 = load %struct.dentry*, %struct.dentry** %8, align 8
  %103 = load %struct.dentry*, %struct.dentry** %6, align 8
  %104 = call i32 @unlock_rename(%struct.dentry* %102, %struct.dentry* %103)
  %105 = load %struct.dentry*, %struct.dentry** %11, align 8
  %106 = call i32 @dput(%struct.dentry* %105)
  %107 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %107, %struct.dentry** %5, align 8
  br label %131

108:                                              ; preds = %86, %73, %55, %42
  %109 = load %struct.dentry*, %struct.dentry** %11, align 8
  %110 = icmp ne %struct.dentry* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load %struct.dentry*, %struct.dentry** %11, align 8
  %113 = call i64 @IS_ERR(%struct.dentry* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load %struct.dentry*, %struct.dentry** %11, align 8
  %117 = call i32 @dput(%struct.dentry* %116)
  br label %118

118:                                              ; preds = %115, %111, %108
  %119 = load %struct.dentry*, %struct.dentry** %8, align 8
  %120 = load %struct.dentry*, %struct.dentry** %6, align 8
  %121 = call i32 @unlock_rename(%struct.dentry* %119, %struct.dentry* %120)
  %122 = load %struct.dentry*, %struct.dentry** %11, align 8
  %123 = call i64 @IS_ERR(%struct.dentry* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %126, %struct.dentry** %5, align 8
  br label %131

127:                                              ; preds = %118
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  %130 = call %struct.dentry* @ERR_PTR(i32 %129)
  store %struct.dentry* %130, %struct.dentry** %5, align 8
  br label %131

131:                                              ; preds = %127, %125, %88, %29, %23, %17
  %132 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %132
}

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dentry*) #1

declare dso_local %struct.dentry* @lock_rename(%struct.dentry*, %struct.dentry*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i64 @d_mountpoint(%struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i32 @take_dentry_name_snapshot(%struct.name_snapshot*, %struct.dentry*) #1

declare dso_local i32 @simple_rename(i32, %struct.dentry*, i32, %struct.dentry*, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @release_dentry_name_snapshot(%struct.name_snapshot*) #1

declare dso_local i32 @d_move(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @fsnotify_move(i32, i32, i32*, i32, i32*, %struct.dentry*) #1

declare dso_local i32 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @unlock_rename(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
