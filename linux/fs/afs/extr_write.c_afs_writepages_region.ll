; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_write.c_afs_writepages_region.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_write.c_afs_writepages_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.writeback_control = type { i64, i64 }
%struct.page = type { %struct.address_space*, i32 }

@.str = private unnamed_addr constant [11 x i8] c",,%lx,%lx,\00", align 1
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"wback %lx\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@WB_SYNC_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c" = 0 [%lx]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.writeback_control*, i64, i64, i64*)* @afs_writepages_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_writepages_region(%struct.address_space* %0, %struct.writeback_control* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.writeback_control*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %7, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %16)
  br label %18

18:                                               ; preds = %113, %5
  %19 = load %struct.address_space*, %struct.address_space** %7, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %22 = call i32 @find_get_pages_range_tag(%struct.address_space* %19, i64* %9, i64 %20, i32 %21, i32 1, %struct.page** %12)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %115

26:                                               ; preds = %18
  %27 = load %struct.page*, %struct.page** %12, align 8
  %28 = getelementptr inbounds %struct.page, %struct.page* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.page*, %struct.page** %12, align 8
  %32 = call i32 @lock_page_killable(%struct.page* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.page*, %struct.page** %12, align 8
  %37 = call i32 @put_page(%struct.page* %36)
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %6, align 4
  br label %121

42:                                               ; preds = %26
  %43 = load %struct.page*, %struct.page** %12, align 8
  %44 = getelementptr inbounds %struct.page, %struct.page* %43, i32 0, i32 0
  %45 = load %struct.address_space*, %struct.address_space** %44, align 8
  %46 = load %struct.address_space*, %struct.address_space** %7, align 8
  %47 = icmp ne %struct.address_space* %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load %struct.page*, %struct.page** %12, align 8
  %50 = call i32 @PageDirty(%struct.page* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48, %42
  %53 = load %struct.page*, %struct.page** %12, align 8
  %54 = call i32 @unlock_page(%struct.page* %53)
  %55 = load %struct.page*, %struct.page** %12, align 8
  %56 = call i32 @put_page(%struct.page* %55)
  br label %104

57:                                               ; preds = %48
  %58 = load %struct.page*, %struct.page** %12, align 8
  %59 = call i64 @PageWriteback(%struct.page* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load %struct.page*, %struct.page** %12, align 8
  %63 = call i32 @unlock_page(%struct.page* %62)
  %64 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %65 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @WB_SYNC_NONE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.page*, %struct.page** %12, align 8
  %71 = call i32 @wait_on_page_writeback(%struct.page* %70)
  br label %72

72:                                               ; preds = %69, %61
  %73 = load %struct.page*, %struct.page** %12, align 8
  %74 = call i32 @put_page(%struct.page* %73)
  br label %104

75:                                               ; preds = %57
  %76 = load %struct.page*, %struct.page** %12, align 8
  %77 = call i32 @clear_page_dirty_for_io(%struct.page* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = call i32 (...) @BUG()
  br label %81

81:                                               ; preds = %79, %75
  %82 = load %struct.address_space*, %struct.address_space** %7, align 8
  %83 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %84 = load %struct.page*, %struct.page** %12, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @afs_write_back_from_locked_page(%struct.address_space* %82, %struct.writeback_control* %83, %struct.page* %84, i64 %85)
  store i32 %86, i32* %13, align 4
  %87 = load %struct.page*, %struct.page** %12, align 8
  %88 = call i32 @put_page(%struct.page* %87)
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %81
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %93)
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %6, align 4
  br label %121

96:                                               ; preds = %81
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %100 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = call i32 (...) @cond_resched()
  br label %104

104:                                              ; preds = %96, %72, %52
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %10, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %110 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %111, 0
  br label %113

113:                                              ; preds = %108, %104
  %114 = phi i1 [ false, %104 ], [ %112, %108 ]
  br i1 %114, label %18, label %115

115:                                              ; preds = %113, %25
  %116 = load i64, i64* %9, align 8
  %117 = load i64*, i64** %11, align 8
  store i64 %116, i64* %117, align 8
  %118 = load i64*, i64** %11, align 8
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %119)
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %115, %91, %35
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @_enter(i8*, i64, i64) #1

declare dso_local i32 @find_get_pages_range_tag(%struct.address_space*, i64*, i64, i32, i32, %struct.page**) #1

declare dso_local i32 @_debug(i8*, i32) #1

declare dso_local i32 @lock_page_killable(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @_leave(i8*, i64) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @afs_write_back_from_locked_page(%struct.address_space*, %struct.writeback_control*, %struct.page*, i64) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
