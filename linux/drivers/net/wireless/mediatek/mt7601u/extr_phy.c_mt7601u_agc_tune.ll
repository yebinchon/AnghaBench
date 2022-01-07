; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_agc_tune.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_agc_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32, i32 }

@MT7601U_STATE_SCANNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7601u_dev*)* @mt7601u_agc_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_agc_tune(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca %struct.mt7601u_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %2, align 8
  %5 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %6 = call i64 @mt7601u_agc_default(%struct.mt7601u_dev* %5)
  store i64 %6, i64* %3, align 8
  %7 = load i32, i32* @MT7601U_STATE_SCANNING, align 4
  %8 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %8, i32 0, i32 2
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %15 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %18 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %17, i32 0, i32 1
  %19 = call i64 @ewma_rssi_read(i32* %18)
  store i64 %19, i64* %4, align 8
  %20 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %21 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock_bh(i32* %21)
  %23 = load i64, i64* %4, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %50

26:                                               ; preds = %13
  %27 = load i64, i64* %4, align 8
  %28 = sub nsw i64 0, %27
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp sle i64 %29, -70
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i64, i64* %3, align 8
  %33 = sub nsw i64 %32, 32
  store i64 %33, i64* %3, align 8
  br label %41

34:                                               ; preds = %26
  %35 = load i64, i64* %4, align 8
  %36 = icmp sle i64 %35, -60
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, i64* %3, align 8
  %39 = sub nsw i64 %38, 16
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i64, i64* %3, align 8
  %43 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %44 = call i64 @mt7601u_bbp_rr(%struct.mt7601u_dev* %43, i32 66)
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @mt7601u_bbp_wr(%struct.mt7601u_dev* %47, i32 66, i64 %48)
  br label %50

50:                                               ; preds = %12, %25, %46, %41
  ret void
}

declare dso_local i64 @mt7601u_agc_default(%struct.mt7601u_dev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @ewma_rssi_read(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @mt7601u_bbp_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @mt7601u_bbp_wr(%struct.mt7601u_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
