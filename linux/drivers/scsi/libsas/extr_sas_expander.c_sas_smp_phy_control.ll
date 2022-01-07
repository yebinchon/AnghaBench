; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_smp_phy_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_smp_phy_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32 }
%struct.sas_phy_linkrates = type { i32, i32 }

@PC_REQ_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PC_RESP_SIZE = common dso_local global i32 0, align 4
@SMP_PHY_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ex %016llx phy%02d PHY control failed: %d\0A\00", align 1
@SMP_RESP_FUNC_ACC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"ex %016llx phy%02d PHY control failed: function result 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_smp_phy_control(%struct.domain_device* %0, i32 %1, i32 %2, %struct.sas_phy_linkrates* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.domain_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sas_phy_linkrates*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.sas_phy_linkrates* %3, %struct.sas_phy_linkrates** %9, align 8
  %13 = load i32, i32* @PC_REQ_SIZE, align 4
  %14 = call i32* @alloc_smp_req(i32 %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %98

20:                                               ; preds = %4
  %21 = load i32, i32* @PC_RESP_SIZE, align 4
  %22 = call i32* @alloc_smp_resp(i32 %21)
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @kfree(i32* %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %98

30:                                               ; preds = %20
  %31 = load i32, i32* @SMP_PHY_CONTROL, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 9
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 10
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %9, align 8
  %41 = icmp ne %struct.sas_phy_linkrates* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %30
  %43 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %9, align 8
  %44 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 4
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 32
  store i32 %46, i32* %48, align 4
  %49 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %9, align 8
  %50 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 4
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 33
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %42, %30
  %56 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* @PC_REQ_SIZE, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* @PC_RESP_SIZE, align 4
  %61 = call i32 @smp_execute_task(%struct.domain_device* %56, i32* %57, i32 %58, i32* %59, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %55
  %65 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %66 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SAS_ADDR(i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  br label %92

72:                                               ; preds = %55
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SMP_RESP_FUNC_ACC, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %80 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @SAS_ADDR(i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %83, i32 %86)
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %78, %72
  br label %92

92:                                               ; preds = %91, %64
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @kfree(i32* %93)
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @kfree(i32* %95)
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %92, %25, %17
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32* @alloc_smp_req(i32) #1

declare dso_local i32* @alloc_smp_resp(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @smp_execute_task(%struct.domain_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @SAS_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
