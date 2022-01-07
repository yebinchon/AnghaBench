; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_set_chan_bbp_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_set_chan_bbp_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x0_bbp_switch_item = type { i32, %struct.mt76_reg_pair }
%struct.mt76_reg_pair = type { i64, i32 }
%struct.mt76x02_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@mt76x0_bbp_switch_tab = common dso_local global %struct.mt76x0_bbp_switch_item* null, align 8
@AGC = common dso_local global i32 0, align 4
@MT_BBP_AGC_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*, i32)* @mt76x0_phy_set_chan_bbp_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x0_phy_set_chan_bbp_params(%struct.mt76x02_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt76x0_bbp_switch_item*, align 8
  %7 = alloca %struct.mt76_reg_pair*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %77, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.mt76x0_bbp_switch_item*, %struct.mt76x0_bbp_switch_item** @mt76x0_bbp_switch_tab, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.mt76x0_bbp_switch_item* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %80

15:                                               ; preds = %10
  %16 = load %struct.mt76x0_bbp_switch_item*, %struct.mt76x0_bbp_switch_item** @mt76x0_bbp_switch_tab, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mt76x0_bbp_switch_item, %struct.mt76x0_bbp_switch_item* %16, i64 %18
  store %struct.mt76x0_bbp_switch_item* %19, %struct.mt76x0_bbp_switch_item** %6, align 8
  %20 = load %struct.mt76x0_bbp_switch_item*, %struct.mt76x0_bbp_switch_item** %6, align 8
  %21 = getelementptr inbounds %struct.mt76x0_bbp_switch_item, %struct.mt76x0_bbp_switch_item* %20, i32 0, i32 1
  store %struct.mt76_reg_pair* %21, %struct.mt76_reg_pair** %7, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.mt76x0_bbp_switch_item*, %struct.mt76x0_bbp_switch_item** %6, align 8
  %24 = getelementptr inbounds %struct.mt76x0_bbp_switch_item, %struct.mt76x0_bbp_switch_item* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %22, %25
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  br label %77

30:                                               ; preds = %15
  %31 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %7, align 8
  %32 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @AGC, align 4
  %35 = call i64 @MT_BBP(i32 %34, i32 8)
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %30
  %38 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %7, align 8
  %39 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @MT_BBP_AGC_GAIN, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @FIELD_GET(i32 %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 2
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @MT_BBP_AGC_GAIN, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @MT_BBP_AGC_GAIN, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @FIELD_PREP(i32 %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %62 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %7, align 8
  %63 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @mt76_wr(%struct.mt76x02_dev* %61, i64 %64, i32 %65)
  br label %76

67:                                               ; preds = %30
  %68 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %69 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %7, align 8
  %70 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %7, align 8
  %73 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @mt76_wr(%struct.mt76x02_dev* %68, i64 %71, i32 %74)
  br label %76

76:                                               ; preds = %67, %37
  br label %77

77:                                               ; preds = %76, %29
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %10

80:                                               ; preds = %10
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.mt76x0_bbp_switch_item*) #1

declare dso_local i64 @MT_BBP(i32, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
