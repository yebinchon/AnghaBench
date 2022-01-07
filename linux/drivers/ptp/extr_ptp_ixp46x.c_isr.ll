; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_ixp46x.c_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_ixp46x.c_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixp_clock = type { i32, i64, i64, %struct.ixp46x_ts_regs* }
%struct.ixp46x_ts_regs = type { i32, i32, i32, i32, i32 }
%struct.ptp_clock_event = type { i32, i32, i8* }

@TSER_SNS = common dso_local global i32 0, align 4
@PTP_CLOCK_EXTTS = common dso_local global i8* null, align 8
@TICKS_NS_SHIFT = common dso_local global i32 0, align 4
@TSER_SNM = common dso_local global i32 0, align 4
@TTIPEND = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ixp_clock*, align 8
  %7 = alloca %struct.ixp46x_ts_regs*, align 8
  %8 = alloca %struct.ptp_clock_event, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.ixp_clock*
  store %struct.ixp_clock* %14, %struct.ixp_clock** %6, align 8
  %15 = load %struct.ixp_clock*, %struct.ixp_clock** %6, align 8
  %16 = getelementptr inbounds %struct.ixp_clock, %struct.ixp_clock* %15, i32 0, i32 3
  %17 = load %struct.ixp46x_ts_regs*, %struct.ixp46x_ts_regs** %16, align 8
  store %struct.ixp46x_ts_regs* %17, %struct.ixp46x_ts_regs** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.ixp46x_ts_regs*, %struct.ixp46x_ts_regs** %7, align 8
  %19 = getelementptr inbounds %struct.ixp46x_ts_regs, %struct.ixp46x_ts_regs* %18, i32 0, i32 0
  %20 = call i32 @__raw_readl(i32* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @TSER_SNS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %2
  %26 = load i32, i32* @TSER_SNS, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load %struct.ixp_clock*, %struct.ixp_clock** %6, align 8
  %30 = getelementptr inbounds %struct.ixp_clock, %struct.ixp_clock* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %25
  %34 = load %struct.ixp46x_ts_regs*, %struct.ixp46x_ts_regs** %7, align 8
  %35 = getelementptr inbounds %struct.ixp46x_ts_regs, %struct.ixp46x_ts_regs* %34, i32 0, i32 4
  %36 = call i32 @__raw_readl(i32* %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.ixp46x_ts_regs*, %struct.ixp46x_ts_regs** %7, align 8
  %38 = getelementptr inbounds %struct.ixp46x_ts_regs, %struct.ixp46x_ts_regs* %37, i32 0, i32 3
  %39 = call i32 @__raw_readl(i32* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i8*, i8** @PTP_CLOCK_EXTTS, align 8
  %41 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %8, i32 0, i32 2
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %8, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load i32, i32* %11, align 4
  %44 = shl i32 %43, 32
  %45 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %8, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %8, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @TICKS_NS_SHIFT, align 4
  %51 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %8, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load %struct.ixp_clock*, %struct.ixp_clock** %6, align 8
  %55 = getelementptr inbounds %struct.ixp_clock, %struct.ixp_clock* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ptp_clock_event(i32 %56, %struct.ptp_clock_event* %8)
  br label %58

58:                                               ; preds = %33, %25
  br label %59

59:                                               ; preds = %58, %2
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @TSER_SNM, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %98

64:                                               ; preds = %59
  %65 = load i32, i32* @TSER_SNM, align 4
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load %struct.ixp_clock*, %struct.ixp_clock** %6, align 8
  %69 = getelementptr inbounds %struct.ixp_clock, %struct.ixp_clock* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %64
  %73 = load %struct.ixp46x_ts_regs*, %struct.ixp46x_ts_regs** %7, align 8
  %74 = getelementptr inbounds %struct.ixp46x_ts_regs, %struct.ixp46x_ts_regs* %73, i32 0, i32 2
  %75 = call i32 @__raw_readl(i32* %74)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.ixp46x_ts_regs*, %struct.ixp46x_ts_regs** %7, align 8
  %77 = getelementptr inbounds %struct.ixp46x_ts_regs, %struct.ixp46x_ts_regs* %76, i32 0, i32 1
  %78 = call i32 @__raw_readl(i32* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i8*, i8** @PTP_CLOCK_EXTTS, align 8
  %80 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %8, i32 0, i32 2
  store i8* %79, i8** %80, align 8
  %81 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %8, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load i32, i32* %11, align 4
  %83 = shl i32 %82, 32
  %84 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %8, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %10, align 4
  %86 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %8, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %85
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @TICKS_NS_SHIFT, align 4
  %90 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %8, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, %89
  store i32 %92, i32* %90, align 4
  %93 = load %struct.ixp_clock*, %struct.ixp_clock** %6, align 8
  %94 = getelementptr inbounds %struct.ixp_clock, %struct.ixp_clock* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ptp_clock_event(i32 %95, %struct.ptp_clock_event* %8)
  br label %97

97:                                               ; preds = %72, %64
  br label %98

98:                                               ; preds = %97, %59
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @TTIPEND, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @TTIPEND, align 4
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %103, %98
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.ixp46x_ts_regs*, %struct.ixp46x_ts_regs** %7, align 8
  %113 = getelementptr inbounds %struct.ixp46x_ts_regs, %struct.ixp46x_ts_regs* %112, i32 0, i32 0
  %114 = call i32 @__raw_writel(i32 %111, i32* %113)
  %115 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %115, i32* %3, align 4
  br label %118

116:                                              ; preds = %107
  %117 = load i32, i32* @IRQ_NONE, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %110
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @__raw_readl(i32*) #1

declare dso_local i32 @ptp_clock_event(i32, %struct.ptp_clock_event*) #1

declare dso_local i32 @__raw_writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
