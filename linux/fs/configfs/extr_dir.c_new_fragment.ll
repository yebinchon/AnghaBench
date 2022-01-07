; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_new_fragment.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_new_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configfs_fragment = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.configfs_fragment* ()* @new_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.configfs_fragment* @new_fragment() #0 {
  %1 = alloca %struct.configfs_fragment*, align 8
  %2 = load i32, i32* @GFP_KERNEL, align 4
  %3 = call %struct.configfs_fragment* @kmalloc(i32 12, i32 %2)
  store %struct.configfs_fragment* %3, %struct.configfs_fragment** %1, align 8
  %4 = load %struct.configfs_fragment*, %struct.configfs_fragment** %1, align 8
  %5 = icmp ne %struct.configfs_fragment* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %0
  %7 = load %struct.configfs_fragment*, %struct.configfs_fragment** %1, align 8
  %8 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %7, i32 0, i32 2
  %9 = call i32 @atomic_set(i32* %8, i32 1)
  %10 = load %struct.configfs_fragment*, %struct.configfs_fragment** %1, align 8
  %11 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %10, i32 0, i32 1
  %12 = call i32 @init_rwsem(i32* %11)
  %13 = load %struct.configfs_fragment*, %struct.configfs_fragment** %1, align 8
  %14 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %6, %0
  %16 = load %struct.configfs_fragment*, %struct.configfs_fragment** %1, align 8
  ret %struct.configfs_fragment* %16
}

declare dso_local %struct.configfs_fragment* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
