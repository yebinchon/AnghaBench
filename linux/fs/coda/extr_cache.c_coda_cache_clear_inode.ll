; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_cache.c_coda_cache_clear_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_cache.c_coda_cache_clear_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.coda_inode_info = type { i32, i64 }

@permission_epoch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coda_cache_clear_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.coda_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.coda_inode_info* @ITOC(%struct.inode* %4)
  store %struct.coda_inode_info* %5, %struct.coda_inode_info** %3, align 8
  %6 = load %struct.coda_inode_info*, %struct.coda_inode_info** %3, align 8
  %7 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = call i64 @atomic_read(i32* @permission_epoch)
  %10 = sub nsw i64 %9, 1
  %11 = load %struct.coda_inode_info*, %struct.coda_inode_info** %3, align 8
  %12 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %11, i32 0, i32 1
  store i64 %10, i64* %12, align 8
  %13 = load %struct.coda_inode_info*, %struct.coda_inode_info** %3, align 8
  %14 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %13, i32 0, i32 0
  %15 = call i32 @spin_unlock(i32* %14)
  ret void
}

declare dso_local %struct.coda_inode_info* @ITOC(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
