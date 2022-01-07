; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_port_register_altmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_port_register_altmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type opaque
%struct.typec_port = type { i32 }
%struct.typec_altmode_desc = type { i32 }
%struct.typec_mux = type { i32 }
%struct.TYPE_2__ = type { %struct.typec_mux* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.typec_altmode* @typec_port_register_altmode(%struct.typec_port* %0, %struct.typec_altmode_desc* %1) #0 {
  %3 = alloca %struct.typec_altmode*, align 8
  %4 = alloca %struct.typec_port*, align 8
  %5 = alloca %struct.typec_altmode_desc*, align 8
  %6 = alloca %struct.typec_altmode*, align 8
  %7 = alloca %struct.typec_mux*, align 8
  store %struct.typec_port* %0, %struct.typec_port** %4, align 8
  store %struct.typec_altmode_desc* %1, %struct.typec_altmode_desc** %5, align 8
  %8 = load %struct.typec_port*, %struct.typec_port** %4, align 8
  %9 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %8, i32 0, i32 0
  %10 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %5, align 8
  %11 = call %struct.typec_mux* @typec_mux_get(i32* %9, %struct.typec_altmode_desc* %10)
  store %struct.typec_mux* %11, %struct.typec_mux** %7, align 8
  %12 = load %struct.typec_mux*, %struct.typec_mux** %7, align 8
  %13 = call i64 @IS_ERR(%struct.typec_mux* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.typec_mux*, %struct.typec_mux** %7, align 8
  %17 = call %struct.typec_mux* @ERR_CAST(%struct.typec_mux* %16)
  %18 = bitcast %struct.typec_mux* %17 to %struct.typec_altmode*
  store %struct.typec_altmode* %18, %struct.typec_altmode** %3, align 8
  br label %40

19:                                               ; preds = %2
  %20 = load %struct.typec_port*, %struct.typec_port** %4, align 8
  %21 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %20, i32 0, i32 0
  %22 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %5, align 8
  %23 = call %struct.typec_mux* @typec_register_altmode(i32* %21, %struct.typec_altmode_desc* %22)
  %24 = bitcast %struct.typec_mux* %23 to %struct.typec_altmode*
  store %struct.typec_altmode* %24, %struct.typec_altmode** %6, align 8
  %25 = load %struct.typec_altmode*, %struct.typec_altmode** %6, align 8
  %26 = bitcast %struct.typec_altmode* %25 to %struct.typec_mux*
  %27 = call i64 @IS_ERR(%struct.typec_mux* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load %struct.typec_mux*, %struct.typec_mux** %7, align 8
  %31 = call i32 @typec_mux_put(%struct.typec_mux* %30)
  br label %38

32:                                               ; preds = %19
  %33 = load %struct.typec_mux*, %struct.typec_mux** %7, align 8
  %34 = load %struct.typec_altmode*, %struct.typec_altmode** %6, align 8
  %35 = bitcast %struct.typec_altmode* %34 to %struct.typec_mux*
  %36 = call %struct.TYPE_2__* @to_altmode(%struct.typec_mux* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.typec_mux* %33, %struct.typec_mux** %37, align 8
  br label %38

38:                                               ; preds = %32, %29
  %39 = load %struct.typec_altmode*, %struct.typec_altmode** %6, align 8
  store %struct.typec_altmode* %39, %struct.typec_altmode** %3, align 8
  br label %40

40:                                               ; preds = %38, %15
  %41 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  ret %struct.typec_altmode* %41
}

declare dso_local %struct.typec_mux* @typec_mux_get(i32*, %struct.typec_altmode_desc*) #1

declare dso_local i64 @IS_ERR(%struct.typec_mux*) #1

declare dso_local %struct.typec_mux* @ERR_CAST(%struct.typec_mux*) #1

declare dso_local %struct.typec_mux* @typec_register_altmode(i32*, %struct.typec_altmode_desc*) #1

declare dso_local i32 @typec_mux_put(%struct.typec_mux*) #1

declare dso_local %struct.TYPE_2__* @to_altmode(%struct.typec_mux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
