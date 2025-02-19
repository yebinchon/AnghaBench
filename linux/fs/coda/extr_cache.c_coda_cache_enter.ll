; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_cache.c_coda_cache_enter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_cache.c_coda_cache_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.coda_inode_info = type { i32, i32, i32, i32 }

@permission_epoch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coda_cache_enter(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.coda_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.coda_inode_info* @ITOC(%struct.inode* %6)
  store %struct.coda_inode_info* %7, %struct.coda_inode_info** %5, align 8
  %8 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %9 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %8, i32 0, i32 1
  %10 = call i32 @spin_lock(i32* %9)
  %11 = call i32 @atomic_read(i32* @permission_epoch)
  %12 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %13 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %15 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (...) @current_fsuid()
  %18 = call i32 @uid_eq(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = call i32 (...) @current_fsuid()
  %22 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %23 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %26 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %33

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %30 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %20
  %34 = load %struct.coda_inode_info*, %struct.coda_inode_info** %5, align 8
  %35 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %34, i32 0, i32 1
  %36 = call i32 @spin_unlock(i32* %35)
  ret void
}

declare dso_local %struct.coda_inode_info* @ITOC(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
