; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hp-wmi.c_hp_wmi_get_sw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hp-wmi.c_hp_wmi_get_sw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPWMI_WIRELESS_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"error executing HPWMI_WIRELESS_QUERY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hp_wmi_get_sw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_wmi_get_sw_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = mul i32 %5, 8
  %7 = shl i32 512, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @HPWMI_WIRELESS_QUERY, align 4
  %9 = call i32 @hp_wmi_read_int(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ONCE(i32 %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i32 @hp_wmi_read_int(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
