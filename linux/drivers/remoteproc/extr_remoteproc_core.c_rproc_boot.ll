; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, i64, i32, i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"invalid rproc handle\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"can't lock rproc %s: %d\0A\00", align 1
@RPROC_DELETED = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"can't boot deleted rproc %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"powering up %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"request_firmware failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rproc_boot(%struct.rproc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  %7 = load %struct.rproc*, %struct.rproc** %3, align 8
  %8 = icmp ne %struct.rproc* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %85

13:                                               ; preds = %1
  %14 = load %struct.rproc*, %struct.rproc** %3, align 8
  %15 = getelementptr inbounds %struct.rproc, %struct.rproc* %14, i32 0, i32 5
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.rproc*, %struct.rproc** %3, align 8
  %17 = getelementptr inbounds %struct.rproc, %struct.rproc* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock_interruptible(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load %struct.rproc*, %struct.rproc** %3, align 8
  %24 = getelementptr inbounds %struct.rproc, %struct.rproc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %85

29:                                               ; preds = %13
  %30 = load %struct.rproc*, %struct.rproc** %3, align 8
  %31 = getelementptr inbounds %struct.rproc, %struct.rproc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RPROC_DELETED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load %struct.rproc*, %struct.rproc** %3, align 8
  %40 = getelementptr inbounds %struct.rproc, %struct.rproc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %80

43:                                               ; preds = %29
  %44 = load %struct.rproc*, %struct.rproc** %3, align 8
  %45 = getelementptr inbounds %struct.rproc, %struct.rproc* %44, i32 0, i32 3
  %46 = call i32 @atomic_inc_return(i32* %45)
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %80

49:                                               ; preds = %43
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load %struct.rproc*, %struct.rproc** %3, align 8
  %52 = getelementptr inbounds %struct.rproc, %struct.rproc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_info(%struct.device* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load %struct.rproc*, %struct.rproc** %3, align 8
  %56 = getelementptr inbounds %struct.rproc, %struct.rproc* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = call i32 @request_firmware(%struct.firmware** %4, i32 %57, %struct.device* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %49
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  br label %72

66:                                               ; preds = %49
  %67 = load %struct.rproc*, %struct.rproc** %3, align 8
  %68 = load %struct.firmware*, %struct.firmware** %4, align 8
  %69 = call i32 @rproc_fw_boot(%struct.rproc* %67, %struct.firmware* %68)
  store i32 %69, i32* %6, align 4
  %70 = load %struct.firmware*, %struct.firmware** %4, align 8
  %71 = call i32 @release_firmware(%struct.firmware* %70)
  br label %72

72:                                               ; preds = %66, %62
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.rproc*, %struct.rproc** %3, align 8
  %77 = getelementptr inbounds %struct.rproc, %struct.rproc* %76, i32 0, i32 3
  %78 = call i32 @atomic_dec(i32* %77)
  br label %79

79:                                               ; preds = %75, %72
  br label %80

80:                                               ; preds = %79, %48, %35
  %81 = load %struct.rproc*, %struct.rproc** %3, align 8
  %82 = getelementptr inbounds %struct.rproc, %struct.rproc* %81, i32 0, i32 2
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %80, %21, %9
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, %struct.device*) #1

declare dso_local i32 @rproc_fw_boot(%struct.rproc*, %struct.firmware*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
