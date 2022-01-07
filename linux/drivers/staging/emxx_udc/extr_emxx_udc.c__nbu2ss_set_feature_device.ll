; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_set_feature_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_set_feature_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@U2F_ENABLE = common dso_local global i32 0, align 4
@MAX_TEST_MODE_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbu2ss_udc*, i32, i32)* @_nbu2ss_set_feature_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nbu2ss_set_feature_device(%struct.nbu2ss_udc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nbu2ss_udc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @EOPNOTSUPP, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %27 [
    i32 129, label %11
    i32 128, label %19
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @U2F_ENABLE, align 4
  %16 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %17 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %14, %11
  br label %28

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 8
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MAX_TEST_MODE_NUM, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %19
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %26, %18
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
