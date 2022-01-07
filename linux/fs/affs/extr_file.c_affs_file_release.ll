; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_file.c_affs_file_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_file.c_affs_file_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.file = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"release(%lu, %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @affs_file_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @affs_file_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = call i32 @atomic_read(i32* %10)
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %11)
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i64 @atomic_dec_and_test(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call i32 @inode_lock(%struct.inode* %19)
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %23, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = call i32 @affs_truncate(%struct.inode* %30)
  br label %32

32:                                               ; preds = %29, %18
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call i32 @affs_free_prealloc(%struct.inode* %33)
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = call i32 @inode_unlock(%struct.inode* %35)
  br label %37

37:                                               ; preds = %32, %2
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_2__* @AFFS_I(%struct.inode*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @affs_truncate(%struct.inode*) #1

declare dso_local i32 @affs_free_prealloc(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
