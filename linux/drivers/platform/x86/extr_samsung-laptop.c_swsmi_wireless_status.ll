; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_swsmi_wireless_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_swsmi_wireless_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_laptop = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sabi_commands }
%struct.sabi_commands = type { i32 }
%struct.sabi_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.samsung_laptop*, %struct.sabi_data*)* @swsmi_wireless_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swsmi_wireless_status(%struct.samsung_laptop* %0, %struct.sabi_data* %1) #0 {
  %3 = alloca %struct.samsung_laptop*, align 8
  %4 = alloca %struct.sabi_data*, align 8
  %5 = alloca %struct.sabi_commands*, align 8
  store %struct.samsung_laptop* %0, %struct.samsung_laptop** %3, align 8
  store %struct.sabi_data* %1, %struct.sabi_data** %4, align 8
  %6 = load %struct.samsung_laptop*, %struct.samsung_laptop** %3, align 8
  %7 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.sabi_commands* %9, %struct.sabi_commands** %5, align 8
  %10 = load %struct.samsung_laptop*, %struct.samsung_laptop** %3, align 8
  %11 = load %struct.sabi_commands*, %struct.sabi_commands** %5, align 8
  %12 = getelementptr inbounds %struct.sabi_commands, %struct.sabi_commands* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sabi_data*, %struct.sabi_data** %4, align 8
  %15 = call i32 @sabi_command(%struct.samsung_laptop* %10, i32 %13, i32* null, %struct.sabi_data* %14)
  ret i32 %15
}

declare dso_local i32 @sabi_command(%struct.samsung_laptop*, i32, i32*, %struct.sabi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
