; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_ucc.c_ucc_get_tdm_sync_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_ucc.c_ucc_get_tdm_sync_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@COMM_DIR_RX = common dso_local global i32 0, align 4
@QE_RSYNC_PIN = common dso_local global i32 0, align 4
@COMM_DIR_TX = common dso_local global i32 0, align 4
@QE_TSYNC_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ucc_get_tdm_sync_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucc_get_tdm_sync_source(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @COMM_DIR_RX, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @QE_RSYNC_PIN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %58

20:                                               ; preds = %14, %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @COMM_DIR_TX, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @QE_TSYNC_PIN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %58

30:                                               ; preds = %24, %20
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %56 [
    i32 0, label %32
    i32 1, label %32
    i32 2, label %38
    i32 3, label %38
    i32 4, label %44
    i32 5, label %44
    i32 6, label %50
    i32 7, label %50
  ]

32:                                               ; preds = %30, %30
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %36 [
    i32 128, label %34
    i32 133, label %35
  ]

34:                                               ; preds = %32
  store i32 1, i32* %8, align 4
  br label %37

35:                                               ; preds = %32
  store i32 2, i32* %8, align 4
  br label %37

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %35, %34
  br label %56

38:                                               ; preds = %30, %30
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %42 [
    i32 128, label %40
    i32 132, label %41
  ]

40:                                               ; preds = %38
  store i32 1, i32* %8, align 4
  br label %43

41:                                               ; preds = %38
  store i32 2, i32* %8, align 4
  br label %43

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %41, %40
  br label %56

44:                                               ; preds = %30, %30
  %45 = load i32, i32* %6, align 4
  switch i32 %45, label %48 [
    i32 131, label %46
    i32 130, label %47
  ]

46:                                               ; preds = %44
  store i32 1, i32* %8, align 4
  br label %49

47:                                               ; preds = %44
  store i32 2, i32* %8, align 4
  br label %49

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %47, %46
  br label %56

50:                                               ; preds = %30, %30
  %51 = load i32, i32* %6, align 4
  switch i32 %51, label %54 [
    i32 131, label %52
    i32 129, label %53
  ]

52:                                               ; preds = %50
  store i32 1, i32* %8, align 4
  br label %55

53:                                               ; preds = %50
  store i32 2, i32* %8, align 4
  br label %55

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %53, %52
  br label %56

56:                                               ; preds = %30, %55, %49, %43, %37
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %28, %18
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
