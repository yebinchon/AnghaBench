; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman_test_api.c_bufs_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman_test_api.c_bufs_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm_buffer = type { i32 }

@bman_ip_rev = common dso_local global i64 0, align 8
@BMAN_REV20 = common dso_local global i64 0, align 8
@BMAN_REV21 = common dso_local global i64 0, align 8
@BMAN_TOKEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bm_buffer*, %struct.bm_buffer*)* @bufs_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bufs_cmp(%struct.bm_buffer* %0, %struct.bm_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bm_buffer*, align 8
  %5 = alloca %struct.bm_buffer*, align 8
  store %struct.bm_buffer* %0, %struct.bm_buffer** %4, align 8
  store %struct.bm_buffer* %1, %struct.bm_buffer** %5, align 8
  %6 = load i64, i64* @bman_ip_rev, align 8
  %7 = load i64, i64* @BMAN_REV20, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* @bman_ip_rev, align 8
  %11 = load i64, i64* @BMAN_REV21, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9, %2
  %14 = load %struct.bm_buffer*, %struct.bm_buffer** %4, align 8
  %15 = call i32 @bm_buffer_get64(%struct.bm_buffer* %14)
  %16 = load i32, i32* @BMAN_TOKEN_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load %struct.bm_buffer*, %struct.bm_buffer** %5, align 8
  %19 = call i32 @bm_buffer_get64(%struct.bm_buffer* %18)
  %20 = load i32, i32* @BMAN_TOKEN_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %52

24:                                               ; preds = %13
  %25 = load %struct.bm_buffer*, %struct.bm_buffer** %4, align 8
  %26 = call i32 @bm_buffer_get64(%struct.bm_buffer* %25)
  %27 = load i32, i32* @BMAN_TOKEN_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.bm_buffer*, %struct.bm_buffer** %5, align 8
  %30 = call i32 @bm_buffer_get64(%struct.bm_buffer* %29)
  %31 = load i32, i32* @BMAN_TOKEN_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp sgt i32 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %52

35:                                               ; preds = %24
  br label %51

36:                                               ; preds = %9
  %37 = load %struct.bm_buffer*, %struct.bm_buffer** %4, align 8
  %38 = call i32 @bm_buffer_get64(%struct.bm_buffer* %37)
  %39 = load %struct.bm_buffer*, %struct.bm_buffer** %5, align 8
  %40 = call i32 @bm_buffer_get64(%struct.bm_buffer* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %52

43:                                               ; preds = %36
  %44 = load %struct.bm_buffer*, %struct.bm_buffer** %4, align 8
  %45 = call i32 @bm_buffer_get64(%struct.bm_buffer* %44)
  %46 = load %struct.bm_buffer*, %struct.bm_buffer** %5, align 8
  %47 = call i32 @bm_buffer_get64(%struct.bm_buffer* %46)
  %48 = icmp sgt i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %52

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %35
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %49, %42, %34, %23
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @bm_buffer_get64(%struct.bm_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
