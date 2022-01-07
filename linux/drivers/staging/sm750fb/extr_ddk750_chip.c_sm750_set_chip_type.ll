; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_chip.c_sm750_set_chip_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_chip.c_sm750_set_chip_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SM718 = common dso_local global i32 0, align 4
@chip = common dso_local global i32 0, align 4
@SM750 = common dso_local global i32 0, align 4
@SM750LE_REVISION_ID = common dso_local global i64 0, align 8
@SM750LE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"found sm750le\0A\00", align 1
@SM_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sm750_set_chip_type(i16 zeroext %0, i64 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i64, align 8
  store i16 %0, i16* %3, align 2
  store i64 %1, i64* %4, align 8
  %5 = load i16, i16* %3, align 2
  %6 = zext i16 %5 to i32
  %7 = icmp eq i32 %6, 1816
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @SM718, align 4
  store i32 %9, i32* @chip, align 4
  br label %26

10:                                               ; preds = %2
  %11 = load i16, i16* %3, align 2
  %12 = zext i16 %11 to i32
  %13 = icmp eq i32 %12, 1872
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load i32, i32* @SM750, align 4
  store i32 %15, i32* @chip, align 4
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @SM750LE_REVISION_ID, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @SM750LE, align 4
  store i32 %20, i32* @chip, align 4
  %21 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %14
  br label %25

23:                                               ; preds = %10
  %24 = load i32, i32* @SM_UNKNOWN, align 4
  store i32 %24, i32* @chip, align 4
  br label %25

25:                                               ; preds = %23, %22
  br label %26

26:                                               ; preds = %25, %8
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
