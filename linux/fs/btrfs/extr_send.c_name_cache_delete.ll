; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_name_cache_delete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_name_cache_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.name_cache_entry = type { i64, i32, i32 }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [71 x i8] c"name_cache_delete lookup failed ino %llu cache size %d, leaking memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.send_ctx*, %struct.name_cache_entry*)* @name_cache_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @name_cache_delete(%struct.send_ctx* %0, %struct.name_cache_entry* %1) #0 {
  %3 = alloca %struct.send_ctx*, align 8
  %4 = alloca %struct.name_cache_entry*, align 8
  %5 = alloca %struct.list_head*, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %3, align 8
  store %struct.name_cache_entry* %1, %struct.name_cache_entry** %4, align 8
  %6 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %6, i32 0, i32 0
  %8 = load %struct.name_cache_entry*, %struct.name_cache_entry** %4, align 8
  %9 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call %struct.list_head* @radix_tree_lookup(i32* %7, i64 %10)
  store %struct.list_head* %11, %struct.list_head** %5, align 8
  %12 = load %struct.list_head*, %struct.list_head** %5, align 8
  %13 = icmp ne %struct.list_head* %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %2
  %15 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.name_cache_entry*, %struct.name_cache_entry** %4, align 8
  %21 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @btrfs_err(i32 %19, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %25)
  br label %27

27:                                               ; preds = %14, %2
  %28 = load %struct.name_cache_entry*, %struct.name_cache_entry** %4, align 8
  %29 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %28, i32 0, i32 2
  %30 = call i32 @list_del(i32* %29)
  %31 = load %struct.name_cache_entry*, %struct.name_cache_entry** %4, align 8
  %32 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %31, i32 0, i32 1
  %33 = call i32 @list_del(i32* %32)
  %34 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.list_head*, %struct.list_head** %5, align 8
  %39 = icmp ne %struct.list_head* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %27
  %41 = load %struct.list_head*, %struct.list_head** %5, align 8
  %42 = call i64 @list_empty(%struct.list_head* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %45, i32 0, i32 0
  %47 = load %struct.name_cache_entry*, %struct.name_cache_entry** %4, align 8
  %48 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @radix_tree_delete(i32* %46, i64 %49)
  %51 = load %struct.list_head*, %struct.list_head** %5, align 8
  %52 = call i32 @kfree(%struct.list_head* %51)
  br label %53

53:                                               ; preds = %44, %40, %27
  ret void
}

declare dso_local %struct.list_head* @radix_tree_lookup(i32*, i64) #1

declare dso_local i32 @btrfs_err(i32, i8*, i64, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @radix_tree_delete(i32*, i64) #1

declare dso_local i32 @kfree(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
