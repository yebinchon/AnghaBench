; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_fill_balloon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_fill_balloon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_balloon = type { i32, i32, i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@pages = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Out of puff! Can't get %u pages\0A\00", align 1
@VIRTIO_BALLOON_PAGES_PER_PAGE = common dso_local global i64 0, align 8
@VIRTIO_BALLOON_F_DEFLATE_ON_OOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_balloon*, i64)* @fill_balloon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_balloon(%struct.virtio_balloon* %0, i64 %1) #0 {
  %3 = alloca %struct.virtio_balloon*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.virtio_balloon* %0, %struct.virtio_balloon** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* @pages, align 4
  %10 = call i32 @LIST_HEAD(i32 %9)
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %13 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @ARRAY_SIZE(i64 %14)
  %16 = call i64 @min(i64 %11, i32 %15)
  store i64 %16, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %37, %2
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* %4, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %17
  %23 = call %struct.page* (...) @balloon_page_alloc()
  store %struct.page* %23, %struct.page** %8, align 8
  %24 = load %struct.page*, %struct.page** %8, align 8
  %25 = icmp ne %struct.page* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %28 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* @VIRTIO_BALLOON_PAGES_PER_PAGE, align 8
  %32 = call i32 @dev_info_ratelimited(i32* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = call i32 @msleep(i32 200)
  br label %43

34:                                               ; preds = %22
  %35 = load %struct.page*, %struct.page** %8, align 8
  %36 = call i32 @balloon_page_push(i32* @pages, %struct.page* %35)
  br label %37

37:                                               ; preds = %34
  %38 = load i64, i64* @VIRTIO_BALLOON_PAGES_PER_PAGE, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  br label %17

43:                                               ; preds = %26, %17
  %44 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %45 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %44, i32 0, i32 1
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %48 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %84, %43
  %50 = call %struct.page* @balloon_page_pop(i32* @pages)
  store %struct.page* %50, %struct.page** %7, align 8
  %51 = icmp ne %struct.page* %50, null
  br i1 %51, label %52, label %92

52:                                               ; preds = %49
  %53 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %54 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %53, i32 0, i32 6
  %55 = load %struct.page*, %struct.page** %7, align 8
  %56 = call i32 @balloon_page_enqueue(i32* %54, %struct.page* %55)
  %57 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %58 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %59 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %62 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = zext i32 %63 to i64
  %65 = add nsw i64 %60, %64
  %66 = load %struct.page*, %struct.page** %7, align 8
  %67 = call i32 @set_page_pfns(%struct.virtio_balloon* %57, i64 %65, %struct.page* %66)
  %68 = load i64, i64* @VIRTIO_BALLOON_PAGES_PER_PAGE, align 8
  %69 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %70 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %68
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 8
  %75 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %76 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %75, i32 0, i32 3
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* @VIRTIO_BALLOON_F_DEFLATE_ON_OOM, align 4
  %79 = call i32 @virtio_has_feature(%struct.TYPE_2__* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %52
  %82 = load %struct.page*, %struct.page** %7, align 8
  %83 = call i32 @adjust_managed_page_count(%struct.page* %82, i32 -1)
  br label %84

84:                                               ; preds = %81, %52
  %85 = load i64, i64* @VIRTIO_BALLOON_PAGES_PER_PAGE, align 8
  %86 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %87 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = zext i32 %88 to i64
  %90 = add nsw i64 %89, %85
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 8
  br label %49

92:                                               ; preds = %49
  %93 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %94 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %5, align 4
  %96 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %97 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %102 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %103 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @tell_host(%struct.virtio_balloon* %101, i32 %104)
  br label %106

106:                                              ; preds = %100, %92
  %107 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %108 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %107, i32 0, i32 1
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64) #1

declare dso_local %struct.page* @balloon_page_alloc(...) #1

declare dso_local i32 @dev_info_ratelimited(i32*, i8*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @balloon_page_push(i32*, %struct.page*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.page* @balloon_page_pop(i32*) #1

declare dso_local i32 @balloon_page_enqueue(i32*, %struct.page*) #1

declare dso_local i32 @set_page_pfns(%struct.virtio_balloon*, i64, %struct.page*) #1

declare dso_local i32 @virtio_has_feature(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @adjust_managed_page_count(%struct.page*, i32) #1

declare dso_local i32 @tell_host(%struct.virtio_balloon*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
