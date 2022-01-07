; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_backend_switch_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_backend_switch_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backend_info = type { i32, i32, %struct.xenbus_device* }
%struct.xenbus_device = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s -> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.backend_info*, i32)* @backend_switch_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backend_switch_state(%struct.backend_info* %0, i32 %1) #0 {
  %3 = alloca %struct.backend_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xenbus_device*, align 8
  store %struct.backend_info* %0, %struct.backend_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %7 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %6, i32 0, i32 2
  %8 = load %struct.xenbus_device*, %struct.xenbus_device** %7, align 8
  store %struct.xenbus_device* %8, %struct.xenbus_device** %5, align 8
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %10 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @xenbus_strstate(i32 %12)
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %17 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %19 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @xenbus_switch_state(%struct.xenbus_device* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @xenbus_strstate(i32) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
