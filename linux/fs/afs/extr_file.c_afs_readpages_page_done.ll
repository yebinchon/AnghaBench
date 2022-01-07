; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_file.c_afs_readpages_page_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_file.c_afs_readpages_page_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_read = type { i64, %struct.page**, %struct.afs_vnode* }
%struct.page = type { i32 }
%struct.afs_vnode = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.afs_read*)* @afs_readpages_page_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afs_readpages_page_done(%struct.afs_read* %0) #0 {
  %2 = alloca %struct.afs_read*, align 8
  %3 = alloca %struct.page*, align 8
  store %struct.afs_read* %0, %struct.afs_read** %2, align 8
  %4 = load %struct.afs_read*, %struct.afs_read** %2, align 8
  %5 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %4, i32 0, i32 1
  %6 = load %struct.page**, %struct.page*** %5, align 8
  %7 = load %struct.afs_read*, %struct.afs_read** %2, align 8
  %8 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.page*, %struct.page** %6, i64 %9
  %11 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %11, %struct.page** %3, align 8
  %12 = load %struct.afs_read*, %struct.afs_read** %2, align 8
  %13 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %12, i32 0, i32 1
  %14 = load %struct.page**, %struct.page*** %13, align 8
  %15 = load %struct.afs_read*, %struct.afs_read** %2, align 8
  %16 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.page*, %struct.page** %14, i64 %17
  store %struct.page* null, %struct.page** %18, align 8
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i32 @SetPageUptodate(%struct.page* %19)
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = call i32 @unlock_page(%struct.page* %21)
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call i32 @put_page(%struct.page* %23)
  ret void
}

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
