; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.typec_altmode_driver = type { i32 (%struct.typec_altmode*)* }
%struct.typec_altmode = type opaque
%struct.typec_altmode.0 = type { i32*, i32*, i64 }
%struct.altmode = type { i32 }

@TYPEC_STATE_SAFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @typec_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typec_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.typec_altmode_driver*, align 8
  %4 = alloca %struct.typec_altmode.0*, align 8
  %5 = alloca %struct.altmode*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.typec_altmode_driver* @to_altmode_driver(i32 %8)
  store %struct.typec_altmode_driver* %9, %struct.typec_altmode_driver** %3, align 8
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call %struct.typec_altmode.0* @to_typec_altmode(%struct.device* %10)
  store %struct.typec_altmode.0* %11, %struct.typec_altmode.0** %4, align 8
  %12 = load %struct.typec_altmode.0*, %struct.typec_altmode.0** %4, align 8
  %13 = call %struct.altmode* @to_altmode(%struct.typec_altmode.0* %12)
  store %struct.altmode* %13, %struct.altmode** %5, align 8
  %14 = load %struct.altmode*, %struct.altmode** %5, align 8
  %15 = call i32 @typec_altmode_remove_links(%struct.altmode* %14)
  %16 = load %struct.typec_altmode_driver*, %struct.typec_altmode_driver** %3, align 8
  %17 = getelementptr inbounds %struct.typec_altmode_driver, %struct.typec_altmode_driver* %16, i32 0, i32 0
  %18 = load i32 (%struct.typec_altmode*)*, i32 (%struct.typec_altmode*)** %17, align 8
  %19 = icmp ne i32 (%struct.typec_altmode*)* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.typec_altmode_driver*, %struct.typec_altmode_driver** %3, align 8
  %22 = getelementptr inbounds %struct.typec_altmode_driver, %struct.typec_altmode_driver* %21, i32 0, i32 0
  %23 = load i32 (%struct.typec_altmode*)*, i32 (%struct.typec_altmode*)** %22, align 8
  %24 = load %struct.device*, %struct.device** %2, align 8
  %25 = call %struct.typec_altmode.0* @to_typec_altmode(%struct.device* %24)
  %26 = bitcast %struct.typec_altmode.0* %25 to %struct.typec_altmode*
  %27 = call i32 %23(%struct.typec_altmode* %26)
  br label %28

28:                                               ; preds = %20, %1
  %29 = load %struct.typec_altmode.0*, %struct.typec_altmode.0** %4, align 8
  %30 = getelementptr inbounds %struct.typec_altmode.0, %struct.typec_altmode.0* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.typec_altmode.0*, %struct.typec_altmode.0** %4, align 8
  %35 = load i32, i32* @TYPEC_STATE_SAFE, align 4
  %36 = call i32 @typec_altmode_set_state(%struct.typec_altmode.0* %34, i32 %35)
  %37 = call i32 @WARN_ON(i32 %36)
  %38 = load %struct.typec_altmode.0*, %struct.typec_altmode.0** %4, align 8
  %39 = call i32 @typec_altmode_update_active(%struct.typec_altmode.0* %38, i32 0)
  br label %40

40:                                               ; preds = %33, %28
  %41 = load %struct.typec_altmode.0*, %struct.typec_altmode.0** %4, align 8
  %42 = getelementptr inbounds %struct.typec_altmode.0, %struct.typec_altmode.0* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.typec_altmode.0*, %struct.typec_altmode.0** %4, align 8
  %44 = getelementptr inbounds %struct.typec_altmode.0, %struct.typec_altmode.0* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  ret i32 0
}

declare dso_local %struct.typec_altmode_driver* @to_altmode_driver(i32) #1

declare dso_local %struct.typec_altmode.0* @to_typec_altmode(%struct.device*) #1

declare dso_local %struct.altmode* @to_altmode(%struct.typec_altmode.0*) #1

declare dso_local i32 @typec_altmode_remove_links(%struct.altmode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @typec_altmode_set_state(%struct.typec_altmode.0*, i32) #1

declare dso_local i32 @typec_altmode_update_active(%struct.typec_altmode.0*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
