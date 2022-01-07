; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_altmode_get_partner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_altmode_get_partner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.typec_altmode }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.typec_altmode* @typec_altmode_get_partner(%struct.typec_altmode* %0) #0 {
  %2 = alloca %struct.typec_altmode*, align 8
  store %struct.typec_altmode* %0, %struct.typec_altmode** %2, align 8
  %3 = load %struct.typec_altmode*, %struct.typec_altmode** %2, align 8
  %4 = icmp ne %struct.typec_altmode* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.typec_altmode*, %struct.typec_altmode** %2, align 8
  %7 = call %struct.TYPE_4__* @to_altmode(%struct.typec_altmode* %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %5
  %13 = phi %struct.typec_altmode* [ %10, %5 ], [ null, %11 ]
  ret %struct.typec_altmode* %13
}

declare dso_local %struct.TYPE_4__* @to_altmode(%struct.typec_altmode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
