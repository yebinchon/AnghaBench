; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_waitq.c_autofs_getpath.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_waitq.c_autofs_getpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_sb_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_4__, %struct.dentry* }
%struct.TYPE_4__ = type { i32, i32 }

@rename_lock = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.autofs_sb_info*, %struct.dentry*, i8*)* @autofs_getpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_getpath(%struct.autofs_sb_info* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.autofs_sb_info*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.autofs_sb_info* %0, %struct.autofs_sb_info** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %15 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.dentry*, %struct.dentry** %17, align 8
  store %struct.dentry* %18, %struct.dentry** %8, align 8
  br label %19

19:                                               ; preds = %127, %59, %3
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %21 = call i32 @read_seqbegin(i32* @rename_lock)
  store i32 %21, i32* %13, align 4
  %22 = call i32 (...) @rcu_read_lock()
  %23 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %24 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %26, %struct.dentry** %9, align 8
  br label %27

27:                                               ; preds = %39, %19
  %28 = load %struct.dentry*, %struct.dentry** %9, align 8
  %29 = load %struct.dentry*, %struct.dentry** %8, align 8
  %30 = icmp ne %struct.dentry* %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.dentry*, %struct.dentry** %9, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %31
  %40 = load %struct.dentry*, %struct.dentry** %9, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 1
  %42 = load %struct.dentry*, %struct.dentry** %41, align 8
  store %struct.dentry* %42, %struct.dentry** %9, align 8
  br label %27

43:                                               ; preds = %27
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* @NAME_MAX, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %46, %43
  %52 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %53 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = call i32 (...) @rcu_read_unlock()
  %56 = load i32, i32* %13, align 4
  %57 = call i64 @read_seqretry(i32* @rename_lock, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %19

60:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %130

61:                                               ; preds = %46
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load %struct.dentry*, %struct.dentry** %6, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = sub i64 0, %74
  %76 = getelementptr inbounds i8, i8* %69, i64 %75
  store i8* %76, i8** %11, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load %struct.dentry*, %struct.dentry** %6, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dentry*, %struct.dentry** %6, align 8
  %83 = getelementptr inbounds %struct.dentry, %struct.dentry* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @strncpy(i8* %77, i32 %81, i32 %85)
  %87 = load %struct.dentry*, %struct.dentry** %6, align 8
  %88 = getelementptr inbounds %struct.dentry, %struct.dentry* %87, i32 0, i32 1
  %89 = load %struct.dentry*, %struct.dentry** %88, align 8
  store %struct.dentry* %89, %struct.dentry** %9, align 8
  br label %90

90:                                               ; preds = %115, %61
  %91 = load %struct.dentry*, %struct.dentry** %9, align 8
  %92 = load %struct.dentry*, %struct.dentry** %8, align 8
  %93 = icmp ne %struct.dentry* %91, %92
  br i1 %93, label %94, label %119

94:                                               ; preds = %90
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 -1
  store i8* %96, i8** %11, align 8
  store i8 47, i8* %96, align 1
  %97 = load %struct.dentry*, %struct.dentry** %9, align 8
  %98 = getelementptr inbounds %struct.dentry, %struct.dentry* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = sext i32 %100 to i64
  %103 = sub i64 0, %102
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  store i8* %104, i8** %11, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load %struct.dentry*, %struct.dentry** %9, align 8
  %107 = getelementptr inbounds %struct.dentry, %struct.dentry* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.dentry*, %struct.dentry** %9, align 8
  %111 = getelementptr inbounds %struct.dentry, %struct.dentry* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @strncpy(i8* %105, i32 %109, i32 %113)
  br label %115

115:                                              ; preds = %94
  %116 = load %struct.dentry*, %struct.dentry** %9, align 8
  %117 = getelementptr inbounds %struct.dentry, %struct.dentry* %116, i32 0, i32 1
  %118 = load %struct.dentry*, %struct.dentry** %117, align 8
  store %struct.dentry* %118, %struct.dentry** %9, align 8
  br label %90

119:                                              ; preds = %90
  %120 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %121 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %120, i32 0, i32 0
  %122 = call i32 @spin_unlock(i32* %121)
  %123 = call i32 (...) @rcu_read_unlock()
  %124 = load i32, i32* %13, align 4
  %125 = call i64 @read_seqretry(i32* @rename_lock, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %19

128:                                              ; preds = %119
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %60
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
