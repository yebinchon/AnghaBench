; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_sync_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_sync_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32 }

@ni_tio_set_sync_mode.min_normal_sync_period_ps = internal constant i64 25000, align 8
@GI_M_ALT_SYNC = common dso_local global i32 0, align 4
@GI_660X_ALT_SYNC = common dso_local global i32 0, align 4
@GI_CNT_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ni_gpct*)* @ni_tio_set_sync_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_tio_set_sync_mode(%struct.ni_gpct* %0) #0 {
  %2 = alloca %struct.ni_gpct*, align 8
  %3 = alloca %struct.ni_gpct_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %2, align 8
  %13 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %14 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %13, i32 0, i32 1
  %15 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %14, align 8
  store %struct.ni_gpct_device* %15, %struct.ni_gpct_device** %3, align 8
  %16 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %17 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %19 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %20 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %23 [
    i32 129, label %22
    i32 128, label %24
    i32 130, label %26
  ]

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %1, %22
  br label %63

24:                                               ; preds = %1
  %25 = load i32, i32* @GI_M_ALT_SYNC, align 4
  store i32 %25, i32* %5, align 4
  br label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @GI_660X_ALT_SYNC, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @NITIO_CNT_MODE_REG(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ni_tio_get_soft_copy(%struct.ni_gpct* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @GI_CNT_MODE_MASK, align 4
  %36 = and i32 %34, %35
  switch i32 %36, label %38 [
    i32 134, label %37
    i32 133, label %37
    i32 132, label %37
    i32 131, label %37
  ]

37:                                               ; preds = %28, %28, %28, %28
  store i32 1, i32* %12, align 4
  br label %39

38:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %41 = call i32 @ni_tio_generic_clock_src_select(%struct.ni_gpct* %40, i32* %9)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %63

45:                                               ; preds = %39
  %46 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @ni_tio_clock_period_ps(%struct.ni_gpct* %46, i32 %47, i64* %10)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %63

52:                                               ; preds = %45
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %52
  %58 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %58, i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %51, %44, %23
  ret void
}

declare dso_local i32 @NITIO_CNT_MODE_REG(i32) #1

declare dso_local i32 @ni_tio_get_soft_copy(%struct.ni_gpct*, i32) #1

declare dso_local i32 @ni_tio_generic_clock_src_select(%struct.ni_gpct*, i32*) #1

declare dso_local i32 @ni_tio_clock_period_ps(%struct.ni_gpct*, i32, i64*) #1

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
