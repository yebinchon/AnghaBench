; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl022 = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@loops_per_jiffy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"flush\0A\00", align 1
@SSP_SR_MASK_RNE = common dso_local global i32 0, align 4
@SSP_SR_MASK_BSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl022*)* @flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush(%struct.pl022* %0) #0 {
  %2 = alloca %struct.pl022*, align 8
  %3 = alloca i64, align 8
  store %struct.pl022* %0, %struct.pl022** %2, align 8
  %4 = load i32, i32* @loops_per_jiffy, align 4
  %5 = shl i32 %4, 1
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %3, align 8
  %7 = load %struct.pl022*, %struct.pl022** %2, align 8
  %8 = getelementptr inbounds %struct.pl022, %struct.pl022* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %42, %1
  br label %13

13:                                               ; preds = %22, %12
  %14 = load %struct.pl022*, %struct.pl022** %2, align 8
  %15 = getelementptr inbounds %struct.pl022, %struct.pl022* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @SSP_SR(i32 %16)
  %18 = call i32 @readw(i32 %17)
  %19 = load i32, i32* @SSP_SR_MASK_RNE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.pl022*, %struct.pl022** %2, align 8
  %24 = getelementptr inbounds %struct.pl022, %struct.pl022* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @SSP_DR(i32 %25)
  %27 = call i32 @readw(i32 %26)
  br label %13

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.pl022*, %struct.pl022** %2, align 8
  %31 = getelementptr inbounds %struct.pl022, %struct.pl022* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @SSP_SR(i32 %32)
  %34 = call i32 @readw(i32 %33)
  %35 = load i32, i32* @SSP_SR_MASK_BSY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %3, align 8
  %41 = icmp ne i64 %39, 0
  br label %42

42:                                               ; preds = %38, %29
  %43 = phi i1 [ false, %29 ], [ %41, %38 ]
  br i1 %43, label %12, label %44

44:                                               ; preds = %42
  %45 = load %struct.pl022*, %struct.pl022** %2, align 8
  %46 = getelementptr inbounds %struct.pl022, %struct.pl022* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %3, align 8
  %48 = trunc i64 %47 to i32
  ret i32 %48
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @SSP_SR(i32) #1

declare dso_local i32 @SSP_DR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
