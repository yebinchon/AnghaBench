; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_get_free_page_and_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_get_free_page_and_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_balloon = type { i32, i32, i32, %struct.virtqueue* }
%struct.virtqueue = type { i32 }
%struct.page = type { i32 }
%struct.scatterlist = type { i32 }

@VIRTIO_BALLOON_FREE_PAGE_ALLOC_FLAG = common dso_local global i32 0, align 4
@VIRTIO_BALLOON_FREE_PAGE_ORDER = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@VIRTIO_BALLOON_FREE_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_balloon*)* @get_free_page_and_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_free_page_and_send(%struct.virtio_balloon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_balloon*, align 8
  %4 = alloca %struct.virtqueue*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.scatterlist, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.virtio_balloon* %0, %struct.virtio_balloon** %3, align 8
  %10 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %11 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %10, i32 0, i32 3
  %12 = load %struct.virtqueue*, %struct.virtqueue** %11, align 8
  store %struct.virtqueue* %12, %struct.virtqueue** %4, align 8
  br label %13

13:                                               ; preds = %17, %1
  %14 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %15 = call i64 @virtqueue_get_buf(%struct.virtqueue* %14, i32* %8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %13

18:                                               ; preds = %13
  %19 = load i32, i32* @VIRTIO_BALLOON_FREE_PAGE_ALLOC_FLAG, align 4
  %20 = load i32, i32* @VIRTIO_BALLOON_FREE_PAGE_ORDER, align 4
  %21 = call %struct.page* @alloc_pages(i32 %19, i32 %20)
  store %struct.page* %21, %struct.page** %5, align 8
  %22 = load %struct.page*, %struct.page** %5, align 8
  %23 = icmp ne %struct.page* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @EINTR, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %74

27:                                               ; preds = %18
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = call i8* @page_address(%struct.page* %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* @VIRTIO_BALLOON_FREE_PAGE_SIZE, align 4
  %32 = call i32 @sg_init_one(%struct.scatterlist* %6, i8* %30, i32 %31)
  %33 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %34 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %68

37:                                               ; preds = %27
  %38 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @virtqueue_add_inbuf(%struct.virtqueue* %38, %struct.scatterlist* %6, i32 1, i8* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load i8*, i8** %9, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load i32, i32* @VIRTIO_BALLOON_FREE_PAGE_ORDER, align 4
  %49 = call i32 @free_pages(i64 %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %74

51:                                               ; preds = %37
  %52 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %53 = call i32 @virtqueue_kick(%struct.virtqueue* %52)
  %54 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %55 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %54, i32 0, i32 0
  %56 = call i32 @spin_lock_irq(i32* %55)
  %57 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %58 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %57, i32 0, i32 2
  %59 = load %struct.page*, %struct.page** %5, align 8
  %60 = call i32 @balloon_page_push(i32* %58, %struct.page* %59)
  %61 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %62 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %66 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock_irq(i32* %66)
  br label %73

68:                                               ; preds = %27
  %69 = load i8*, i8** %9, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = load i32, i32* @VIRTIO_BALLOON_FREE_PAGE_ORDER, align 4
  %72 = call i32 @free_pages(i64 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %51
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %45, %24
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @virtqueue_get_buf(%struct.virtqueue*, i32*) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #1

declare dso_local i32 @virtqueue_add_inbuf(%struct.virtqueue*, %struct.scatterlist*, i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @virtqueue_kick(%struct.virtqueue*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @balloon_page_push(i32*, %struct.page*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
