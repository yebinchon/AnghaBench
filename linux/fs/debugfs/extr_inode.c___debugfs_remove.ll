; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c___debugfs_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c___debugfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.dentry*)* @__debugfs_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__debugfs_remove(%struct.dentry* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.dentry*, %struct.dentry** %3, align 8
  %7 = call i64 @simple_positive(%struct.dentry* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %53

9:                                                ; preds = %2
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = call i32 @dget(%struct.dentry* %10)
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = call i64 @d_is_dir(%struct.dentry* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = call i32 @d_inode(%struct.dentry* %16)
  %18 = load %struct.dentry*, %struct.dentry** %3, align 8
  %19 = call i32 @simple_rmdir(i32 %17, %struct.dentry* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = call i32 @d_inode(%struct.dentry* %23)
  %25 = load %struct.dentry*, %struct.dentry** %3, align 8
  %26 = call i32 @fsnotify_rmdir(i32 %24, %struct.dentry* %25)
  br label %27

27:                                               ; preds = %22, %15
  br label %37

28:                                               ; preds = %9
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = call i32 @d_inode(%struct.dentry* %29)
  %31 = load %struct.dentry*, %struct.dentry** %3, align 8
  %32 = call i32 @simple_unlink(i32 %30, %struct.dentry* %31)
  %33 = load %struct.dentry*, %struct.dentry** %4, align 8
  %34 = call i32 @d_inode(%struct.dentry* %33)
  %35 = load %struct.dentry*, %struct.dentry** %3, align 8
  %36 = call i32 @fsnotify_unlink(i32 %34, %struct.dentry* %35)
  br label %37

37:                                               ; preds = %28, %27
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load %struct.dentry*, %struct.dentry** %3, align 8
  %42 = call i32 @d_delete(%struct.dentry* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.dentry*, %struct.dentry** %3, align 8
  %45 = call i64 @d_is_reg(%struct.dentry* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.dentry*, %struct.dentry** %3, align 8
  %49 = call i32 @__debugfs_file_removed(%struct.dentry* %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = load %struct.dentry*, %struct.dentry** %3, align 8
  %52 = call i32 @dput(%struct.dentry* %51)
  br label %53

53:                                               ; preds = %50, %2
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @simple_positive(%struct.dentry*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i64 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @simple_rmdir(i32, %struct.dentry*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @fsnotify_rmdir(i32, %struct.dentry*) #1

declare dso_local i32 @simple_unlink(i32, %struct.dentry*) #1

declare dso_local i32 @fsnotify_unlink(i32, %struct.dentry*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

declare dso_local i64 @d_is_reg(%struct.dentry*) #1

declare dso_local i32 @__debugfs_file_removed(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
