; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_multi_tx_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_multi_tx_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32 }
%struct.wsm_buf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.wsm_buf*, i32)* @wsm_multi_tx_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsm_multi_tx_confirm(%struct.cw1200_common* %0, %struct.wsm_buf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cw1200_common*, align 8
  %6 = alloca %struct.wsm_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %5, align 8
  store %struct.wsm_buf* %1, %struct.wsm_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.wsm_buf*, %struct.wsm_buf** %6, align 8
  %11 = call i32 @WSM_GET32(%struct.wsm_buf* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp sle i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %64

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %25, 1
  %27 = call i32 @wsm_release_tx_buffer(%struct.cw1200_common* %24, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %64

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %37 = call i32 @cw1200_bh_wakeup(%struct.cw1200_common* %36)
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39, %20
  %41 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @cw1200_debug_txed_multi(%struct.cw1200_common* %41, i32 %42)
  br label %44

44:                                               ; preds = %56, %40
  %45 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %46 = load %struct.wsm_buf*, %struct.wsm_buf** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @wsm_tx_confirm(%struct.cw1200_common* %45, %struct.wsm_buf* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i1 [ false, %49 ], [ %55, %52 ]
  br i1 %57, label %44, label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %64

60:                                               ; No predecessors!
  %61 = call i64 @WARN_ON(i32 1)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %58, %30, %17
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @WSM_GET32(%struct.wsm_buf*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wsm_release_tx_buffer(%struct.cw1200_common*, i32) #1

declare dso_local i32 @cw1200_bh_wakeup(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_debug_txed_multi(%struct.cw1200_common*, i32) #1

declare dso_local i32 @wsm_tx_confirm(%struct.cw1200_common*, %struct.wsm_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
