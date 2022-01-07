; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_file.c_afs_releasepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_file.c_afs_releasepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.afs_vnode = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"{{%llx:%llu}[%lu],%lx},%x\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rel\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" = T\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @afs_releasepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_releasepage(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_vnode*, align 8
  %6 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = getelementptr inbounds %struct.page, %struct.page* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.afs_vnode* @AFS_FS_I(i32 %11)
  store %struct.afs_vnode* %12, %struct.afs_vnode** %5, align 8
  %13 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %14 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %18 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = getelementptr inbounds %struct.page, %struct.page* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = getelementptr inbounds %struct.page, %struct.page* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @_enter(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20, i32 %23, i32 %26, i32 %27)
  %29 = load %struct.page*, %struct.page** %3, align 8
  %30 = call i64 @PagePrivate(%struct.page* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %2
  %33 = load %struct.page*, %struct.page** %3, align 8
  %34 = call i64 @page_private(%struct.page* %33)
  store i64 %34, i64* %6, align 8
  %35 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %36 = call i32 @tracepoint_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.page*, %struct.page** %3, align 8
  %38 = getelementptr inbounds %struct.page, %struct.page* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @trace_afs_page_dirty(%struct.afs_vnode* %35, i32 %36, i32 %39, i64 %40)
  %42 = load %struct.page*, %struct.page** %3, align 8
  %43 = call i32 @set_page_private(%struct.page* %42, i32 0)
  %44 = load %struct.page*, %struct.page** %3, align 8
  %45 = call i32 @ClearPagePrivate(%struct.page* %44)
  br label %46

46:                                               ; preds = %32, %2
  %47 = call i32 @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  ret i32 1
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(i32) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @PagePrivate(%struct.page*) #1

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local i32 @trace_afs_page_dirty(%struct.afs_vnode*, i32, i32, i64) #1

declare dso_local i32 @tracepoint_string(i8*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
