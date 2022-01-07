; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_init.c_mt76x0_init_bbp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_init.c_mt76x0_init_bbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x0_bbp_switch_item = type { i32, %struct.mt76_reg_pair }
%struct.mt76_reg_pair = type { i32, i32 }
%struct.mt76x02_dev = type { i32 }

@mt76x0_bbp_init_tab = common dso_local global i32 0, align 4
@mt76x0_bbp_switch_tab = common dso_local global %struct.mt76x0_bbp_switch_item* null, align 8
@RF_G_BAND = common dso_local global i32 0, align 4
@RF_BW_20 = common dso_local global i32 0, align 4
@mt76x0_dcoc_tab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*)* @mt76x0_init_bbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x0_init_bbp(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt76x0_bbp_switch_item*, align 8
  %7 = alloca %struct.mt76_reg_pair*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %9 = call i32 @mt76x0_phy_wait_bbp_ready(%struct.mt76x02_dev* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %16 = load i32, i32* @mt76x0_bbp_init_tab, align 4
  %17 = call i32 @RANDOM_WRITE(%struct.mt76x02_dev* %15, i32 %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %51, %14
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.mt76x0_bbp_switch_item*, %struct.mt76x0_bbp_switch_item** @mt76x0_bbp_switch_tab, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.mt76x0_bbp_switch_item* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %18
  %24 = load %struct.mt76x0_bbp_switch_item*, %struct.mt76x0_bbp_switch_item** @mt76x0_bbp_switch_tab, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mt76x0_bbp_switch_item, %struct.mt76x0_bbp_switch_item* %24, i64 %26
  store %struct.mt76x0_bbp_switch_item* %27, %struct.mt76x0_bbp_switch_item** %6, align 8
  %28 = load %struct.mt76x0_bbp_switch_item*, %struct.mt76x0_bbp_switch_item** %6, align 8
  %29 = getelementptr inbounds %struct.mt76x0_bbp_switch_item, %struct.mt76x0_bbp_switch_item* %28, i32 0, i32 1
  store %struct.mt76_reg_pair* %29, %struct.mt76_reg_pair** %7, align 8
  %30 = load i32, i32* @RF_G_BAND, align 4
  %31 = load i32, i32* @RF_BW_20, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.mt76x0_bbp_switch_item*, %struct.mt76x0_bbp_switch_item** %6, align 8
  %34 = getelementptr inbounds %struct.mt76x0_bbp_switch_item, %struct.mt76x0_bbp_switch_item* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %32, %35
  %37 = load i32, i32* @RF_G_BAND, align 4
  %38 = load i32, i32* @RF_BW_20, align 4
  %39 = or i32 %37, %38
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %23
  %42 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %43 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %7, align 8
  %44 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %7, align 8
  %47 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mt76_wr(%struct.mt76x02_dev* %42, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %41, %23
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %18

54:                                               ; preds = %18
  %55 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %56 = load i32, i32* @mt76x0_dcoc_tab, align 4
  %57 = call i32 @RANDOM_WRITE(%struct.mt76x02_dev* %55, i32 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @mt76x0_phy_wait_bbp_ready(%struct.mt76x02_dev*) #1

declare dso_local i32 @RANDOM_WRITE(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mt76x0_bbp_switch_item*) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
