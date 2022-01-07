; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_partner_register_altmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_partner_register_altmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { i32 }
%struct.typec_partner = type { i32 }
%struct.typec_altmode_desc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.typec_altmode* @typec_partner_register_altmode(%struct.typec_partner* %0, %struct.typec_altmode_desc* %1) #0 {
  %3 = alloca %struct.typec_partner*, align 8
  %4 = alloca %struct.typec_altmode_desc*, align 8
  store %struct.typec_partner* %0, %struct.typec_partner** %3, align 8
  store %struct.typec_altmode_desc* %1, %struct.typec_altmode_desc** %4, align 8
  %5 = load %struct.typec_partner*, %struct.typec_partner** %3, align 8
  %6 = getelementptr inbounds %struct.typec_partner, %struct.typec_partner* %5, i32 0, i32 0
  %7 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %4, align 8
  %8 = call %struct.typec_altmode* @typec_register_altmode(i32* %6, %struct.typec_altmode_desc* %7)
  ret %struct.typec_altmode* %8
}

declare dso_local %struct.typec_altmode* @typec_register_altmode(i32*, %struct.typec_altmode_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
