; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_rfkill_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_rfkill_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { i32 }
%struct.asus_rfkill = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfkill*, i8*)* @asus_rfkill_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_rfkill_query(%struct.rfkill* %0, i8* %1) #0 {
  %3 = alloca %struct.rfkill*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.asus_rfkill*, align 8
  %6 = alloca i32, align 4
  store %struct.rfkill* %0, %struct.rfkill** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.asus_rfkill*
  store %struct.asus_rfkill* %8, %struct.asus_rfkill** %5, align 8
  %9 = load %struct.asus_rfkill*, %struct.asus_rfkill** %5, align 8
  %10 = getelementptr inbounds %struct.asus_rfkill, %struct.asus_rfkill* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.asus_rfkill*, %struct.asus_rfkill** %5, align 8
  %13 = getelementptr inbounds %struct.asus_rfkill, %struct.asus_rfkill* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @asus_wmi_get_devstate_simple(i32 %11, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.asus_rfkill*, %struct.asus_rfkill** %5, align 8
  %21 = getelementptr inbounds %struct.asus_rfkill, %struct.asus_rfkill* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @rfkill_set_sw_state(i32 %22, i32 %26)
  br label %28

28:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @asus_wmi_get_devstate_simple(i32, i32) #1

declare dso_local i32 @rfkill_set_sw_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
