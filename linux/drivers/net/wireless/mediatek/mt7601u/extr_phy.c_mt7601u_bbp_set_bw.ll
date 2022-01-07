; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_bbp_set_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_bbp_set_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }

@MT_BW_20 = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL_ENABLE_TX = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL_ENABLE_RX = common dso_local global i32 0, align 4
@MT_MAC_STATUS = common dso_local global i32 0, align 4
@MT_MAC_STATUS_TX = common dso_local global i32 0, align 4
@MT_MAC_STATUS_RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7601u_bbp_set_bw(%struct.mt7601u_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt7601u_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %10 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MT_BW_20, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 0, i32 16
  %20 = call i32 @mt7601u_bbp_rmc(%struct.mt7601u_dev* %14, i32 4, i32 24, i32 %19)
  store i32 0, i32* %3, align 4
  br label %57

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %24 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %26 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %27 = call i32 @mt7601u_rr(%struct.mt7601u_dev* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MT_MAC_SYS_CTRL_ENABLE_TX, align 4
  %30 = load i32, i32* @MT_MAC_SYS_CTRL_ENABLE_RX, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %28, %32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %35 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %34, i32 %35, i32 %36)
  %38 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %39 = load i32, i32* @MT_MAC_STATUS, align 4
  %40 = load i32, i32* @MT_MAC_STATUS_TX, align 4
  %41 = load i32, i32* @MT_MAC_STATUS_RX, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @mt76_poll(%struct.mt7601u_dev* %38, i32 %39, i32 %42, i32 0, i32 500000)
  %44 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @MT_BW_20, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 0, i32 16
  %50 = call i32 @mt7601u_bbp_rmc(%struct.mt7601u_dev* %44, i32 4, i32 24, i32 %49)
  %51 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %52 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %51, i32 %52, i32 %53)
  %55 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %56 = call i32 @mt7601u_load_bbp_temp_table_bw(%struct.mt7601u_dev* %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %21, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @mt7601u_bbp_rmc(%struct.mt7601u_dev*, i32, i32, i32) #1

declare dso_local i32 @mt7601u_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mt76_poll(%struct.mt7601u_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt7601u_load_bbp_temp_table_bw(%struct.mt7601u_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
