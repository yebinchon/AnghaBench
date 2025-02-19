; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mcu.c_mt7601u_mcu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mcu.c_mt7601u_mcu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MT7601U_STATE_MCU_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7601u_mcu_init(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  %5 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %10 = call i32 @mt7601u_load_firmware(%struct.mt7601u_dev* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @MT7601U_STATE_MCU_RUNNING, align 4
  %17 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %17, i32 0, i32 0
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %15, %13
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mt7601u_load_firmware(%struct.mt7601u_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
