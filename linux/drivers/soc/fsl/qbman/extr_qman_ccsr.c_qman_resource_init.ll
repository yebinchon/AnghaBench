; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_qman_resource_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_qman_resource_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@qman_ip_rev = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@qm_qpalloc = common dso_local global i32 0, align 4
@qm_channel_pool1 = common dso_local global i32 0, align 4
@DPAA_GENALLOC_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to seed pool channels (%d)\0A\00", align 1
@qm_cgralloc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to seed CGRID range (%d)\0A\00", align 1
@qm_pools_sdqcr = common dso_local global i32 0, align 4
@qm_fqalloc = common dso_local global i32 0, align 4
@QM_FQID_RANGE_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to seed FQID range (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @qman_resource_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qman_resource_init(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load i32, i32* @qman_ip_rev, align 4
  %9 = ashr i32 %8, 8
  switch i32 %9, label %13 [
    i32 1, label %10
    i32 2, label %11
    i32 3, label %12
  ]

10:                                               ; preds = %1
  store i32 15, i32* %4, align 4
  store i32 256, i32* %5, align 4
  br label %16

11:                                               ; preds = %1
  store i32 3, i32* %4, align 4
  store i32 64, i32* %5, align 4
  br label %16

12:                                               ; preds = %1
  store i32 15, i32* %4, align 4
  store i32 256, i32* %5, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %72

16:                                               ; preds = %12, %11, %10
  %17 = load i32, i32* @qm_qpalloc, align 4
  %18 = load i32, i32* @qm_channel_pool1, align 4
  %19 = load i32, i32* @DPAA_GENALLOC_OFF, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @gen_pool_add(i32 %17, i32 %20, i32 %21, i32 -1)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %72

30:                                               ; preds = %16
  %31 = load i32, i32* @qm_cgralloc, align 4
  %32 = load i32, i32* @DPAA_GENALLOC_OFF, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @gen_pool_add(i32 %31, i32 %32, i32 %33, i32 -1)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %72

42:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %52, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @QM_SDQCR_CHANNELS_POOL_CONV(i32 %48)
  %50 = load i32, i32* @qm_pools_sdqcr, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* @qm_pools_sdqcr, align 4
  br label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %43

55:                                               ; preds = %43
  %56 = load i32, i32* @qm_fqalloc, align 4
  %57 = load i32, i32* @QM_FQID_RANGE_START, align 4
  %58 = load i32, i32* @DPAA_GENALLOC_OFF, align 4
  %59 = or i32 %57, %58
  %60 = call i32 (...) @qm_get_fqid_maxcnt()
  %61 = load i32, i32* @QM_FQID_RANGE_START, align 4
  %62 = sub nsw i32 %60, %61
  %63 = call i32 @gen_pool_add(i32 %56, i32 %59, i32 %62, i32 -1)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %55
  %67 = load %struct.device*, %struct.device** %3, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %66, %37, %25, %13
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @gen_pool_add(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @QM_SDQCR_CHANNELS_POOL_CONV(i32) #1

declare dso_local i32 @qm_get_fqid_maxcnt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
