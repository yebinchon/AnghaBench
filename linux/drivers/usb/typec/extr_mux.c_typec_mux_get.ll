; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_mux.c_typec_mux_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_mux.c_typec_mux_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_mux = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.typec_altmode_desc = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"mode-switch\00", align 1
@typec_mux_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.typec_mux* @typec_mux_get(%struct.device* %0, %struct.typec_altmode_desc* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.typec_altmode_desc*, align 8
  %5 = alloca %struct.typec_mux*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.typec_altmode_desc* %1, %struct.typec_altmode_desc** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %4, align 8
  %8 = bitcast %struct.typec_altmode_desc* %7 to i8*
  %9 = load i32, i32* @typec_mux_match, align 4
  %10 = call %struct.typec_mux* @device_connection_find_match(%struct.device* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %9)
  store %struct.typec_mux* %10, %struct.typec_mux** %5, align 8
  %11 = load %struct.typec_mux*, %struct.typec_mux** %5, align 8
  %12 = call i32 @IS_ERR_OR_NULL(%struct.typec_mux* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %2
  %15 = load %struct.typec_mux*, %struct.typec_mux** %5, align 8
  %16 = getelementptr inbounds %struct.typec_mux, %struct.typec_mux* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @try_module_get(i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  br label %28

28:                                               ; preds = %14, %2
  %29 = load %struct.typec_mux*, %struct.typec_mux** %5, align 8
  ret %struct.typec_mux* %29
}

declare dso_local %struct.typec_mux* @device_connection_find_match(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.typec_mux*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @try_module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
