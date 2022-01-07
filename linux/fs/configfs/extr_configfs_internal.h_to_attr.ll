; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_configfs_internal.h_to_attr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_configfs_internal.h_to_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configfs_attribute = type { i32 }
%struct.dentry = type { %struct.configfs_dirent* }
%struct.configfs_dirent = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.configfs_attribute* (%struct.dentry*)* @to_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.configfs_attribute* @to_attr(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.configfs_dirent*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %4 = load %struct.dentry*, %struct.dentry** %2, align 8
  %5 = getelementptr inbounds %struct.dentry, %struct.dentry* %4, i32 0, i32 0
  %6 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  store %struct.configfs_dirent* %6, %struct.configfs_dirent** %3, align 8
  %7 = load %struct.configfs_dirent*, %struct.configfs_dirent** %3, align 8
  %8 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.configfs_attribute*
  ret %struct.configfs_attribute* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
