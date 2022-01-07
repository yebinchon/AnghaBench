; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_new_airq_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_new_airq_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airq_info = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@VIRTIO_IV_BITS = common dso_local global i32 0, align 4
@AIRQ_IV_ALLOC = common dso_local global i32 0, align 4
@AIRQ_IV_PTR = common dso_local global i32 0, align 4
@AIRQ_IV_CACHELINE = common dso_local global i32 0, align 4
@virtio_airq_handler = common dso_local global i32 0, align 4
@VIRTIO_AIRQ_ISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.airq_info* (i32)* @new_airq_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.airq_info* @new_airq_info(i32 %0) #0 {
  %2 = alloca %struct.airq_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.airq_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.airq_info* @kzalloc(i32 28, i32 %6)
  store %struct.airq_info* %7, %struct.airq_info** %4, align 8
  %8 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %9 = icmp ne %struct.airq_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.airq_info* null, %struct.airq_info** %2, align 8
  br label %65

11:                                               ; preds = %1
  %12 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %13 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %12, i32 0, i32 3
  %14 = call i32 @rwlock_init(i32* %13)
  %15 = load i32, i32* @VIRTIO_IV_BITS, align 4
  %16 = load i32, i32* @AIRQ_IV_ALLOC, align 4
  %17 = load i32, i32* @AIRQ_IV_PTR, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @AIRQ_IV_CACHELINE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @airq_iv_create(i32 %15, i32 %20)
  %22 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %23 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %25 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %11
  %29 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %30 = call i32 @kfree(%struct.airq_info* %29)
  store %struct.airq_info* null, %struct.airq_info** %2, align 8
  br label %65

31:                                               ; preds = %11
  %32 = load i32, i32* @virtio_airq_handler, align 4
  %33 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %34 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %38 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %40 = call i32 @get_summary_indicator(%struct.airq_info* %39)
  %41 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %42 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  %44 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %45 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 255, i32* %46, align 4
  %47 = load i32, i32* @VIRTIO_AIRQ_ISC, align 4
  %48 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %49 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %52 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %51, i32 0, i32 2
  %53 = call i32 @register_adapter_interrupt(%struct.TYPE_2__* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %31
  %57 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %58 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @airq_iv_release(i32 %59)
  %61 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %62 = call i32 @kfree(%struct.airq_info* %61)
  store %struct.airq_info* null, %struct.airq_info** %2, align 8
  br label %65

63:                                               ; preds = %31
  %64 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  store %struct.airq_info* %64, %struct.airq_info** %2, align 8
  br label %65

65:                                               ; preds = %63, %56, %28, %10
  %66 = load %struct.airq_info*, %struct.airq_info** %2, align 8
  ret %struct.airq_info* %66
}

declare dso_local %struct.airq_info* @kzalloc(i32, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @airq_iv_create(i32, i32) #1

declare dso_local i32 @kfree(%struct.airq_info*) #1

declare dso_local i32 @get_summary_indicator(%struct.airq_info*) #1

declare dso_local i32 @register_adapter_interrupt(%struct.TYPE_2__*) #1

declare dso_local i32 @airq_iv_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
