; ModuleID = '/home/carl/AnghaBench/linux/drivers/pps/extr_kc.c_pps_kc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pps/extr_kc.c_pps_kc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pps_device = type { i32 }

@pps_kc_hardpps_lock = common dso_local global i32 0, align 4
@pps_kc_hardpps_dev = common dso_local global %struct.pps_device* null, align 8
@pps_kc_hardpps_mode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"unbound kernel consumer on device removal\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pps_kc_remove(%struct.pps_device* %0) #0 {
  %2 = alloca %struct.pps_device*, align 8
  store %struct.pps_device* %0, %struct.pps_device** %2, align 8
  %3 = call i32 @spin_lock_irq(i32* @pps_kc_hardpps_lock)
  %4 = load %struct.pps_device*, %struct.pps_device** %2, align 8
  %5 = load %struct.pps_device*, %struct.pps_device** @pps_kc_hardpps_dev, align 8
  %6 = icmp eq %struct.pps_device* %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  store i64 0, i64* @pps_kc_hardpps_mode, align 8
  store %struct.pps_device* null, %struct.pps_device** @pps_kc_hardpps_dev, align 8
  %8 = call i32 @spin_unlock_irq(i32* @pps_kc_hardpps_lock)
  %9 = load %struct.pps_device*, %struct.pps_device** %2, align 8
  %10 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_info(i32 %11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %15

13:                                               ; preds = %1
  %14 = call i32 @spin_unlock_irq(i32* @pps_kc_hardpps_lock)
  br label %15

15:                                               ; preds = %13, %7
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
