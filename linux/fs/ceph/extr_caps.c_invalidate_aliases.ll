; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_invalidate_aliases.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_invalidate_aliases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"invalidate_aliases inode %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @invalidate_aliases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invalidate_aliases(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  store %struct.dentry* null, %struct.dentry** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call i32 @dout(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.inode* %5)
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = call i32 @d_prune_aliases(%struct.inode* %7)
  br label %9

9:                                                ; preds = %28, %1
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = call %struct.dentry* @d_find_alias(%struct.inode* %10)
  store %struct.dentry* %11, %struct.dentry** %3, align 8
  %12 = icmp ne %struct.dentry* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = icmp eq %struct.dentry* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.dentry*, %struct.dentry** %3, align 8
  %19 = call i32 @dput(%struct.dentry* %18)
  br label %30

20:                                               ; preds = %13
  %21 = load %struct.dentry*, %struct.dentry** %3, align 8
  %22 = call i32 @d_invalidate(%struct.dentry* %21)
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = icmp ne %struct.dentry* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = call i32 @dput(%struct.dentry* %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.dentry*, %struct.dentry** %3, align 8
  store %struct.dentry* %29, %struct.dentry** %4, align 8
  br label %9

30:                                               ; preds = %17, %9
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = icmp ne %struct.dentry* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.dentry*, %struct.dentry** %4, align 8
  %35 = call i32 @dput(%struct.dentry* %34)
  br label %36

36:                                               ; preds = %33, %30
  ret void
}

declare dso_local i32 @dout(i8*, %struct.inode*) #1

declare dso_local i32 @d_prune_aliases(%struct.inode*) #1

declare dso_local %struct.dentry* @d_find_alias(%struct.inode*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_invalidate(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
