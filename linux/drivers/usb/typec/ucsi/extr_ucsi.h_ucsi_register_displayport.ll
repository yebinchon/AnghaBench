; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.h_ucsi_register_displayport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.h_ucsi_register_displayport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { i32 }
%struct.ucsi_connector = type { i32 }
%struct.typec_altmode_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.typec_altmode* (%struct.ucsi_connector*, i32, i32, %struct.typec_altmode_desc*)* @ucsi_register_displayport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.typec_altmode* @ucsi_register_displayport(%struct.ucsi_connector* %0, i32 %1, i32 %2, %struct.typec_altmode_desc* %3) #0 {
  %5 = alloca %struct.ucsi_connector*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.typec_altmode_desc*, align 8
  store %struct.ucsi_connector* %0, %struct.ucsi_connector** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.typec_altmode_desc* %3, %struct.typec_altmode_desc** %8, align 8
  ret %struct.typec_altmode* null
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
