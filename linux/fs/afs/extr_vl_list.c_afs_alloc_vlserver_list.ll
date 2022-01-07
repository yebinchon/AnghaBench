; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_vl_list.c_afs_alloc_vlserver_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_vl_list.c_afs_alloc_vlserver_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vlserver_list = type { i32, i32 }

@servers = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.afs_vlserver_list* @afs_alloc_vlserver_list(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_vlserver_list*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %3, align 8
  %5 = load i32, i32* @servers, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @struct_size(%struct.afs_vlserver_list* %4, i32 %5, i32 %6)
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.afs_vlserver_list* @kzalloc(i32 %7, i32 %8)
  store %struct.afs_vlserver_list* %9, %struct.afs_vlserver_list** %3, align 8
  %10 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %3, align 8
  %11 = icmp ne %struct.afs_vlserver_list* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %3, align 8
  %14 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %13, i32 0, i32 1
  %15 = call i32 @atomic_set(i32* %14, i32 1)
  %16 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %3, align 8
  %17 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %16, i32 0, i32 0
  %18 = call i32 @rwlock_init(i32* %17)
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %3, align 8
  ret %struct.afs_vlserver_list* %20
}

declare dso_local %struct.afs_vlserver_list* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.afs_vlserver_list*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
