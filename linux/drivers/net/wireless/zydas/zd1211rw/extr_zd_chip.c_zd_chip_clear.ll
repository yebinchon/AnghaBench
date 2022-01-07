; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_zd_chip_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_zd_chip_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zd_chip_clear(%struct.zd_chip* %0) #0 {
  %2 = alloca %struct.zd_chip*, align 8
  store %struct.zd_chip* %0, %struct.zd_chip** %2, align 8
  %3 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %4 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %3, i32 0, i32 0
  %5 = call i32 @mutex_is_locked(i32* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @ZD_ASSERT(i32 %8)
  %10 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %11 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %10, i32 0, i32 2
  %12 = call i32 @zd_usb_clear(i32* %11)
  %13 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %14 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %13, i32 0, i32 1
  %15 = call i32 @zd_rf_clear(i32* %14)
  %16 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %17 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %16, i32 0, i32 0
  %18 = call i32 @mutex_destroy(i32* %17)
  %19 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %20 = call i32 @ZD_MEMCLEAR(%struct.zd_chip* %19, i32 12)
  ret void
}

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @zd_usb_clear(i32*) #1

declare dso_local i32 @zd_rf_clear(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @ZD_MEMCLEAR(%struct.zd_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
