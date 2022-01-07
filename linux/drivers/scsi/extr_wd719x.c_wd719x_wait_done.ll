; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_wait_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_wait_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wd719x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WD719X_AMR_INT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"direct command timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@WD719X_INT_NOERRORS = common dso_local global i64 0, align 8
@WD719X_AMR_SCB_ERROR = common dso_local global i32 0, align 4
@WD719X_SUE_TERM = common dso_local global i64 0, align 8
@WD719X_SUE_RESET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"direct command failed, status 0x%02x, SUE 0x%02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wd719x*, i32)* @wd719x_wait_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wd719x_wait_done(%struct.wd719x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wd719x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.wd719x* %0, %struct.wd719x** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %8

8:                                                ; preds = %18, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %13 = load i32, i32* @WD719X_AMR_INT_STATUS, align 4
  %14 = call i64 @wd719x_readb(%struct.wd719x* %12, i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %22

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %5, align 4
  %21 = call i32 @udelay(i32 1)
  br label %8

22:                                               ; preds = %17, %8
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %27 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 (i32*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ETIMEDOUT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %61

33:                                               ; preds = %22
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @WD719X_INT_NOERRORS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %33
  %38 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %39 = load i32, i32* @WD719X_AMR_SCB_ERROR, align 4
  %40 = call i64 @wd719x_readb(%struct.wd719x* %38, i32 %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @WD719X_SUE_TERM, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %61

45:                                               ; preds = %37
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @WD719X_SUE_RESET, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %61

50:                                               ; preds = %45
  %51 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %52 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %55, i64 %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %50, %49, %44, %25
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @wd719x_readb(%struct.wd719x*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
