; ModuleID = '/home/carl/AnghaBench/linux/drivers/pps/extr_kc.c_pps_kc_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pps/extr_kc.c_pps_kc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pps_device = type { i32 }
%struct.pps_bind_args = type { i64 }

@pps_kc_hardpps_lock = common dso_local global i32 0, align 4
@pps_kc_hardpps_dev = common dso_local global %struct.pps_device* null, align 8
@pps_kc_hardpps_mode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"unbound kernel consumer\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"selected kernel consumer is not bound\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"bound kernel consumer: edge=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"another kernel consumer is already bound\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pps_kc_bind(%struct.pps_device* %0, %struct.pps_bind_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pps_device*, align 8
  %5 = alloca %struct.pps_bind_args*, align 8
  store %struct.pps_device* %0, %struct.pps_device** %4, align 8
  store %struct.pps_bind_args* %1, %struct.pps_bind_args** %5, align 8
  %6 = call i32 @spin_lock_irq(i32* @pps_kc_hardpps_lock)
  %7 = load %struct.pps_bind_args*, %struct.pps_bind_args** %5, align 8
  %8 = getelementptr inbounds %struct.pps_bind_args, %struct.pps_bind_args* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load %struct.pps_device*, %struct.pps_device** @pps_kc_hardpps_dev, align 8
  %13 = load %struct.pps_device*, %struct.pps_device** %4, align 8
  %14 = icmp eq %struct.pps_device* %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  store i64 0, i64* @pps_kc_hardpps_mode, align 8
  store %struct.pps_device* null, %struct.pps_device** @pps_kc_hardpps_dev, align 8
  %16 = call i32 @spin_unlock_irq(i32* @pps_kc_hardpps_lock)
  %17 = load %struct.pps_device*, %struct.pps_device** %4, align 8
  %18 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, ...) @dev_info(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %29

21:                                               ; preds = %11
  %22 = call i32 @spin_unlock_irq(i32* @pps_kc_hardpps_lock)
  %23 = load %struct.pps_device*, %struct.pps_device** %4, align 8
  %24 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %60

29:                                               ; preds = %15
  br label %59

30:                                               ; preds = %2
  %31 = load %struct.pps_device*, %struct.pps_device** @pps_kc_hardpps_dev, align 8
  %32 = icmp eq %struct.pps_device* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load %struct.pps_device*, %struct.pps_device** @pps_kc_hardpps_dev, align 8
  %35 = load %struct.pps_device*, %struct.pps_device** %4, align 8
  %36 = icmp eq %struct.pps_device* %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33, %30
  %38 = load %struct.pps_bind_args*, %struct.pps_bind_args** %5, align 8
  %39 = getelementptr inbounds %struct.pps_bind_args, %struct.pps_bind_args* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* @pps_kc_hardpps_mode, align 8
  %41 = load %struct.pps_device*, %struct.pps_device** %4, align 8
  store %struct.pps_device* %41, %struct.pps_device** @pps_kc_hardpps_dev, align 8
  %42 = call i32 @spin_unlock_irq(i32* @pps_kc_hardpps_lock)
  %43 = load %struct.pps_device*, %struct.pps_device** %4, align 8
  %44 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pps_bind_args*, %struct.pps_bind_args** %5, align 8
  %47 = getelementptr inbounds %struct.pps_bind_args, %struct.pps_bind_args* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i32, i8*, ...) @dev_info(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  br label %58

50:                                               ; preds = %33
  %51 = call i32 @spin_unlock_irq(i32* @pps_kc_hardpps_lock)
  %52 = load %struct.pps_device*, %struct.pps_device** %4, align 8
  %53 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %60

58:                                               ; preds = %37
  br label %59

59:                                               ; preds = %58, %29
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %50, %21
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
