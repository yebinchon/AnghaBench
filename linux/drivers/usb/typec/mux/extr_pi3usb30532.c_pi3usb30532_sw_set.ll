; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/mux/extr_pi3usb30532.c_pi3usb30532_sw_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/mux/extr_pi3usb30532.c_pi3usb30532_sw_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_switch = type { i32 }
%struct.pi3usb30532 = type { i32, i32 }

@PI3USB30532_CONF_OPEN = common dso_local global i32 0, align 4
@PI3USB30532_CONF_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typec_switch*, i32)* @pi3usb30532_sw_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pi3usb30532_sw_set(%struct.typec_switch* %0, i32 %1) #0 {
  %3 = alloca %struct.typec_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pi3usb30532*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.typec_switch* %0, %struct.typec_switch** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.typec_switch*, %struct.typec_switch** %3, align 8
  %9 = call %struct.pi3usb30532* @typec_switch_get_drvdata(%struct.typec_switch* %8)
  store %struct.pi3usb30532* %9, %struct.pi3usb30532** %5, align 8
  %10 = load %struct.pi3usb30532*, %struct.pi3usb30532** %5, align 8
  %11 = getelementptr inbounds %struct.pi3usb30532, %struct.pi3usb30532* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.pi3usb30532*, %struct.pi3usb30532** %5, align 8
  %14 = getelementptr inbounds %struct.pi3usb30532, %struct.pi3usb30532* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %28 [
    i32 130, label %17
    i32 129, label %19
    i32 128, label %24
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @PI3USB30532_CONF_OPEN, align 4
  store i32 %18, i32* %6, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load i32, i32* @PI3USB30532_CONF_SWAP, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @PI3USB30532_CONF_SWAP, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %2, %24, %19, %17
  %29 = load %struct.pi3usb30532*, %struct.pi3usb30532** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @pi3usb30532_set_conf(%struct.pi3usb30532* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.pi3usb30532*, %struct.pi3usb30532** %5, align 8
  %33 = getelementptr inbounds %struct.pi3usb30532, %struct.pi3usb30532* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local %struct.pi3usb30532* @typec_switch_get_drvdata(%struct.typec_switch*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pi3usb30532_set_conf(%struct.pi3usb30532*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
