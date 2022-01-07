; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_fsl_elbc_gpcm.c_check_of_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_fsl_elbc_gpcm.c_check_of_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_elbc_gpcm = type { i64, i32 }
%struct.resource = type { i32 }

@MAX_BANKS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"invalid bank\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BR_MSEL = common dso_local global i32 0, align 4
@BR_MS_GPCM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"unsupported mode\0A\00", align 1
@OR_GPCM_AM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"address mask / size mismatch\0A\00", align 1
@BR_BA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"base address mismatch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_elbc_gpcm*, %struct.resource*, i32, i32)* @check_of_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_of_data(%struct.fsl_elbc_gpcm* %0, %struct.resource* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_elbc_gpcm*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fsl_elbc_gpcm* %0, %struct.fsl_elbc_gpcm** %6, align 8
  store %struct.resource* %1, %struct.resource** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.fsl_elbc_gpcm*, %struct.fsl_elbc_gpcm** %6, align 8
  %11 = getelementptr inbounds %struct.fsl_elbc_gpcm, %struct.fsl_elbc_gpcm* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAX_BANKS, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load %struct.fsl_elbc_gpcm*, %struct.fsl_elbc_gpcm** %6, align 8
  %17 = getelementptr inbounds %struct.fsl_elbc_gpcm, %struct.fsl_elbc_gpcm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %70

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @BR_MSEL, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @BR_MS_GPCM, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.fsl_elbc_gpcm*, %struct.fsl_elbc_gpcm** %6, align 8
  %30 = getelementptr inbounds %struct.fsl_elbc_gpcm, %struct.fsl_elbc_gpcm* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %70

35:                                               ; preds = %22
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @OR_GPCM_AM, align 4
  %38 = and i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = add nsw i32 %39, 1
  %41 = load %struct.resource*, %struct.resource** %7, align 8
  %42 = call i32 @resource_size(%struct.resource* %41)
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load %struct.fsl_elbc_gpcm*, %struct.fsl_elbc_gpcm** %6, align 8
  %46 = getelementptr inbounds %struct.fsl_elbc_gpcm, %struct.fsl_elbc_gpcm* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %70

51:                                               ; preds = %35
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @BR_BA, align 4
  %56 = and i32 %54, %55
  %57 = load %struct.resource*, %struct.resource** %7, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @fsl_lbc_addr(i32 %59)
  %61 = icmp ne i32 %56, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %51
  %63 = load %struct.fsl_elbc_gpcm*, %struct.fsl_elbc_gpcm** %6, align 8
  %64 = getelementptr inbounds %struct.fsl_elbc_gpcm, %struct.fsl_elbc_gpcm* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %70

69:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %62, %44, %28, %15
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @fsl_lbc_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
