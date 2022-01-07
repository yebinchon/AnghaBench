; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_writepage_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_writepage_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.writeback_control = type { i64 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ppw - page not up to date\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @cifs_writepage_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_writepage_locked(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.writeback_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %4, align 8
  %7 = call i32 (...) @get_xid()
  store i32 %7, i32* %6, align 4
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = call i32 @get_page(%struct.page* %8)
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call i32 @PageUptodate(%struct.page* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @FYI, align 4
  %15 = call i32 @cifs_dbg(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i32 @set_page_writeback(%struct.page* %17)
  br label %19

19:                                               ; preds = %37, %16
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call i32 @cifs_partialpagewrite(%struct.page* %20, i32 0, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @is_retryable_error(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %28 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WB_SYNC_ALL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %19

38:                                               ; preds = %32, %26
  %39 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %40 = load %struct.page*, %struct.page** %3, align 8
  %41 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %39, %struct.page* %40)
  br label %57

42:                                               ; preds = %19
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.page*, %struct.page** %3, align 8
  %47 = call i32 @SetPageError(%struct.page* %46)
  %48 = load %struct.page*, %struct.page** %3, align 8
  %49 = getelementptr inbounds %struct.page, %struct.page* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @mapping_set_error(i32 %50, i32 %51)
  br label %56

53:                                               ; preds = %42
  %54 = load %struct.page*, %struct.page** %3, align 8
  %55 = call i32 @SetPageUptodate(%struct.page* %54)
  br label %56

56:                                               ; preds = %53, %45
  br label %57

57:                                               ; preds = %56, %38
  %58 = load %struct.page*, %struct.page** %3, align 8
  %59 = call i32 @end_page_writeback(%struct.page* %58)
  %60 = load %struct.page*, %struct.page** %3, align 8
  %61 = call i32 @put_page(%struct.page* %60)
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @free_xid(i32 %62)
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @get_xid(...) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @set_page_writeback(%struct.page*) #1

declare dso_local i32 @cifs_partialpagewrite(%struct.page*, i32, i32) #1

declare dso_local i64 @is_retryable_error(i32) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i32 @mapping_set_error(i32, i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @free_xid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
