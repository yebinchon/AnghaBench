; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_clear_write_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_clear_write_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxdi_dev = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"WARNING: Register write error!\0A\00", align 1
@DSR_WEF = common dso_local global i32 0, align 4
@DSR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"ERROR: Cannot clear write-error flag!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imxdi_dev*)* @clear_write_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_write_error(%struct.imxdi_dev* %0) #0 {
  %2 = alloca %struct.imxdi_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.imxdi_dev* %0, %struct.imxdi_dev** %2, align 8
  %4 = load %struct.imxdi_dev*, %struct.imxdi_dev** %2, align 8
  %5 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @dev_warn(i32* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @DSR_WEF, align 4
  %10 = load %struct.imxdi_dev*, %struct.imxdi_dev** %2, align 8
  %11 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DSR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 %9, i64 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %32, %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 1000
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load %struct.imxdi_dev*, %struct.imxdi_dev** %2, align 8
  %21 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DSR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  %26 = load i32, i32* @DSR_WEF, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %41

30:                                               ; preds = %19
  %31 = call i32 @udelay(i32 10)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %16

35:                                               ; preds = %16
  %36 = load %struct.imxdi_dev*, %struct.imxdi_dev** %2, align 8
  %37 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %35, %29
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
