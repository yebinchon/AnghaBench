; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_do_bye.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_do_bye.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_mb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@n_err_nomem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSIO_MB_DEFAULT_TMO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Issue of BYE command failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FW_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*)* @csio_do_bye to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_do_bye(%struct.csio_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca %struct.csio_mb*, align 8
  %5 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  %6 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %7 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.csio_mb* @mempool_alloc(i32 %8, i32 %9)
  store %struct.csio_mb* %10, %struct.csio_mb** %4, align 8
  %11 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %12 = icmp ne %struct.csio_mb* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %15 = load i32, i32* @n_err_nomem, align 4
  %16 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %14, i32 %15)
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %58

19:                                               ; preds = %1
  %20 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %21 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %22 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %23 = call i32 @csio_mb_bye(%struct.csio_hw* %20, %struct.csio_mb* %21, i32 %22, i32* null)
  %24 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %25 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %26 = call i64 @csio_mb_issue(%struct.csio_hw* %24, %struct.csio_mb* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %19
  %29 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %30 = call i32 @csio_err(%struct.csio_hw* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %32 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %33 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mempool_free(%struct.csio_mb* %31, i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %58

38:                                               ; preds = %19
  %39 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %40 = call i32 @csio_mb_fw_retval(%struct.csio_mb* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @FW_SUCCESS, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %46 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %47 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mempool_free(%struct.csio_mb* %45, i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %58

52:                                               ; preds = %38
  %53 = load %struct.csio_mb*, %struct.csio_mb** %4, align 8
  %54 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %55 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mempool_free(%struct.csio_mb* %53, i32 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %52, %44, %28, %13
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.csio_mb* @mempool_alloc(i32, i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_mb_bye(%struct.csio_hw*, %struct.csio_mb*, i32, i32*) #1

declare dso_local i64 @csio_mb_issue(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

declare dso_local i32 @csio_mb_fw_retval(%struct.csio_mb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
