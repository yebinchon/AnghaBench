; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_dp_altmode_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_dp_altmode_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dp_altmode = type { i32 }

@dp_altmode_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dp_altmode_remove(%struct.typec_altmode* %0) #0 {
  %2 = alloca %struct.typec_altmode*, align 8
  %3 = alloca %struct.dp_altmode*, align 8
  store %struct.typec_altmode* %0, %struct.typec_altmode** %2, align 8
  %4 = load %struct.typec_altmode*, %struct.typec_altmode** %2, align 8
  %5 = call %struct.dp_altmode* @typec_altmode_get_drvdata(%struct.typec_altmode* %4)
  store %struct.dp_altmode* %5, %struct.dp_altmode** %3, align 8
  %6 = load %struct.typec_altmode*, %struct.typec_altmode** %2, align 8
  %7 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @sysfs_remove_group(i32* %8, i32* @dp_altmode_group)
  %10 = load %struct.dp_altmode*, %struct.dp_altmode** %3, align 8
  %11 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %10, i32 0, i32 0
  %12 = call i32 @cancel_work_sync(i32* %11)
  ret void
}

declare dso_local %struct.dp_altmode* @typec_altmode_get_drvdata(%struct.typec_altmode*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
