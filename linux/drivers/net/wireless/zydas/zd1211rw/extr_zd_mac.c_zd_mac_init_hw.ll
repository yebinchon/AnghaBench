; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_zd_mac_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_zd_mac_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.zd_mac = type { i32, i32, i32, %struct.zd_chip }
%struct.zd_chip = type { i32 }

@ENC_SNIFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_mac_init_hw(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.zd_mac*, align 8
  %5 = alloca %struct.zd_chip*, align 8
  %6 = alloca [2 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw* %8)
  store %struct.zd_mac* %9, %struct.zd_mac** %4, align 8
  %10 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %11 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %10, i32 0, i32 3
  store %struct.zd_chip* %11, %struct.zd_chip** %5, align 8
  %12 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %13 = call i32 @zd_chip_enable_int(%struct.zd_chip* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %70

17:                                               ; preds = %1
  %18 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %19 = call i32 @zd_chip_init_hw(%struct.zd_chip* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %67

23:                                               ; preds = %17
  %24 = call i32 (...) @irqs_disabled()
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @ZD_ASSERT(i32 %27)
  %29 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %30 = call i32 @zd_read_regdomain(%struct.zd_chip* %29, i32* %7)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %67

34:                                               ; preds = %23
  %35 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %36 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %35, i32 0, i32 1
  %37 = call i32 @spin_lock_irq(i32* %36)
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %40 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %42 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %44 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock_irq(i32* %44)
  %46 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %47 = load i32, i32* @ENC_SNIFFER, align 4
  %48 = call i32 @zd_set_encryption_type(%struct.zd_chip* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  br label %67

52:                                               ; preds = %34
  %53 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %54 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %57 = call i32 @zd_reg2alpha2(i32 %55, i8* %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %67

61:                                               ; preds = %52
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %63 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %66 = call i32 @regulatory_hint(i32 %64, i8* %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %61, %60, %51, %33, %22
  %68 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %69 = call i32 @zd_chip_disable_int(%struct.zd_chip* %68)
  br label %70

70:                                               ; preds = %67, %16
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @zd_chip_enable_int(%struct.zd_chip*) #1

declare dso_local i32 @zd_chip_init_hw(%struct.zd_chip*) #1

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @zd_read_regdomain(%struct.zd_chip*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @zd_set_encryption_type(%struct.zd_chip*, i32) #1

declare dso_local i32 @zd_reg2alpha2(i32, i8*) #1

declare dso_local i32 @regulatory_hint(i32, i8*) #1

declare dso_local i32 @zd_chip_disable_int(%struct.zd_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
