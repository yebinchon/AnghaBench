; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_alias.c_dasd_alias_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_alias.c_dasd_alias_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { %struct.TYPE_4__, %struct.alias_lcu* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.alias_lcu = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@UPDATE_PENDING = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"uid type mismatch - trigger rescan\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_alias_add_device(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  %3 = alloca %struct.dasd_eckd_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.alias_lcu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %8 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %9 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %8, i32 0, i32 1
  %10 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %9, align 8
  store %struct.dasd_eckd_private* %10, %struct.dasd_eckd_private** %3, align 8
  %11 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %12 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  %15 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %16 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %15, i32 0, i32 1
  %17 = load %struct.alias_lcu*, %struct.alias_lcu** %16, align 8
  store %struct.alias_lcu* %17, %struct.alias_lcu** %5, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %19 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %18, i32 0, i32 1
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %23 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %27 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %25, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %1
  %37 = load i32, i32* @UPDATE_PENDING, align 4
  %38 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %39 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* @DBF_WARNING, align 4
  %43 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %44 = call i32 @DBF_DEV_EVENT(i32 %42, %struct.dasd_device* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %36, %1
  %46 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %47 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @UPDATE_PENDING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %45
  %53 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %54 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %55 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %56 = call i32 @_add_device_to_lcu(%struct.alias_lcu* %53, %struct.dasd_device* %54, %struct.dasd_device* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load i32, i32* @UPDATE_PENDING, align 4
  %61 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %62 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %52
  br label %66

66:                                               ; preds = %65, %45
  %67 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %68 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @UPDATE_PENDING, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %75 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %74, i32 0, i32 0
  %76 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %77 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %76, i32 0, i32 2
  %78 = call i32 @list_move(i32* %75, i32* %77)
  %79 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %80 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %81 = call i32 @_schedule_lcu_update(%struct.alias_lcu* %79, %struct.dasd_device* %80)
  br label %82

82:                                               ; preds = %73, %66
  %83 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %84 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %83, i32 0, i32 1
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*) #1

declare dso_local i32 @_add_device_to_lcu(%struct.alias_lcu*, %struct.dasd_device*, %struct.dasd_device*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @_schedule_lcu_update(%struct.alias_lcu*, %struct.dasd_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
