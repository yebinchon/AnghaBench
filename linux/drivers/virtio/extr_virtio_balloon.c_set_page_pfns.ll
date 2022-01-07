; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_set_page_pfns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_set_page_pfns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_balloon = type { i32 }
%struct.page = type { i32 }

@VIRTIO_BALLOON_PAGES_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_balloon*, i32*, %struct.page*)* @set_page_pfns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_page_pfns(%struct.virtio_balloon* %0, i32* %1, %struct.page* %2) #0 {
  %4 = alloca %struct.virtio_balloon*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  store %struct.virtio_balloon* %0, %struct.virtio_balloon** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.page* %2, %struct.page** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %26, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @VIRTIO_BALLOON_PAGES_PER_PAGE, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = load %struct.virtio_balloon*, %struct.virtio_balloon** %4, align 8
  %14 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = call i64 @page_to_balloon_pfn(%struct.page* %16)
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = call i32 @cpu_to_virtio32(i32 %15, i64 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %21, i32* %25, align 4
  br label %26

26:                                               ; preds = %12
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %8

29:                                               ; preds = %8
  ret void
}

declare dso_local i32 @cpu_to_virtio32(i32, i64) #1

declare dso_local i64 @page_to_balloon_pfn(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
