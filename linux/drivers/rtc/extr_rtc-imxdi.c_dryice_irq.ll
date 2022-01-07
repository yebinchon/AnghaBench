; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_dryice_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_dryice_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxdi_dev = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@DIER = common dso_local global i64 0, align 8
@DSR = common dso_local global i64 0, align 8
@DIER_SVIE = common dso_local global i32 0, align 4
@DSR_SVF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DIER_WCIE = common dso_local global i32 0, align 4
@DSR_WCF = common dso_local global i32 0, align 4
@DSR_WEF = common dso_local global i32 0, align 4
@DIER_CAIE = common dso_local global i32 0, align 4
@DSR_CAF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dryice_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dryice_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.imxdi_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.imxdi_dev*
  store %struct.imxdi_dev* %11, %struct.imxdi_dev** %6, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.imxdi_dev*, %struct.imxdi_dev** %6, align 8
  %14 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DIER, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.imxdi_dev*, %struct.imxdi_dev** %6, align 8
  %20 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DSR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @DIER_SVIE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @DSR_SVF, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.imxdi_dev*, %struct.imxdi_dev** %6, align 8
  %36 = load i32, i32* @DIER_SVIE, align 4
  %37 = call i32 @di_int_disable(%struct.imxdi_dev* %35, i32 %36)
  %38 = load %struct.imxdi_dev*, %struct.imxdi_dev** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @di_report_tamper_info(%struct.imxdi_dev* %38, i32 %39)
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %34, %29
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @DIER_WCIE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %43
  %49 = load %struct.imxdi_dev*, %struct.imxdi_dev** %6, align 8
  %50 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i64 @list_empty_careful(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %98

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @DSR_WCF, align 4
  %59 = load i32, i32* @DSR_WEF, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = load %struct.imxdi_dev*, %struct.imxdi_dev** %6, align 8
  %65 = load i32, i32* @DIER_WCIE, align 4
  %66 = call i32 @di_int_disable(%struct.imxdi_dev* %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.imxdi_dev*, %struct.imxdi_dev** %6, align 8
  %69 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.imxdi_dev*, %struct.imxdi_dev** %6, align 8
  %73 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %72, i32 0, i32 2
  %74 = call i32 @wake_up_interruptible(%struct.TYPE_2__* %73)
  %75 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %63, %56
  br label %77

77:                                               ; preds = %76, %43
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @DIER_CAIE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @DSR_CAF, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.imxdi_dev*, %struct.imxdi_dev** %6, align 8
  %89 = load i32, i32* @DIER_CAIE, align 4
  %90 = call i32 @di_int_disable(%struct.imxdi_dev* %88, i32 %89)
  %91 = load %struct.imxdi_dev*, %struct.imxdi_dev** %6, align 8
  %92 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %91, i32 0, i32 1
  %93 = call i32 @schedule_work(i32* %92)
  %94 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %87, %82
  br label %96

96:                                               ; preds = %95, %77
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %54
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @di_int_disable(%struct.imxdi_dev*, i32) #1

declare dso_local i32 @di_report_tamper_info(%struct.imxdi_dev*, i32) #1

declare dso_local i64 @list_empty_careful(i32*) #1

declare dso_local i32 @wake_up_interruptible(%struct.TYPE_2__*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
