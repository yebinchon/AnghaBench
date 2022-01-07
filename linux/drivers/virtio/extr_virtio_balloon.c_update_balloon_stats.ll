; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_update_balloon_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_update_balloon_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_balloon = type { i32 }
%struct.sysinfo = type { i64, i64 }

@NR_VM_EVENT_ITEMS = common dso_local global i32 0, align 4
@NR_FILE_PAGES = common dso_local global i32 0, align 4
@VIRTIO_BALLOON_S_MEMFREE = common dso_local global i32 0, align 4
@VIRTIO_BALLOON_S_MEMTOT = common dso_local global i32 0, align 4
@VIRTIO_BALLOON_S_AVAIL = common dso_local global i32 0, align 4
@VIRTIO_BALLOON_S_CACHES = common dso_local global i32 0, align 4
@HTLB_BUDDY_PGALLOC = common dso_local global i64 0, align 8
@HTLB_BUDDY_PGALLOC_FAIL = common dso_local global i64 0, align 8
@PGFAULT = common dso_local global i64 0, align 8
@PGMAJFAULT = common dso_local global i64 0, align 8
@PSWPIN = common dso_local global i64 0, align 8
@PSWPOUT = common dso_local global i64 0, align 8
@VIRTIO_BALLOON_S_HTLB_PGALLOC = common dso_local global i32 0, align 4
@VIRTIO_BALLOON_S_HTLB_PGFAIL = common dso_local global i32 0, align 4
@VIRTIO_BALLOON_S_MAJFLT = common dso_local global i32 0, align 4
@VIRTIO_BALLOON_S_MINFLT = common dso_local global i32 0, align 4
@VIRTIO_BALLOON_S_SWAP_IN = common dso_local global i32 0, align 4
@VIRTIO_BALLOON_S_SWAP_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_balloon*)* @update_balloon_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_balloon_stats(%struct.virtio_balloon* %0) #0 {
  %2 = alloca %struct.virtio_balloon*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sysinfo, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.virtio_balloon* %0, %struct.virtio_balloon** %2, align 8
  %9 = load i32, i32* @NR_VM_EVENT_ITEMS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i64, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %13 = call i32 @all_vm_events(i64* %12)
  %14 = call i32 @si_meminfo(%struct.sysinfo* %5)
  %15 = call i64 (...) @si_mem_available()
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* @NR_FILE_PAGES, align 4
  %17 = call i64 @global_node_page_state(i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %19 = load i32, i32* %6, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @VIRTIO_BALLOON_S_MEMFREE, align 4
  %22 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @pages_to_bytes(i64 %23)
  %25 = call i32 @update_stat(%struct.virtio_balloon* %18, i32 %19, i32 %21, i64 %24)
  %26 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %27 = load i32, i32* %6, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @VIRTIO_BALLOON_S_MEMTOT, align 4
  %30 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %5, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @pages_to_bytes(i64 %31)
  %33 = call i32 @update_stat(%struct.virtio_balloon* %26, i32 %27, i32 %29, i64 %32)
  %34 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @VIRTIO_BALLOON_S_AVAIL, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @pages_to_bytes(i64 %38)
  %40 = call i32 @update_stat(%struct.virtio_balloon* %34, i32 %35, i32 %37, i64 %39)
  %41 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @VIRTIO_BALLOON_S_CACHES, align 4
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @pages_to_bytes(i64 %45)
  %47 = call i32 @update_stat(%struct.virtio_balloon* %41, i32 %42, i32 %44, i64 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @all_vm_events(i64*) #2

declare dso_local i32 @si_meminfo(%struct.sysinfo*) #2

declare dso_local i64 @si_mem_available(...) #2

declare dso_local i64 @global_node_page_state(i32) #2

declare dso_local i32 @update_stat(%struct.virtio_balloon*, i32, i32, i64) #2

declare dso_local i64 @pages_to_bytes(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
