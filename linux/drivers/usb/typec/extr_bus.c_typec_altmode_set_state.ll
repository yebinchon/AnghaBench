; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_altmode_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_altmode_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.altmode = type { i32, %struct.altmode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typec_altmode*, i32)* @typec_altmode_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typec_altmode_set_state(%struct.typec_altmode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.typec_altmode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.altmode*, align 8
  %8 = alloca i32, align 4
  store %struct.typec_altmode* %0, %struct.typec_altmode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.typec_altmode*, %struct.typec_altmode** %4, align 8
  %10 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @is_typec_port(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.typec_altmode*, %struct.typec_altmode** %4, align 8
  %18 = call %struct.altmode* @to_altmode(%struct.typec_altmode* %17)
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.typec_altmode*, %struct.typec_altmode** %4, align 8
  %21 = call %struct.altmode* @to_altmode(%struct.typec_altmode* %20)
  %22 = getelementptr inbounds %struct.altmode, %struct.altmode* %21, i32 0, i32 1
  %23 = load %struct.altmode*, %struct.altmode** %22, align 8
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi %struct.altmode* [ %18, %16 ], [ %23, %19 ]
  store %struct.altmode* %25, %struct.altmode** %7, align 8
  %26 = load %struct.altmode*, %struct.altmode** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @typec_altmode_set_mux(%struct.altmode* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %24
  %34 = load %struct.altmode*, %struct.altmode** %7, align 8
  %35 = getelementptr inbounds %struct.altmode, %struct.altmode* %34, i32 0, i32 0
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @blocking_notifier_call_chain(i32* %35, i32 %36, i32* null)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %31
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @is_typec_port(i32) #1

declare dso_local %struct.altmode* @to_altmode(%struct.typec_altmode*) #1

declare dso_local i32 @typec_altmode_set_mux(%struct.altmode*, i32) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
