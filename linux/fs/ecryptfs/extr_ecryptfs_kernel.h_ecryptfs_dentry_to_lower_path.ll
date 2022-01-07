; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_ecryptfs_kernel.h_ecryptfs_dentry_to_lower_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_ecryptfs_kernel.h_ecryptfs_dentry_to_lower_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.dentry = type { i64 }
%struct.ecryptfs_dentry_info = type { %struct.path }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.path* (%struct.dentry*)* @ecryptfs_dentry_to_lower_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.path* @ecryptfs_dentry_to_lower_path(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %3 = load %struct.dentry*, %struct.dentry** %2, align 8
  %4 = getelementptr inbounds %struct.dentry, %struct.dentry* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to %struct.ecryptfs_dentry_info*
  %7 = getelementptr inbounds %struct.ecryptfs_dentry_info, %struct.ecryptfs_dentry_info* %6, i32 0, i32 0
  ret %struct.path* %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
