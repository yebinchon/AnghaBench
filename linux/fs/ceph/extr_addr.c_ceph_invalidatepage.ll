; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_invalidatepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_invalidatepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ceph_inode_info = type { i32 }
%struct.ceph_snap_context = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%p invalidatepage %p idx %lu partial dirty page %u~%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"%p invalidatepage %p idx %lu full dirty page\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32, i32)* @ceph_invalidatepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_invalidatepage(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ceph_inode_info*, align 8
  %9 = alloca %struct.ceph_snap_context*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = call %struct.ceph_snap_context* @page_snap_context(%struct.page* %10)
  store %struct.ceph_snap_context* %11, %struct.ceph_snap_context** %9, align 8
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = getelementptr inbounds %struct.page, %struct.page* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %7, align 8
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %17)
  store %struct.ceph_inode_info* %18, %struct.ceph_inode_info** %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21, %3
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = getelementptr inbounds %struct.page, %struct.page* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (i8*, %struct.inode*, %struct.page*, i32, ...) @dout(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.inode* %26, %struct.page* %27, i32 %30, i32 %31, i32 %32)
  br label %66

34:                                               ; preds = %21
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = call i32 @ceph_invalidate_fscache_page(%struct.inode* %35, %struct.page* %36)
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = call i32 @PageLocked(%struct.page* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  %44 = load %struct.page*, %struct.page** %4, align 8
  %45 = call i32 @PagePrivate(%struct.page* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %34
  br label %66

48:                                               ; preds = %34
  %49 = load %struct.page*, %struct.page** %4, align 8
  %50 = call i32 @ClearPageChecked(%struct.page* %49)
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = load %struct.page*, %struct.page** %4, align 8
  %53 = load %struct.page*, %struct.page** %4, align 8
  %54 = getelementptr inbounds %struct.page, %struct.page* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, %struct.inode*, %struct.page*, i32, ...) @dout(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %51, %struct.page* %52, i32 %55)
  %57 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %8, align 8
  %58 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %9, align 8
  %59 = call i32 @ceph_put_wrbuffer_cap_refs(%struct.ceph_inode_info* %57, i32 1, %struct.ceph_snap_context* %58)
  %60 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %9, align 8
  %61 = call i32 @ceph_put_snap_context(%struct.ceph_snap_context* %60)
  %62 = load %struct.page*, %struct.page** %4, align 8
  %63 = getelementptr inbounds %struct.page, %struct.page* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.page*, %struct.page** %4, align 8
  %65 = call i32 @ClearPagePrivate(%struct.page* %64)
  br label %66

66:                                               ; preds = %48, %47, %25
  ret void
}

declare dso_local %struct.ceph_snap_context* @page_snap_context(%struct.page*) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, %struct.page*, i32, ...) #1

declare dso_local i32 @ceph_invalidate_fscache_page(%struct.inode*, %struct.page*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i32 @ceph_put_wrbuffer_cap_refs(%struct.ceph_inode_info*, i32, %struct.ceph_snap_context*) #1

declare dso_local i32 @ceph_put_snap_context(%struct.ceph_snap_context*) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
