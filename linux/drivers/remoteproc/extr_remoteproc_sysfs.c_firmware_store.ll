; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_sysfs.c_firmware_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_sysfs.c_firmware_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.rproc = type { i64, i8*, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"can't lock rproc %s: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RPROC_OFFLINE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"can't change firmware while running\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"can't provide a NULL firmware\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @firmware_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firmware_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rproc*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.rproc* @to_rproc(%struct.device* %14)
  store %struct.rproc* %15, %struct.rproc** %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load %struct.rproc*, %struct.rproc** %10, align 8
  %19 = getelementptr inbounds %struct.rproc, %struct.rproc* %18, i32 0, i32 2
  %20 = call i32 @mutex_lock_interruptible(i32* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load %struct.rproc*, %struct.rproc** %10, align 8
  %26 = getelementptr inbounds %struct.rproc, %struct.rproc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %85

32:                                               ; preds = %4
  %33 = load %struct.rproc*, %struct.rproc** %10, align 8
  %34 = getelementptr inbounds %struct.rproc, %struct.rproc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RPROC_OFFLINE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %12, align 4
  br label %71

43:                                               ; preds = %32
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @strcspn(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %12, align 4
  br label %71

53:                                               ; preds = %43
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @kstrndup(i8* %54, i32 %55, i32 %56)
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %12, align 4
  br label %71

63:                                               ; preds = %53
  %64 = load %struct.rproc*, %struct.rproc** %10, align 8
  %65 = getelementptr inbounds %struct.rproc, %struct.rproc* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @kfree(i8* %66)
  %68 = load i8*, i8** %11, align 8
  %69 = load %struct.rproc*, %struct.rproc** %10, align 8
  %70 = getelementptr inbounds %struct.rproc, %struct.rproc* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %63, %60, %48, %38
  %72 = load %struct.rproc*, %struct.rproc** %10, align 8
  %73 = getelementptr inbounds %struct.rproc, %struct.rproc* %72, i32 0, i32 2
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  br label %82

80:                                               ; preds = %71
  %81 = load i64, i64* %9, align 8
  br label %82

82:                                               ; preds = %80, %77
  %83 = phi i64 [ %79, %77 ], [ %81, %80 ]
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %82, %23
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.rproc* @to_rproc(%struct.device*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i8* @kstrndup(i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
