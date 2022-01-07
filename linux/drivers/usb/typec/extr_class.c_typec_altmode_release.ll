; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_altmode_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_altmode_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.altmode = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @typec_altmode_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @typec_altmode_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.altmode*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call i32 @to_typec_altmode(%struct.device* %4)
  %6 = call %struct.altmode* @to_altmode(i32 %5)
  store %struct.altmode* %6, %struct.altmode** %3, align 8
  %7 = load %struct.altmode*, %struct.altmode** %3, align 8
  %8 = call i32 @typec_altmode_put_partner(%struct.altmode* %7)
  %9 = load %struct.altmode*, %struct.altmode** %3, align 8
  %10 = getelementptr inbounds %struct.altmode, %struct.altmode* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.altmode*, %struct.altmode** %3, align 8
  %15 = getelementptr inbounds %struct.altmode, %struct.altmode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @altmode_id_remove(i32 %13, i32 %16)
  %18 = load %struct.altmode*, %struct.altmode** %3, align 8
  %19 = call i32 @kfree(%struct.altmode* %18)
  ret void
}

declare dso_local %struct.altmode* @to_altmode(i32) #1

declare dso_local i32 @to_typec_altmode(%struct.device*) #1

declare dso_local i32 @typec_altmode_put_partner(%struct.altmode*) #1

declare dso_local i32 @altmode_id_remove(i32, i32) #1

declare dso_local i32 @kfree(%struct.altmode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
