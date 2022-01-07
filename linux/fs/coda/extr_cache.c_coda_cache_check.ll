; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_cache.c_coda_cache_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_cache.c_coda_cache_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.coda_inode_info = type { i32, i64, i32, i32 }

@permission_epoch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_cache_check(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.coda_inode_info*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.coda_inode_info* @ITOC(%struct.inode* %7)
  store %struct.coda_inode_info* %8, %struct.coda_inode_info** %5, align 8
  %9 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %10 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %9, i32 0, i32 2
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %14 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %12, %15
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %21 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (...) @current_fsuid()
  %24 = call i64 @uid_eq(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %28 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @atomic_read(i32* @permission_epoch)
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %26, %19, %2
  %33 = phi i1 [ false, %19 ], [ false, %2 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %36 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %35, i32 0, i32 2
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local %struct.coda_inode_info* @ITOC(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
