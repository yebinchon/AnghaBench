; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_do_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_do_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_mb = type { i32 }

@PIORSTMODE_F = common dso_local global i32 0, align 4
@PIORST_F = common dso_local global i32 0, align 4
@PL_RST_A = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@n_err_nomem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSIO_MB_DEFAULT_TMO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Issue of RESET command failed.n\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FW_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"RESET cmd failed with ret:0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*, i32)* @csio_do_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_do_reset(%struct.csio_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.csio_mb*, align 8
  %7 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %12 = load i32, i32* @PIORSTMODE_F, align 4
  %13 = load i32, i32* @PIORST_F, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PL_RST_A, align 4
  %16 = call i32 @csio_wr_reg32(%struct.csio_hw* %11, i32 %14, i32 %15)
  %17 = call i32 @mdelay(i32 2000)
  store i32 0, i32* %3, align 4
  br label %77

18:                                               ; preds = %2
  %19 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %20 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call %struct.csio_mb* @mempool_alloc(i32 %21, i32 %22)
  store %struct.csio_mb* %23, %struct.csio_mb** %6, align 8
  %24 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %25 = icmp ne %struct.csio_mb* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %28 = load i32, i32* @n_err_nomem, align 4
  %29 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %27, i32 %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %77

32:                                               ; preds = %18
  %33 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %34 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %35 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %36 = load i32, i32* @PIORSTMODE_F, align 4
  %37 = load i32, i32* @PIORST_F, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @csio_mb_reset(%struct.csio_hw* %33, %struct.csio_mb* %34, i32 %35, i32 %38, i32 0, i32* null)
  %40 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %41 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %42 = call i64 @csio_mb_issue(%struct.csio_hw* %40, %struct.csio_mb* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %32
  %45 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %46 = call i32 (%struct.csio_hw*, i8*, ...) @csio_err(%struct.csio_hw* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %48 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %49 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mempool_free(%struct.csio_mb* %47, i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %77

54:                                               ; preds = %32
  %55 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %56 = call i32 @csio_mb_fw_retval(%struct.csio_mb* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @FW_SUCCESS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (%struct.csio_hw*, i8*, ...) @csio_err(%struct.csio_hw* %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %65 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %66 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mempool_free(%struct.csio_mb* %64, i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %77

71:                                               ; preds = %54
  %72 = load %struct.csio_mb*, %struct.csio_mb** %6, align 8
  %73 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %74 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @mempool_free(%struct.csio_mb* %72, i32 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %60, %44, %26, %10
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @csio_wr_reg32(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local %struct.csio_mb* @mempool_alloc(i32, i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_mb_reset(%struct.csio_hw*, %struct.csio_mb*, i32, i32, i32, i32*) #1

declare dso_local i64 @csio_mb_issue(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, ...) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

declare dso_local i32 @csio_mb_fw_retval(%struct.csio_mb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
