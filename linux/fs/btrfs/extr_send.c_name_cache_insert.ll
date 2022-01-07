; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_name_cache_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_name_cache_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32, %struct.name_cache_entry, i32 }
%struct.name_cache_entry = type { i32, i32, i64 }
%struct.list_head = type { i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, %struct.name_cache_entry*)* @name_cache_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @name_cache_insert(%struct.send_ctx* %0, %struct.name_cache_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.send_ctx*, align 8
  %5 = alloca %struct.name_cache_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head*, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %4, align 8
  store %struct.name_cache_entry* %1, %struct.name_cache_entry** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %8, i32 0, i32 2
  %10 = load %struct.name_cache_entry*, %struct.name_cache_entry** %5, align 8
  %11 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = call %struct.name_cache_entry* @radix_tree_lookup(i32* %9, i64 %12)
  %14 = bitcast %struct.name_cache_entry* %13 to %struct.list_head*
  store %struct.list_head* %14, %struct.list_head** %7, align 8
  %15 = load %struct.list_head*, %struct.list_head** %7, align 8
  %16 = icmp ne %struct.list_head* %15, null
  br i1 %16, label %50, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.name_cache_entry* @kmalloc(i32 16, i32 %18)
  %20 = bitcast %struct.name_cache_entry* %19 to %struct.list_head*
  store %struct.list_head* %20, %struct.list_head** %7, align 8
  %21 = load %struct.list_head*, %struct.list_head** %7, align 8
  %22 = icmp ne %struct.list_head* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load %struct.name_cache_entry*, %struct.name_cache_entry** %5, align 8
  %25 = call i32 @kfree(%struct.name_cache_entry* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %66

28:                                               ; preds = %17
  %29 = load %struct.list_head*, %struct.list_head** %7, align 8
  %30 = bitcast %struct.list_head* %29 to %struct.name_cache_entry*
  %31 = call i32 @INIT_LIST_HEAD(%struct.name_cache_entry* %30)
  %32 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %32, i32 0, i32 2
  %34 = load %struct.name_cache_entry*, %struct.name_cache_entry** %5, align 8
  %35 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.list_head*, %struct.list_head** %7, align 8
  %38 = bitcast %struct.list_head* %37 to %struct.name_cache_entry*
  %39 = call i32 @radix_tree_insert(i32* %33, i64 %36, %struct.name_cache_entry* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %28
  %43 = load %struct.list_head*, %struct.list_head** %7, align 8
  %44 = bitcast %struct.list_head* %43 to %struct.name_cache_entry*
  %45 = call i32 @kfree(%struct.name_cache_entry* %44)
  %46 = load %struct.name_cache_entry*, %struct.name_cache_entry** %5, align 8
  %47 = call i32 @kfree(%struct.name_cache_entry* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %66

49:                                               ; preds = %28
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.name_cache_entry*, %struct.name_cache_entry** %5, align 8
  %52 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %51, i32 0, i32 1
  %53 = load %struct.list_head*, %struct.list_head** %7, align 8
  %54 = bitcast %struct.list_head* %53 to %struct.name_cache_entry*
  %55 = call i32 @list_add_tail(i32* %52, %struct.name_cache_entry* %54)
  %56 = load %struct.name_cache_entry*, %struct.name_cache_entry** %5, align 8
  %57 = getelementptr inbounds %struct.name_cache_entry, %struct.name_cache_entry* %56, i32 0, i32 0
  %58 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %58, i32 0, i32 1
  %60 = call i32 @list_add_tail(i32* %57, %struct.name_cache_entry* %59)
  %61 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %50, %42, %23
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.name_cache_entry* @radix_tree_lookup(i32*, i64) #1

declare dso_local %struct.name_cache_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.name_cache_entry*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.name_cache_entry*) #1

declare dso_local i32 @radix_tree_insert(i32*, i64, %struct.name_cache_entry*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.name_cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
