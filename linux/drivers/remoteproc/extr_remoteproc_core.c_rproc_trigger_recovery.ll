; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_trigger_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_trigger_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"recovering %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"request_firmware failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rproc_trigger_recovery(%struct.rproc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  %7 = load %struct.rproc*, %struct.rproc** %3, align 8
  %8 = getelementptr inbounds %struct.rproc, %struct.rproc* %7, i32 0, i32 3
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load %struct.rproc*, %struct.rproc** %3, align 8
  %11 = getelementptr inbounds %struct.rproc, %struct.rproc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_err(%struct.device* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.rproc*, %struct.rproc** %3, align 8
  %15 = getelementptr inbounds %struct.rproc, %struct.rproc* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock_interruptible(i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %52

21:                                               ; preds = %1
  %22 = load %struct.rproc*, %struct.rproc** %3, align 8
  %23 = call i32 @rproc_stop(%struct.rproc* %22, i32 1)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %47

27:                                               ; preds = %21
  %28 = load %struct.rproc*, %struct.rproc** %3, align 8
  %29 = call i32 @rproc_coredump(%struct.rproc* %28)
  %30 = load %struct.rproc*, %struct.rproc** %3, align 8
  %31 = getelementptr inbounds %struct.rproc, %struct.rproc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = call i32 @request_firmware(%struct.firmware** %4, i32 %32, %struct.device* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %47

41:                                               ; preds = %27
  %42 = load %struct.rproc*, %struct.rproc** %3, align 8
  %43 = load %struct.firmware*, %struct.firmware** %4, align 8
  %44 = call i32 @rproc_start(%struct.rproc* %42, %struct.firmware* %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.firmware*, %struct.firmware** %4, align 8
  %46 = call i32 @release_firmware(%struct.firmware* %45)
  br label %47

47:                                               ; preds = %41, %37, %26
  %48 = load %struct.rproc*, %struct.rproc** %3, align 8
  %49 = getelementptr inbounds %struct.rproc, %struct.rproc* %48, i32 0, i32 1
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %47, %19
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @rproc_stop(%struct.rproc*, i32) #1

declare dso_local i32 @rproc_coredump(%struct.rproc*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, %struct.device*) #1

declare dso_local i32 @rproc_start(%struct.rproc*, %struct.firmware*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
