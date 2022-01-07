; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_async_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_async_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_loopback = type { i32 }

@GB_LOOPBACK_TYPE_PING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_loopback*)* @gb_loopback_async_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_loopback_async_ping(%struct.gb_loopback* %0) #0 {
  %2 = alloca %struct.gb_loopback*, align 8
  store %struct.gb_loopback* %0, %struct.gb_loopback** %2, align 8
  %3 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %4 = load i32, i32* @GB_LOOPBACK_TYPE_PING, align 4
  %5 = call i32 @gb_loopback_async_operation(%struct.gb_loopback* %3, i32 %4, i32* null, i32 0, i32 0, i32* null)
  ret i32 %5
}

declare dso_local i32 @gb_loopback_async_operation(%struct.gb_loopback*, i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
