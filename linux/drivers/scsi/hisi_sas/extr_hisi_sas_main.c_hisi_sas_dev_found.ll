; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_dev_found.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_dev_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, %struct.TYPE_4__, i32, %struct.hisi_sas_device*, %struct.domain_device* }
%struct.TYPE_4__ = type { i32, %struct.ex_phy* }
%struct.ex_phy = type { i32 }
%struct.hisi_sas_device = type { i64, i64, i32 }
%struct.hisi_hba = type { %struct.TYPE_3__*, %struct.device* }
%struct.TYPE_3__ = type { i32 (%struct.hisi_hba*, %struct.hisi_sas_device*)*, %struct.hisi_sas_device* (%struct.domain_device*)* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"fail alloc dev: max support %d devices\0A\00", align 1
@HISI_SAS_MAX_DEVICES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"dev found: no attached dev:%016llx at ex:%016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"dev[%d:%x] found\0A\00", align 1
@HISI_SAS_DEV_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*)* @hisi_sas_dev_found to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_dev_found(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca %struct.domain_device*, align 8
  %6 = alloca %struct.hisi_sas_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ex_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %12 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %13 = call %struct.hisi_hba* @dev_to_hisi_hba(%struct.domain_device* %12)
  store %struct.hisi_hba* %13, %struct.hisi_hba** %4, align 8
  %14 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %15 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %14, i32 0, i32 4
  %16 = load %struct.domain_device*, %struct.domain_device** %15, align 8
  store %struct.domain_device* %16, %struct.domain_device** %5, align 8
  %17 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %18 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %17, i32 0, i32 1
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %7, align 8
  %20 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %21 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.hisi_sas_device* (%struct.domain_device*)*, %struct.hisi_sas_device* (%struct.domain_device*)** %23, align 8
  %25 = icmp ne %struct.hisi_sas_device* (%struct.domain_device*)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %28 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.hisi_sas_device* (%struct.domain_device*)*, %struct.hisi_sas_device* (%struct.domain_device*)** %30, align 8
  %32 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %33 = call %struct.hisi_sas_device* %31(%struct.domain_device* %32)
  store %struct.hisi_sas_device* %33, %struct.hisi_sas_device** %6, align 8
  br label %37

34:                                               ; preds = %1
  %35 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %36 = call %struct.hisi_sas_device* @hisi_sas_alloc_dev(%struct.domain_device* %35)
  store %struct.hisi_sas_device* %36, %struct.hisi_sas_device** %6, align 8
  br label %37

37:                                               ; preds = %34, %26
  %38 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %6, align 8
  %39 = icmp ne %struct.hisi_sas_device* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load %struct.device*, %struct.device** %7, align 8
  %42 = load i32, i32* @HISI_SAS_MAX_DEVICES, align 4
  %43 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %137

46:                                               ; preds = %37
  %47 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %6, align 8
  %48 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %49 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %48, i32 0, i32 3
  store %struct.hisi_sas_device* %47, %struct.hisi_sas_device** %49, align 8
  %50 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %51 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32 (%struct.hisi_hba*, %struct.hisi_sas_device*)*, i32 (%struct.hisi_hba*, %struct.hisi_sas_device*)** %53, align 8
  %55 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %56 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %6, align 8
  %57 = call i32 %54(%struct.hisi_hba* %55, %struct.hisi_sas_device* %56)
  %58 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %59 = icmp ne %struct.domain_device* %58, null
  br i1 %59, label %60, label %115

60:                                               ; preds = %46
  %61 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %62 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @dev_is_expander(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %115

66:                                               ; preds = %60
  %67 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %68 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %94, %66
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %71
  %76 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %77 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load %struct.ex_phy*, %struct.ex_phy** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %79, i64 %81
  store %struct.ex_phy* %82, %struct.ex_phy** %11, align 8
  %83 = load %struct.ex_phy*, %struct.ex_phy** %11, align 8
  %84 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @SAS_ADDR(i32 %85)
  %87 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %88 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @SAS_ADDR(i32 %89)
  %91 = icmp eq i64 %86, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %75
  br label %97

93:                                               ; preds = %75
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %71

97:                                               ; preds = %92, %71
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = load %struct.device*, %struct.device** %7, align 8
  %103 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %104 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @SAS_ADDR(i32 %105)
  %107 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %108 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @SAS_ADDR(i32 %109)
  %111 = call i32 @dev_info(%struct.device* %102, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %106, i64 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %8, align 4
  br label %133

114:                                              ; preds = %97
  br label %115

115:                                              ; preds = %114, %60, %46
  %116 = load %struct.device*, %struct.device** %7, align 8
  %117 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %6, align 8
  %118 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %6, align 8
  %121 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @dev_info(%struct.device* %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %119, i64 %122)
  %124 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %125 = call i32 @hisi_sas_init_device(%struct.domain_device* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  br label %133

129:                                              ; preds = %115
  %130 = load i32, i32* @HISI_SAS_DEV_NORMAL, align 4
  %131 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %6, align 8
  %132 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  store i32 0, i32* %2, align 4
  br label %137

133:                                              ; preds = %128, %101
  %134 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %135 = call i32 @hisi_sas_dev_gone(%struct.domain_device* %134)
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %133, %129, %40
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.hisi_hba* @dev_to_hisi_hba(%struct.domain_device*) #1

declare dso_local %struct.hisi_sas_device* @hisi_sas_alloc_dev(%struct.domain_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i64 @dev_is_expander(i32) #1

declare dso_local i64 @SAS_ADDR(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64, i64) #1

declare dso_local i32 @hisi_sas_init_device(%struct.domain_device*) #1

declare dso_local i32 @hisi_sas_dev_gone(%struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
