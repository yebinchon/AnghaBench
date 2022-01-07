; ModuleID = '/home/carl/AnghaBench/linux/fs/cachefiles/extr_namei.c_cachefiles_mark_object_inactive.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cachefiles/extr_namei.c_cachefiles_mark_object_inactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_cache = type { i32, i32, i32, i32 }
%struct.cachefiles_object = type { i32, i32, %struct.dentry* }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@CACHEFILES_OBJECT_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cachefiles_mark_object_inactive(%struct.cachefiles_cache* %0, %struct.cachefiles_object* %1, i32 %2) #0 {
  %4 = alloca %struct.cachefiles_cache*, align 8
  %5 = alloca %struct.cachefiles_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %4, align 8
  store %struct.cachefiles_object* %1, %struct.cachefiles_object** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.cachefiles_object*, %struct.cachefiles_object** %5, align 8
  %10 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %9, i32 0, i32 2
  %11 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %11, %struct.dentry** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %7, align 8
  %13 = call %struct.inode* @d_backing_inode(%struct.dentry* %12)
  store %struct.inode* %13, %struct.inode** %8, align 8
  %14 = load %struct.cachefiles_object*, %struct.cachefiles_object** %5, align 8
  %15 = load %struct.dentry*, %struct.dentry** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = call i32 @trace_cachefiles_mark_inactive(%struct.cachefiles_object* %14, %struct.dentry* %15, %struct.inode* %16)
  %18 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %19 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %18, i32 0, i32 2
  %20 = call i32 @write_lock(i32* %19)
  %21 = load %struct.cachefiles_object*, %struct.cachefiles_object** %5, align 8
  %22 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %21, i32 0, i32 1
  %23 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %24 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %23, i32 0, i32 3
  %25 = call i32 @rb_erase(i32* %22, i32* %24)
  %26 = load i32, i32* @CACHEFILES_OBJECT_ACTIVE, align 4
  %27 = load %struct.cachefiles_object*, %struct.cachefiles_object** %5, align 8
  %28 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %27, i32 0, i32 0
  %29 = call i32 @clear_bit(i32 %26, i32* %28)
  %30 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %31 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %30, i32 0, i32 2
  %32 = call i32 @write_unlock(i32* %31)
  %33 = load %struct.cachefiles_object*, %struct.cachefiles_object** %5, align 8
  %34 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %33, i32 0, i32 0
  %35 = load i32, i32* @CACHEFILES_OBJECT_ACTIVE, align 4
  %36 = call i32 @wake_up_bit(i32* %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %39 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %38, i32 0, i32 1
  %40 = call i32 @atomic_long_add(i32 %37, i32* %39)
  %41 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %42 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %41, i32 0, i32 0
  %43 = call i64 @atomic_inc_return(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %3
  %46 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %47 = call i32 @cachefiles_state_changed(%struct.cachefiles_cache* %46)
  br label %48

48:                                               ; preds = %45, %3
  ret void
}

declare dso_local %struct.inode* @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @trace_cachefiles_mark_inactive(%struct.cachefiles_object*, %struct.dentry*, %struct.inode*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @atomic_long_add(i32, i32*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @cachefiles_state_changed(%struct.cachefiles_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
