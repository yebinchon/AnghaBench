; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_drop_airq_indicator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_drop_airq_indicator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type opaque
%struct.airq_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*, %struct.airq_info*)* @drop_airq_indicator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_airq_indicator(%struct.virtqueue* %0, %struct.airq_info* %1) #0 {
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca %struct.airq_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %3, align 8
  store %struct.airq_info* %1, %struct.airq_info** %4, align 8
  %7 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %8 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @write_lock_irqsave(i32* %8, i64 %9)
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %40, %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %14 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @airq_iv_end(i32 %15)
  %17 = icmp ult i64 %12, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %11
  %19 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %20 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %21 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @airq_iv_get_ptr(i32 %22, i64 %23)
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.virtqueue*
  %27 = icmp eq %struct.virtqueue* %19, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %18
  %29 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %30 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @airq_iv_free_bit(i32 %31, i64 %32)
  %34 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %35 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @airq_iv_set_ptr(i32 %36, i64 %37, i32 0)
  br label %43

39:                                               ; preds = %18
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %5, align 8
  br label %11

43:                                               ; preds = %28, %11
  %44 = load %struct.airq_info*, %struct.airq_info** %4, align 8
  %45 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %44, i32 0, i32 0
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @write_unlock_irqrestore(i32* %45, i64 %46)
  ret void
}

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i64 @airq_iv_end(i32) #1

declare dso_local i64 @airq_iv_get_ptr(i32, i64) #1

declare dso_local i32 @airq_iv_free_bit(i32, i64) #1

declare dso_local i32 @airq_iv_set_ptr(i32, i64, i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
