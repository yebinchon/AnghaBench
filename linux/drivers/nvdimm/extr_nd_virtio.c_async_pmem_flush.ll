; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_nd_virtio.c_async_pmem_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_nd_virtio.c_async_pmem_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { i32 }
%struct.bio = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @async_pmem_flush(%struct.nd_region* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nd_region*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %7 = load %struct.bio*, %struct.bio** %5, align 8
  %8 = icmp ne %struct.bio* %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %2
  %10 = load %struct.bio*, %struct.bio** %5, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %38

15:                                               ; preds = %9
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.bio* @bio_alloc(i32 %16, i32 0)
  store %struct.bio* %17, %struct.bio** %6, align 8
  %18 = load %struct.bio*, %struct.bio** %6, align 8
  %19 = icmp ne %struct.bio* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %46

23:                                               ; preds = %15
  %24 = load %struct.bio*, %struct.bio** %6, align 8
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = call i32 @bio_copy_dev(%struct.bio* %24, %struct.bio* %25)
  %27 = load i32, i32* @REQ_PREFLUSH, align 4
  %28 = load %struct.bio*, %struct.bio** %6, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.bio*, %struct.bio** %6, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 4
  %33 = load %struct.bio*, %struct.bio** %6, align 8
  %34 = load %struct.bio*, %struct.bio** %5, align 8
  %35 = call i32 @bio_chain(%struct.bio* %33, %struct.bio* %34)
  %36 = load %struct.bio*, %struct.bio** %6, align 8
  %37 = call i32 @submit_bio(%struct.bio* %36)
  store i32 0, i32* %3, align 4
  br label %46

38:                                               ; preds = %9, %2
  %39 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %40 = call i64 @virtio_pmem_flush(%struct.nd_region* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %42, %23, %20
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_copy_dev(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @bio_chain(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

declare dso_local i64 @virtio_pmem_flush(%struct.nd_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
