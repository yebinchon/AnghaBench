; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_rf_csr_wr_rp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_rf_csr_wr_rp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }
%struct.mt76_reg_pair = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*, %struct.mt76_reg_pair*, i32)* @mt76x0_phy_rf_csr_wr_rp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x0_phy_rf_csr_wr_rp(%struct.mt76x02_dev* %0, %struct.mt76_reg_pair* %1, i32 %2) #0 {
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca %struct.mt76_reg_pair*, align 8
  %6 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store %struct.mt76_reg_pair* %1, %struct.mt76_reg_pair** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %7

7:                                                ; preds = %11, %3
  %8 = load i32, i32* %6, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %6, align 4
  %10 = icmp sgt i32 %8, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %13 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %5, align 8
  %14 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %5, align 8
  %17 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mt76x0_rf_csr_wr(%struct.mt76x02_dev* %12, i32 %15, i32 %18)
  %20 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %5, align 8
  %21 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %20, i32 1
  store %struct.mt76_reg_pair* %21, %struct.mt76_reg_pair** %5, align 8
  br label %7

22:                                               ; preds = %7
  ret void
}

declare dso_local i32 @mt76x0_rf_csr_wr(%struct.mt76x02_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
