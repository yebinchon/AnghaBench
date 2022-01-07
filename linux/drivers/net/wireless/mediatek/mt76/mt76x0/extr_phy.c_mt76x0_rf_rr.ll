; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_rf_rr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_rf_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mt76_reg_pair = type { i32, i32 }

@MT76_STATE_MCU_RUNNING = common dso_local global i32 0, align 4
@MT_MCU_MEMMAP_RF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*, i32)* @mt76x0_rf_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x0_rf_rr(%struct.mt76x02_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt76_reg_pair, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %9 = call i64 @mt76_is_usb(%struct.mt76x02_dev* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %7, i32 0, i32 0
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %7, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @MT76_STATE_MCU_RUNNING, align 4
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %17 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @test_bit(i32 %15, i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON_ONCE(i32 %22)
  %24 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %25 = load i32, i32* @MT_MCU_MEMMAP_RF, align 4
  %26 = call i32 @mt76_rd_rp(%struct.mt76x02_dev* %24, i32 %25, %struct.mt76_reg_pair* %7, i32 1)
  store i32 %26, i32* %5, align 4
  %27 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %7, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @mt76x0_rf_csr_rr(%struct.mt76x02_dev* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %11
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  ret i32 %41
}

declare dso_local i64 @mt76_is_usb(%struct.mt76x02_dev*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mt76_rd_rp(%struct.mt76x02_dev*, i32, %struct.mt76_reg_pair*, i32) #1

declare dso_local i32 @mt76x0_rf_csr_rr(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
