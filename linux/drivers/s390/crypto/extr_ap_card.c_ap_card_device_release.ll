; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_card.c_ap_card_device_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_card.c_ap_card_device_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ap_card = type { i32 }

@ap_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @ap_card_device_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap_card_device_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ap_card*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.ap_card* @to_ap_card(%struct.device* %4)
  store %struct.ap_card* %5, %struct.ap_card** %3, align 8
  %6 = load %struct.ap_card*, %struct.ap_card** %3, align 8
  %7 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %6, i32 0, i32 0
  %8 = call i32 @list_empty(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = call i32 @spin_lock_bh(i32* @ap_list_lock)
  %12 = load %struct.ap_card*, %struct.ap_card** %3, align 8
  %13 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %12, i32 0, i32 0
  %14 = call i32 @list_del_init(i32* %13)
  %15 = call i32 @spin_unlock_bh(i32* @ap_list_lock)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.ap_card*, %struct.ap_card** %3, align 8
  %18 = call i32 @kfree(%struct.ap_card* %17)
  ret void
}

declare dso_local %struct.ap_card* @to_ap_card(%struct.device*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.ap_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
