; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_set_channel_rxdfir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_set_channel_rxdfir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@RTW_CHANNEL_WIDTH_40 = common dso_local global i64 0, align 8
@REG_ACBB0 = common dso_local global i32 0, align 4
@REG_ACBBRXFIR = common dso_local global i32 0, align 4
@REG_TXDFIR = common dso_local global i32 0, align 4
@RTW_CHANNEL_WIDTH_80 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64)* @rtw8822b_set_channel_rxdfir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_set_channel_rxdfir(%struct.rtw_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @RTW_CHANNEL_WIDTH_40, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %10 = load i32, i32* @REG_ACBB0, align 4
  %11 = call i32 @BIT(i32 29)
  %12 = call i32 @BIT(i32 28)
  %13 = or i32 %11, %12
  %14 = call i32 @rtw_write32_mask(%struct.rtw_dev* %9, i32 %10, i32 %13, i32 1)
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %16 = load i32, i32* @REG_ACBBRXFIR, align 4
  %17 = call i32 @BIT(i32 29)
  %18 = call i32 @BIT(i32 28)
  %19 = or i32 %17, %18
  %20 = call i32 @rtw_write32_mask(%struct.rtw_dev* %15, i32 %16, i32 %19, i32 0)
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %22 = load i32, i32* @REG_TXDFIR, align 4
  %23 = call i32 @BIT(i32 31)
  %24 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %21, i32 %22, i32 %23, i32 0)
  br label %64

25:                                               ; preds = %2
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @RTW_CHANNEL_WIDTH_80, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %31 = load i32, i32* @REG_ACBB0, align 4
  %32 = call i32 @BIT(i32 29)
  %33 = call i32 @BIT(i32 28)
  %34 = or i32 %32, %33
  %35 = call i32 @rtw_write32_mask(%struct.rtw_dev* %30, i32 %31, i32 %34, i32 2)
  %36 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %37 = load i32, i32* @REG_ACBBRXFIR, align 4
  %38 = call i32 @BIT(i32 29)
  %39 = call i32 @BIT(i32 28)
  %40 = or i32 %38, %39
  %41 = call i32 @rtw_write32_mask(%struct.rtw_dev* %36, i32 %37, i32 %40, i32 1)
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %43 = load i32, i32* @REG_TXDFIR, align 4
  %44 = call i32 @BIT(i32 31)
  %45 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %42, i32 %43, i32 %44, i32 0)
  br label %63

46:                                               ; preds = %25
  %47 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %48 = load i32, i32* @REG_ACBB0, align 4
  %49 = call i32 @BIT(i32 29)
  %50 = call i32 @BIT(i32 28)
  %51 = or i32 %49, %50
  %52 = call i32 @rtw_write32_mask(%struct.rtw_dev* %47, i32 %48, i32 %51, i32 2)
  %53 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %54 = load i32, i32* @REG_ACBBRXFIR, align 4
  %55 = call i32 @BIT(i32 29)
  %56 = call i32 @BIT(i32 28)
  %57 = or i32 %55, %56
  %58 = call i32 @rtw_write32_mask(%struct.rtw_dev* %53, i32 %54, i32 %57, i32 2)
  %59 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %60 = load i32, i32* @REG_TXDFIR, align 4
  %61 = call i32 @BIT(i32 31)
  %62 = call i32 @rtw_write32s_mask(%struct.rtw_dev* %59, i32 %60, i32 %61, i32 1)
  br label %63

63:                                               ; preds = %46, %29
  br label %64

64:                                               ; preds = %63, %8
  ret void
}

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_write32s_mask(%struct.rtw_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
