; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_leak_balloon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_leak_balloon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_balloon = type { i64, i32, i32, i64, i64, %struct.balloon_dev_info }
%struct.balloon_dev_info = type { i32 }
%struct.page = type { i32 }

@pages = common dso_local global i32 0, align 4
@VIRTIO_BALLOON_PAGES_PER_PAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_balloon*, i64)* @leak_balloon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leak_balloon(%struct.virtio_balloon* %0, i64 %1) #0 {
  %3 = alloca %struct.virtio_balloon*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.balloon_dev_info*, align 8
  store %struct.virtio_balloon* %0, %struct.virtio_balloon** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %9 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %8, i32 0, i32 5
  store %struct.balloon_dev_info* %9, %struct.balloon_dev_info** %7, align 8
  %10 = load i32, i32* @pages, align 4
  %11 = call i32 @LIST_HEAD(i32 %10)
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %14 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @ARRAY_SIZE(i64 %15)
  %17 = call i64 @min(i64 %12, i64 %16)
  store i64 %17, i64* %4, align 8
  %18 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %19 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %23 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @min(i64 %21, i64 %24)
  store i64 %25, i64* %4, align 8
  %26 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %27 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %59, %2
  %29 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %30 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %28
  %35 = load %struct.balloon_dev_info*, %struct.balloon_dev_info** %7, align 8
  %36 = call %struct.page* @balloon_page_dequeue(%struct.balloon_dev_info* %35)
  store %struct.page* %36, %struct.page** %6, align 8
  %37 = load %struct.page*, %struct.page** %6, align 8
  %38 = icmp ne %struct.page* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %65

40:                                               ; preds = %34
  %41 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %42 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %43 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %46 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %44, %47
  %49 = load %struct.page*, %struct.page** %6, align 8
  %50 = call i32 @set_page_pfns(%struct.virtio_balloon* %41, i64 %48, %struct.page* %49)
  %51 = load %struct.page*, %struct.page** %6, align 8
  %52 = getelementptr inbounds %struct.page, %struct.page* %51, i32 0, i32 0
  %53 = call i32 @list_add(i32* %52, i32* @pages)
  %54 = load i64, i64* @VIRTIO_BALLOON_PAGES_PER_PAGE, align 8
  %55 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %56 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %40
  %60 = load i64, i64* @VIRTIO_BALLOON_PAGES_PER_PAGE, align 8
  %61 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %62 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %60
  store i64 %64, i64* %62, align 8
  br label %28

65:                                               ; preds = %39, %28
  %66 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %67 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %5, align 4
  %70 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %71 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %76 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %77 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @tell_host(%struct.virtio_balloon* %75, i32 %78)
  br label %80

80:                                               ; preds = %74, %65
  %81 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %82 = call i32 @release_pages_balloon(%struct.virtio_balloon* %81, i32* @pages)
  %83 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %84 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %83, i32 0, i32 1
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @ARRAY_SIZE(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.page* @balloon_page_dequeue(%struct.balloon_dev_info*) #1

declare dso_local i32 @set_page_pfns(%struct.virtio_balloon*, i64, %struct.page*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @tell_host(%struct.virtio_balloon*, i32) #1

declare dso_local i32 @release_pages_balloon(%struct.virtio_balloon*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
