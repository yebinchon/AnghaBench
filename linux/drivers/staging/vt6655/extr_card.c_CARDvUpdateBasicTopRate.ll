; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDvUpdateBasicTopRate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDvUpdateBasicTopRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i8, i8 }

@RATE_24M = common dso_local global i8 0, align 1
@RATE_1M = common dso_local global i8 0, align 1
@RATE_54M = common dso_local global i8 0, align 1
@RATE_6M = common dso_local global i8 0, align 1
@RATE_11M = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CARDvUpdateBasicTopRate(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  %6 = load i8, i8* @RATE_24M, align 1
  store i8 %6, i8* %3, align 1
  %7 = load i8, i8* @RATE_1M, align 1
  store i8 %7, i8* %4, align 1
  %8 = load i8, i8* @RATE_54M, align 1
  store i8 %8, i8* %5, align 1
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @RATE_6M, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sge i32 %11, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %9
  %16 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %17 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 1, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i8, i8* %5, align 1
  store i8 %25, i8* %3, align 1
  br label %30

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load i8, i8* %5, align 1
  %29 = add i8 %28, -1
  store i8 %29, i8* %5, align 1
  br label %9

30:                                               ; preds = %24, %9
  %31 = load i8, i8* %3, align 1
  %32 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %33 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %32, i32 0, i32 1
  store i8 %31, i8* %33, align 4
  %34 = load i8, i8* @RATE_11M, align 1
  store i8 %34, i8* %5, align 1
  br label %35

35:                                               ; preds = %54, %30
  %36 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %37 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8, i8* %5, align 1
  %40 = zext i8 %39 to i32
  %41 = shl i32 1, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i8, i8* %5, align 1
  store i8 %45, i8* %4, align 1
  br label %57

46:                                               ; preds = %35
  %47 = load i8, i8* %5, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @RATE_1M, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %57

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53
  %55 = load i8, i8* %5, align 1
  %56 = add i8 %55, -1
  store i8 %56, i8* %5, align 1
  br label %35

57:                                               ; preds = %52, %44
  %58 = load i8, i8* %4, align 1
  %59 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %60 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %59, i32 0, i32 2
  store i8 %58, i8* %60, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
