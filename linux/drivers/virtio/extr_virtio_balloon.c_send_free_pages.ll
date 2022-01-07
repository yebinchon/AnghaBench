; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_send_free_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_send_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_balloon = type { i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_balloon*)* @send_free_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_free_pages(%struct.virtio_balloon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_balloon*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.virtio_balloon* %0, %struct.virtio_balloon** %3, align 8
  br label %6

6:                                                ; preds = %1, %37
  %7 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %8 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %11 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @virtio32_to_cpu(i32 %9, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %16 = call i64 @virtio_balloon_cmd_id_received(%struct.virtio_balloon* %15)
  %17 = icmp ne i64 %14, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  br label %38

22:                                               ; preds = %6
  %23 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %24 = call i32 @get_free_page_and_send(%struct.virtio_balloon* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @EINTR, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %38

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %39

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  br label %6

38:                                               ; preds = %29, %21
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @virtio32_to_cpu(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @virtio_balloon_cmd_id_received(%struct.virtio_balloon*) #1

declare dso_local i32 @get_free_page_and_send(%struct.virtio_balloon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
