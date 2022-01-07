; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt7601u_check_mac_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt7601u_check_mac_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Error: MAC specific condition occurred\0A\00", align 1
@MT_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL_RESET_CSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7601u_dev*)* @mt7601u_check_mac_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_check_mac_err(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca %struct.mt7601u_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %2, align 8
  %4 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %5 = call i32 @mt7601u_rr(%struct.mt7601u_dev* %4, i32 4340)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @BIT(i32 29)
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @BIT(i32 7)
  %13 = call i32 @BIT(i32 5)
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10, %1
  br label %32

18:                                               ; preds = %10
  %19 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %20 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %24 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %25 = load i32, i32* @MT_MAC_SYS_CTRL_RESET_CSR, align 4
  %26 = call i32 @mt76_set(%struct.mt7601u_dev* %23, i32 %24, i32 %25)
  %27 = call i32 @udelay(i32 10)
  %28 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %29 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %30 = load i32, i32* @MT_MAC_SYS_CTRL_RESET_CSR, align 4
  %31 = call i32 @mt76_clear(%struct.mt7601u_dev* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @mt7601u_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mt76_set(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mt76_clear(%struct.mt7601u_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
