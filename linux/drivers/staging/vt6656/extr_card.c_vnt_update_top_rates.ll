; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_card.c_vnt_update_top_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_card.c_vnt_update_top_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i32, i32 }

@RATE_24M = common dso_local global i32 0, align 4
@RATE_1M = common dso_local global i32 0, align 4
@RATE_54M = common dso_local global i32 0, align 4
@RATE_6M = common dso_local global i32 0, align 4
@RATE_11M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnt_update_top_rates(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  %6 = load i32, i32* @RATE_24M, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @RATE_1M, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @RATE_54M, align 4
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @RATE_6M, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %15 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %5, align 4
  br label %9

27:                                               ; preds = %21, %9
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %30 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @RATE_11M, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %48, %27
  %33 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %34 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %4, align 4
  br label %51

42:                                               ; preds = %32
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @RATE_1M, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %51

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %5, align 4
  br label %32

51:                                               ; preds = %46, %40
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %54 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
