; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/extr_..uwb.h_uwb_dev_addr_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/extr_..uwb.h_uwb_dev_addr_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_dev_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_dev_addr*, %struct.uwb_dev_addr*)* @uwb_dev_addr_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_dev_addr_cmp(%struct.uwb_dev_addr* %0, %struct.uwb_dev_addr* %1) #0 {
  %3 = alloca %struct.uwb_dev_addr*, align 8
  %4 = alloca %struct.uwb_dev_addr*, align 8
  store %struct.uwb_dev_addr* %0, %struct.uwb_dev_addr** %3, align 8
  store %struct.uwb_dev_addr* %1, %struct.uwb_dev_addr** %4, align 8
  %5 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %3, align 8
  %6 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %4, align 8
  %7 = call i32 @memcmp(%struct.uwb_dev_addr* %5, %struct.uwb_dev_addr* %6, i32 4)
  ret i32 %7
}

declare dso_local i32 @memcmp(%struct.uwb_dev_addr*, %struct.uwb_dev_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
