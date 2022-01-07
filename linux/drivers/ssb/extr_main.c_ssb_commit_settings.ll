; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_commit_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_commit_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.ssb_device* }
%struct.ssb_device = type { i32 }
%struct.TYPE_3__ = type { %struct.ssb_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssb_commit_settings(%struct.ssb_bus* %0) #0 {
  %2 = alloca %struct.ssb_bus*, align 8
  %3 = alloca %struct.ssb_device*, align 8
  store %struct.ssb_bus* %0, %struct.ssb_bus** %2, align 8
  %4 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %5 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.ssb_device*, %struct.ssb_device** %6, align 8
  store %struct.ssb_device* %7, %struct.ssb_device** %3, align 8
  %8 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %9 = icmp ne %struct.ssb_device* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %17 = call i32 @ssb_broadcast_value(%struct.ssb_device* %16, i32 4056, i32 0)
  br label %18

18:                                               ; preds = %15, %14
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ssb_broadcast_value(%struct.ssb_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
