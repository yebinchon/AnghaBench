; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_vfio_ap_mdev_reset_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_vfio_ap_mdev_reset_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_queue_status = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfio_ap_mdev_reset_queue(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ap_queue_status, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ap_queue_status, align 4
  %12 = alloca %struct.ap_queue_status, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 2, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @AP_MKQID(i32 %13, i32 %14)
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %53, %3
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @ap_zapq(i32 %17)
  %19 = bitcast %struct.ap_queue_status* %11 to i64*
  store i64 %18, i64* %19, align 4
  %20 = bitcast %struct.ap_queue_status* %8 to i8*
  %21 = bitcast %struct.ap_queue_status* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 8, i1 false)
  %22 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %49 [
    i32 129, label %24
    i32 128, label %47
    i32 130, label %47
  ]

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %35, %24
  %26 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %8, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %9, align 4
  %32 = icmp ne i32 %30, 0
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ false, %25 ], [ %32, %29 ]
  br i1 %34, label %35, label %42

35:                                               ; preds = %33
  %36 = call i32 @msleep(i32 20)
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @ap_tapq(i32 %37, i32* null)
  %39 = bitcast %struct.ap_queue_status* %12 to i64*
  store i64 %38, i64* %39, align 4
  %40 = bitcast %struct.ap_queue_status* %8 to i8*
  %41 = bitcast %struct.ap_queue_status* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 8, i1 false)
  br label %25

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = icmp sle i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON_ONCE(i32 %45)
  store i32 0, i32* %4, align 4
  br label %60

47:                                               ; preds = %16, %16
  %48 = call i32 @msleep(i32 20)
  br label %52

49:                                               ; preds = %16
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %60

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %54, -1
  store i32 %55, i32* %7, align 4
  %56 = icmp ne i32 %54, 0
  br i1 %56, label %16, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %49, %42
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @AP_MKQID(i32, i32) #1

declare dso_local i64 @ap_zapq(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @ap_tapq(i32, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
