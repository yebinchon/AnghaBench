; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_di_write_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_di_write_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxdi_dev = type { i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@DIER_WCIE = common dso_local global i32 0, align 4
@DSR_WCF = common dso_local global i32 0, align 4
@DSR_WEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Write-wait timeout val = 0x%08x reg = 0x%08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imxdi_dev*, i32, i32)* @di_write_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @di_write_wait(%struct.imxdi_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.imxdi_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.imxdi_dev* %0, %struct.imxdi_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %10 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %13 = load i32, i32* @DIER_WCIE, align 4
  %14 = call i32 @di_int_enable(%struct.imxdi_dev* %12, i32 %13)
  %15 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %16 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %19 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = call i32 @writel(i32 %17, i64 %23)
  %25 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %26 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %29 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DSR_WCF, align 4
  %32 = load i32, i32* @DSR_WEF, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = call i32 @msecs_to_jiffies(i32 1)
  %36 = call i32 @wait_event_interruptible_timeout(i32 %27, i32 %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %8, align 4
  br label %66

41:                                               ; preds = %3
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %46 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_warn(i32* %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %44, %41
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %55 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DSR_WEF, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %62 = call i32 @clear_write_error(%struct.imxdi_dev* %61)
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %60, %53
  br label %66

66:                                               ; preds = %65, %39
  %67 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %68 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @di_int_enable(%struct.imxdi_dev*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @clear_write_error(%struct.imxdi_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
