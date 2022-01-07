; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_internal.h_afs_vnode_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_internal.h_afs_vnode_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_cookie = type { i32 }
%struct.afs_vnode = type { %struct.fscache_cookie* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fscache_cookie* (%struct.afs_vnode*)* @afs_vnode_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fscache_cookie* @afs_vnode_cache(%struct.afs_vnode* %0) #0 {
  %2 = alloca %struct.afs_vnode*, align 8
  store %struct.afs_vnode* %0, %struct.afs_vnode** %2, align 8
  ret %struct.fscache_cookie* null
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
