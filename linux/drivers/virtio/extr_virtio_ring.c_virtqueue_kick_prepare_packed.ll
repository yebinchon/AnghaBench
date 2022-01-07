; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_kick_prepare_packed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_kick_prepare_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.vring_virtqueue = type { %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, i64 }

@VRING_PACKED_EVENT_FLAG_DESC = common dso_local global i64 0, align 8
@VRING_PACKED_EVENT_FLAG_DISABLE = common dso_local global i64 0, align 8
@VRING_PACKED_EVENT_F_WRAP_CTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtqueue*)* @virtqueue_kick_prepare_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtqueue_kick_prepare_packed(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.vring_virtqueue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.anon, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %12 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %13 = call %struct.vring_virtqueue* @to_vvq(%struct.virtqueue* %12)
  store %struct.vring_virtqueue* %13, %struct.vring_virtqueue** %3, align 8
  %14 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %15 = call i32 @START_USE(%struct.vring_virtqueue* %14)
  %16 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %17 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @virtio_mb(i32 %18)
  %20 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %21 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %25 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  store i64 %27, i64* %5, align 8
  %28 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %29 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %4, align 8
  %32 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %33 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %35 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = bitcast %union.anon* %11 to i32*
  store i32 %40, i32* %41, align 8
  %42 = bitcast %union.anon* %11 to %struct.anon*
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @le16_to_cpu(i64 %44)
  store i64 %45, i64* %7, align 8
  %46 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %47 = call i32 @LAST_ADD_TIME_CHECK(%struct.vring_virtqueue* %46)
  %48 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %49 = call i32 @LAST_ADD_TIME_INVALID(%struct.vring_virtqueue* %48)
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @VRING_PACKED_EVENT_FLAG_DESC, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %1
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @VRING_PACKED_EVENT_FLAG_DISABLE, align 8
  %56 = icmp ne i64 %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %10, align 4
  br label %92

58:                                               ; preds = %1
  %59 = bitcast %union.anon* %11 to %struct.anon*
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @le16_to_cpu(i64 %61)
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @VRING_PACKED_EVENT_F_WRAP_CTR, align 8
  %65 = ashr i64 %63, %64
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @VRING_PACKED_EVENT_F_WRAP_CTR, align 8
  %68 = trunc i64 %67 to i32
  %69 = shl i32 1, %68
  %70 = xor i32 %69, -1
  %71 = sext i32 %70 to i64
  %72 = and i64 %66, %71
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %75 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %73, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %58
  %80 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %81 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = sub nsw i64 %85, %84
  store i64 %86, i64* %9, align 8
  br label %87

87:                                               ; preds = %79, %58
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @vring_need_event(i64 %88, i64 %89, i64 %90)
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %87, %53
  %93 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %94 = call i32 @END_USE(%struct.vring_virtqueue* %93)
  %95 = load i32, i32* %10, align 4
  ret i32 %95
}

declare dso_local %struct.vring_virtqueue* @to_vvq(%struct.virtqueue*) #1

declare dso_local i32 @START_USE(%struct.vring_virtqueue*) #1

declare dso_local i32 @virtio_mb(i32) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @LAST_ADD_TIME_CHECK(%struct.vring_virtqueue*) #1

declare dso_local i32 @LAST_ADD_TIME_INVALID(%struct.vring_virtqueue*) #1

declare dso_local i32 @vring_need_event(i64, i64, i64) #1

declare dso_local i32 @END_USE(%struct.vring_virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
