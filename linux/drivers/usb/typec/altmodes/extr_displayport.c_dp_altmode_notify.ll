; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_dp_altmode_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_dp_altmode_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dp_altmode = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dp_altmode*)* @dp_altmode_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp_altmode_notify(%struct.dp_altmode* %0) #0 {
  %2 = alloca %struct.dp_altmode*, align 8
  %3 = alloca i32, align 4
  store %struct.dp_altmode* %0, %struct.dp_altmode** %2, align 8
  %4 = load %struct.dp_altmode*, %struct.dp_altmode** %2, align 8
  %5 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @DP_CONF_GET_PIN_ASSIGN(i32 %7)
  %9 = call i32 @get_count_order(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.dp_altmode*, %struct.dp_altmode** %2, align 8
  %11 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @TYPEC_MODAL_STATE(i32 %13)
  %15 = load %struct.dp_altmode*, %struct.dp_altmode** %2, align 8
  %16 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %15, i32 0, i32 0
  %17 = call i32 @typec_altmode_notify(i32 %12, i32 %14, %struct.TYPE_2__* %16)
  ret i32 %17
}

declare dso_local i32 @get_count_order(i32) #1

declare dso_local i32 @DP_CONF_GET_PIN_ASSIGN(i32) #1

declare dso_local i32 @typec_altmode_notify(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @TYPEC_MODAL_STATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
