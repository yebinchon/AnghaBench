; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_core.c_tape_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_core.c_tape_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TS_NOT_OPER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"TAPE:nodev\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TS_IN_USE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"TAPE:dbusy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@TS_BLKUSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"TAPE:nodisc\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_open(%struct.tape_device* %0) #0 {
  %2 = alloca %struct.tape_device*, align 8
  %3 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %2, align 8
  %4 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %5 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @get_ccwdev_lock(i32 %6)
  %8 = call i32 @spin_lock_irq(i32 %7)
  %9 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %10 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TS_NOT_OPER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %62

18:                                               ; preds = %1
  %19 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %20 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TS_IN_USE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %61

28:                                               ; preds = %18
  %29 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %30 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TS_BLKUSE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %60

38:                                               ; preds = %28
  %39 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %40 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = icmp ne %struct.TYPE_2__* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %45 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @try_module_get(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %59

55:                                               ; preds = %43, %38
  %56 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %57 = load i64, i64* @TS_IN_USE, align 8
  %58 = call i32 @tape_state_set(%struct.tape_device* %56, i64 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %59, %34
  br label %61

61:                                               ; preds = %60, %24
  br label %62

62:                                               ; preds = %61, %14
  %63 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %64 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @get_ccwdev_lock(i32 %65)
  %67 = call i32 @spin_unlock_irq(i32 %66)
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @DBF_EVENT(i32, i8*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @tape_state_set(%struct.tape_device*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
