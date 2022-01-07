; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_hba.c_target_sense_desc_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_hba.c_target_sense_desc_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.se_device*)* }

@U32_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_sense_desc_format(%struct.se_device* %0) #0 {
  %2 = alloca %struct.se_device*, align 8
  store %struct.se_device* %0, %struct.se_device** %2, align 8
  %3 = load %struct.se_device*, %struct.se_device** %2, align 8
  %4 = icmp ne %struct.se_device* %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load %struct.se_device*, %struct.se_device** %2, align 8
  %7 = getelementptr inbounds %struct.se_device, %struct.se_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64 (%struct.se_device*)*, i64 (%struct.se_device*)** %9, align 8
  %11 = load %struct.se_device*, %struct.se_device** %2, align 8
  %12 = call i64 %10(%struct.se_device* %11)
  %13 = load i64, i64* @U32_MAX, align 8
  %14 = icmp sgt i64 %12, %13
  %15 = zext i1 %14 to i32
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %5
  %18 = phi i32 [ %15, %5 ], [ 0, %16 ]
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
