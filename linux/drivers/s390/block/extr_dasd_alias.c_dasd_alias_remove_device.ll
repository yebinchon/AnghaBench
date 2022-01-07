; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_alias.c_dasd_alias_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_alias.c_dasd_alias_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { %struct.alias_lcu* }
%struct.alias_lcu = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_alias_remove_device(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_eckd_private*, align 8
  %5 = alloca %struct.alias_lcu*, align 8
  %6 = alloca i64, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %7 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %8 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %7, i32 0, i32 0
  %9 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  store %struct.dasd_eckd_private* %9, %struct.dasd_eckd_private** %4, align 8
  %10 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %11 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %10, i32 0, i32 0
  %12 = load %struct.alias_lcu*, %struct.alias_lcu** %11, align 8
  store %struct.alias_lcu* %12, %struct.alias_lcu** %5, align 8
  %13 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %14 = icmp ne %struct.alias_lcu* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %18 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %17, i32 0, i32 0
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %22 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %23 = call i32 @_remove_device_from_lcu(%struct.alias_lcu* %21, %struct.dasd_device* %22)
  %24 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %25 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %24, i32 0, i32 0
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %16, %15
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_remove_device_from_lcu(%struct.alias_lcu*, %struct.dasd_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
