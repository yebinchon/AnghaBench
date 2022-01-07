; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_autofs_clear_leaf_automount_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_autofs_clear_leaf_automount_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.list_head, %struct.dentry* }
%struct.list_head = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @autofs_clear_leaf_automount_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autofs_clear_leaf_automount_flags(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %5 = load %struct.dentry*, %struct.dentry** %2, align 8
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i32 0, i32 2
  %7 = load %struct.dentry*, %struct.dentry** %6, align 8
  %8 = call i64 @IS_ROOT(%struct.dentry* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %42

11:                                               ; preds = %1
  %12 = load %struct.dentry*, %struct.dentry** %2, align 8
  %13 = call i32 @managed_dentry_clear_managed(%struct.dentry* %12)
  %14 = load %struct.dentry*, %struct.dentry** %2, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 2
  %16 = load %struct.dentry*, %struct.dentry** %15, align 8
  store %struct.dentry* %16, %struct.dentry** %4, align 8
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 2
  %19 = load %struct.dentry*, %struct.dentry** %18, align 8
  %20 = call i64 @IS_ROOT(%struct.dentry* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %42

23:                                               ; preds = %11
  %24 = load %struct.dentry*, %struct.dentry** %2, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 1
  store %struct.list_head* %25, %struct.list_head** %3, align 8
  %26 = load %struct.list_head*, %struct.list_head** %3, align 8
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = icmp eq i32* %28, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load %struct.list_head*, %struct.list_head** %3, align 8
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.dentry*, %struct.dentry** %4, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = icmp eq i32* %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.dentry*, %struct.dentry** %4, align 8
  %41 = call i32 @managed_dentry_set_managed(%struct.dentry* %40)
  br label %42

42:                                               ; preds = %10, %22, %39, %32, %23
  ret void
}

declare dso_local i64 @IS_ROOT(%struct.dentry*) #1

declare dso_local i32 @managed_dentry_clear_managed(%struct.dentry*) #1

declare dso_local i32 @managed_dentry_set_managed(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
