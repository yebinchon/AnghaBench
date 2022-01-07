; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_get_a_tx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_get_a_tx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtproc_info = type { i32, i32, i32, i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.virtproc_info*)* @get_a_tx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_a_tx_buf(%struct.virtproc_info* %0) #0 {
  %2 = alloca %struct.virtproc_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.virtproc_info* %0, %struct.virtproc_info** %2, align 8
  %5 = load %struct.virtproc_info*, %struct.virtproc_info** %2, align 8
  %6 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %5, i32 0, i32 3
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.virtproc_info*, %struct.virtproc_info** %2, align 8
  %9 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.virtproc_info*, %struct.virtproc_info** %2, align 8
  %12 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sdiv i32 %13, 2
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.virtproc_info*, %struct.virtproc_info** %2, align 8
  %18 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %17, i32 0, i32 5
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.virtproc_info*, %struct.virtproc_info** %2, align 8
  %21 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.virtproc_info*, %struct.virtproc_info** %2, align 8
  %24 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = mul nsw i32 %22, %25
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %19, i64 %28
  store i8* %29, i8** %4, align 8
  br label %35

30:                                               ; preds = %1
  %31 = load %struct.virtproc_info*, %struct.virtproc_info** %2, align 8
  %32 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @virtqueue_get_buf(i32 %33, i32* %3)
  store i8* %34, i8** %4, align 8
  br label %35

35:                                               ; preds = %30, %16
  %36 = load %struct.virtproc_info*, %struct.virtproc_info** %2, align 8
  %37 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %36, i32 0, i32 3
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i8*, i8** %4, align 8
  ret i8* %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @virtqueue_get_buf(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
