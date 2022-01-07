; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_tx_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_tx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i64, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }

@TCR = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i32 0, align 4
@MGSL_MODE_ASYNC = common dso_local global i64 0, align 8
@HDLC_FLAG_AUTO_RTS = common dso_local global i32 0, align 4
@SerialSignal_RTS = common dso_local global i32 0, align 4
@IRQ_TXDATA = common dso_local global i32 0, align 4
@IRQ_TXUNDER = common dso_local global i16 0, align 2
@IRQ_TXIDLE = common dso_local global i16 0, align 2
@SSR = common dso_local global i32 0, align 4
@TDDAR = common dso_local global i32 0, align 4
@TDCSR = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @tx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_start(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %3 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %4 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %9 = load i32, i32* @TCR, align 4
  %10 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %11 = load i32, i32* @TCR, align 4
  %12 = call i32 @rd_reg16(%struct.slgt_info* %10, i32 %11)
  %13 = load i32, i32* @BIT1, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @BIT2, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = trunc i32 %17 to i16
  %19 = call i32 @wr_reg16(%struct.slgt_info* %8, i32 %9, i16 zeroext %18)
  %20 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %21 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %7, %1
  %23 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %24 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %23, i32 0, i32 5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %27 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @desc_count(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %125

34:                                               ; preds = %22
  %35 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %36 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %35, i32 0, i32 2
  store i32 0, i32* %36, align 8
  %37 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %38 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MGSL_MODE_ASYNC, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %92

43:                                               ; preds = %34
  %44 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %45 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @HDLC_FLAG_AUTO_RTS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %43
  %52 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %53 = call i32 @get_signals(%struct.slgt_info* %52)
  %54 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %55 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SerialSignal_RTS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* @SerialSignal_RTS, align 4
  %62 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %63 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %67 = call i32 @set_signals(%struct.slgt_info* %66)
  %68 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %69 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %68, i32 0, i32 2
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %60, %51
  br label %71

71:                                               ; preds = %70, %43
  %72 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %73 = load i32, i32* @IRQ_TXDATA, align 4
  %74 = call i32 @slgt_irq_off(%struct.slgt_info* %72, i32 %73)
  %75 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %76 = load i16, i16* @IRQ_TXUNDER, align 2
  %77 = zext i16 %76 to i32
  %78 = load i16, i16* @IRQ_TXIDLE, align 2
  %79 = zext i16 %78 to i32
  %80 = add nsw i32 %77, %79
  %81 = trunc i32 %80 to i16
  %82 = call i32 @slgt_irq_on(%struct.slgt_info* %75, i16 zeroext %81)
  %83 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %84 = load i32, i32* @SSR, align 4
  %85 = load i16, i16* @IRQ_TXIDLE, align 2
  %86 = zext i16 %85 to i32
  %87 = load i16, i16* @IRQ_TXUNDER, align 2
  %88 = zext i16 %87 to i32
  %89 = add nsw i32 %86, %88
  %90 = trunc i32 %89 to i16
  %91 = call i32 @wr_reg16(%struct.slgt_info* %83, i32 %84, i16 zeroext %90)
  br label %103

92:                                               ; preds = %34
  %93 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %94 = load i32, i32* @IRQ_TXDATA, align 4
  %95 = call i32 @slgt_irq_off(%struct.slgt_info* %93, i32 %94)
  %96 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %97 = load i16, i16* @IRQ_TXIDLE, align 2
  %98 = call i32 @slgt_irq_on(%struct.slgt_info* %96, i16 zeroext %97)
  %99 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %100 = load i32, i32* @SSR, align 4
  %101 = load i16, i16* @IRQ_TXIDLE, align 2
  %102 = call i32 @wr_reg16(%struct.slgt_info* %99, i32 %100, i16 zeroext %101)
  br label %103

103:                                              ; preds = %92, %71
  %104 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %105 = load i32, i32* @TDDAR, align 4
  %106 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %107 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %106, i32 0, i32 5
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %110 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @wr_reg32(%struct.slgt_info* %104, i32 %105, i64 %114)
  %116 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %117 = load i32, i32* @TDCSR, align 4
  %118 = load i32, i32* @BIT2, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* @BIT0, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @wr_reg32(%struct.slgt_info* %116, i32 %117, i64 %121)
  %123 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %124 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %123, i32 0, i32 4
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %103, %22
  ret void
}

declare dso_local i32 @wr_reg16(%struct.slgt_info*, i32, i16 zeroext) #1

declare dso_local i32 @rd_reg16(%struct.slgt_info*, i32) #1

declare dso_local i64 @desc_count(i64) #1

declare dso_local i32 @get_signals(%struct.slgt_info*) #1

declare dso_local i32 @set_signals(%struct.slgt_info*) #1

declare dso_local i32 @slgt_irq_off(%struct.slgt_info*, i32) #1

declare dso_local i32 @slgt_irq_on(%struct.slgt_info*, i16 zeroext) #1

declare dso_local i32 @wr_reg32(%struct.slgt_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
