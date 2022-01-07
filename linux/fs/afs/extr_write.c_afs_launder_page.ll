; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_write.c_afs_launder_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_write.c_afs_launder_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.afs_vnode = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"{%lx}\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@AFS_PRIV_MAX = common dso_local global i64 0, align 8
@AFS_PRIV_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"launder\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"laundered\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_launder_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.afs_vnode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %2, align 8
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 1
  %11 = load %struct.address_space*, %struct.address_space** %10, align 8
  store %struct.address_space* %11, %struct.address_space** %3, align 8
  %12 = load %struct.address_space*, %struct.address_space** %3, align 8
  %13 = getelementptr inbounds %struct.address_space, %struct.address_space* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.afs_vnode* @AFS_FS_I(i32 %14)
  store %struct.afs_vnode* %15, %struct.afs_vnode** %4, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.page*, %struct.page** %2, align 8
  %17 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @_enter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.page*, %struct.page** %2, align 8
  %21 = call i64 @page_private(%struct.page* %20)
  store i64 %21, i64* %5, align 8
  %22 = load %struct.page*, %struct.page** %2, align 8
  %23 = call i64 @clear_page_dirty_for_io(%struct.page* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.page*, %struct.page** %2, align 8
  %28 = call i64 @PagePrivate(%struct.page* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @AFS_PRIV_MAX, align 8
  %33 = and i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @AFS_PRIV_SHIFT, align 8
  %37 = lshr i64 %35, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %30, %25
  %40 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %41 = call i32 @tracepoint_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.page*, %struct.page** %2, align 8
  %43 = getelementptr inbounds %struct.page, %struct.page* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @trace_afs_page_dirty(%struct.afs_vnode* %40, i32 %41, i32 %44, i64 %45)
  %47 = load %struct.address_space*, %struct.address_space** %3, align 8
  %48 = load %struct.page*, %struct.page** %2, align 8
  %49 = getelementptr inbounds %struct.page, %struct.page* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.page*, %struct.page** %2, align 8
  %52 = getelementptr inbounds %struct.page, %struct.page* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @afs_store_data(%struct.address_space* %47, i32 %50, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %39, %1
  %58 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %59 = call i32 @tracepoint_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.page*, %struct.page** %2, align 8
  %61 = getelementptr inbounds %struct.page, %struct.page* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @trace_afs_page_dirty(%struct.afs_vnode* %58, i32 %59, i32 %62, i64 %63)
  %65 = load %struct.page*, %struct.page** %2, align 8
  %66 = call i32 @set_page_private(%struct.page* %65, i32 0)
  %67 = load %struct.page*, %struct.page** %2, align 8
  %68 = call i32 @ClearPagePrivate(%struct.page* %67)
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(i32) #1

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local i64 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i64 @PagePrivate(%struct.page*) #1

declare dso_local i32 @trace_afs_page_dirty(%struct.afs_vnode*, i32, i32, i64) #1

declare dso_local i32 @tracepoint_string(i8*) #1

declare dso_local i32 @afs_store_data(%struct.address_space*, i32, i32, i32, i32) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
