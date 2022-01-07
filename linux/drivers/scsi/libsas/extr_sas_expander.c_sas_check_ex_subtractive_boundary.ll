; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_check_ex_subtractive_boundary.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_check_ex_subtractive_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i64, i32*, %struct.expander_device }
%struct.expander_device = type { i32, %struct.ex_phy* }
%struct.ex_phy = type { i64, i64, i32*, i32 }

@SAS_EDGE_EXPANDER_DEVICE = common dso_local global i64 0, align 8
@PHY_VACANT = common dso_local global i64 0, align 8
@PHY_NOT_PRESENT = common dso_local global i64 0, align 8
@SUBTRACTIVE_ROUTING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [81 x i8] c"ex %016llx phy%02d diverges(%016llx) on subtractive boundary(%016llx). Disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*)* @sas_check_ex_subtractive_boundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_check_ex_subtractive_boundary(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.expander_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ex_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %8 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %9 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %8, i32 0, i32 2
  store %struct.expander_device* %9, %struct.expander_device** %4, align 8
  store i32* null, i32** %6, align 8
  %10 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %11 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SAS_EDGE_EXPANDER_DEVICE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %89, %16
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.expander_device*, %struct.expander_device** %4, align 8
  %20 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %92

23:                                               ; preds = %17
  %24 = load %struct.expander_device*, %struct.expander_device** %4, align 8
  %25 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %24, i32 0, i32 1
  %26 = load %struct.ex_phy*, %struct.ex_phy** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %26, i64 %28
  store %struct.ex_phy* %29, %struct.ex_phy** %7, align 8
  %30 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %31 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PHY_VACANT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %23
  %36 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %37 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PHY_NOT_PRESENT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %23
  br label %89

42:                                               ; preds = %35
  %43 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %44 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @dev_is_expander(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %42
  %49 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %50 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SUBTRACTIVE_ROUTING, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %88

54:                                               ; preds = %48
  %55 = load i32*, i32** %6, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %59 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32* %61, i32** %6, align 8
  br label %87

62:                                               ; preds = %54
  %63 = load i32*, i32** %6, align 8
  %64 = call i64 @SAS_ADDR(i32* %63)
  %65 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %66 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i64 @SAS_ADDR(i32* %67)
  %69 = icmp ne i64 %64, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %62
  %71 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %72 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i64 @SAS_ADDR(i32* %73)
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %77 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = call i64 @SAS_ADDR(i32* %78)
  %80 = load i32*, i32** %6, align 8
  %81 = call i64 @SAS_ADDR(i32* %80)
  %82 = call i32 @pr_notice(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i64 %74, i32 %75, i64 %79, i64 %81)
  %83 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @sas_ex_disable_phy(%struct.domain_device* %83, i32 %84)
  br label %86

86:                                               ; preds = %70, %62
  br label %87

87:                                               ; preds = %86, %57
  br label %88

88:                                               ; preds = %87, %48, %42
  br label %89

89:                                               ; preds = %88, %41
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %17

92:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %15
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @dev_is_expander(i32) #1

declare dso_local i64 @SAS_ADDR(i32*) #1

declare dso_local i32 @pr_notice(i8*, i64, i32, i64, i64) #1

declare dso_local i32 @sas_ex_disable_phy(%struct.domain_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
