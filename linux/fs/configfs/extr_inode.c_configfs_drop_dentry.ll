; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_inode.c_configfs_drop_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_inode.c_configfs_drop_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configfs_dirent = type { %struct.dentry* }
%struct.dentry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @configfs_drop_dentry(%struct.configfs_dirent* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.configfs_dirent*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.configfs_dirent* %0, %struct.configfs_dirent** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %6 = load %struct.configfs_dirent*, %struct.configfs_dirent** %3, align 8
  %7 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %6, i32 0, i32 0
  %8 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %8, %struct.dentry** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %5, align 8
  %10 = icmp ne %struct.dentry* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = call i64 @simple_positive(%struct.dentry* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %11
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = call i32 @dget_dlock(%struct.dentry* %19)
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = call i32 @__d_drop(%struct.dentry* %21)
  %23 = load %struct.dentry*, %struct.dentry** %5, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = call i32 @d_inode(%struct.dentry* %26)
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = call i32 @simple_unlink(i32 %27, %struct.dentry* %28)
  br label %34

30:                                               ; preds = %11
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  br label %34

34:                                               ; preds = %30, %18
  br label %35

35:                                               ; preds = %34, %2
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @simple_positive(%struct.dentry*) #1

declare dso_local i32 @dget_dlock(%struct.dentry*) #1

declare dso_local i32 @__d_drop(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @simple_unlink(i32, %struct.dentry*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
