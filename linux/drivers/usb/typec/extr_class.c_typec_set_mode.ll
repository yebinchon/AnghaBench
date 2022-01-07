; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @typec_set_mode(%struct.typec_port* %0, i32 %1) #0 {
  %3 = alloca %struct.typec_port*, align 8
  %4 = alloca i32, align 4
  store %struct.typec_port* %0, %struct.typec_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.typec_port*, %struct.typec_port** %3, align 8
  %6 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.typec_port*, %struct.typec_port** %3, align 8
  %11 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %13, align 8
  %15 = load %struct.typec_port*, %struct.typec_port** %3, align 8
  %16 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 %14(%struct.TYPE_2__* %17, i32 %18)
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %9
  %22 = phi i32 [ %19, %9 ], [ 0, %20 ]
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
