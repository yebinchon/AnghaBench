; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_dev_found_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_dev_found_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.pm8001_hba_info*, %struct.pm8001_device*, i32)* }
%struct.pm8001_hba_info = type { i32, i32 }
%struct.pm8001_device = type { i64, i32, i32*, %struct.domain_device* }
%struct.domain_device = type { i64, %struct.TYPE_7__*, i32, %struct.TYPE_5__, %struct.pm8001_device*, %struct.domain_device* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.ex_phy* }
%struct.ex_phy = type { i32 }

@completion = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Error: no attached dev:%016llx at ex:%016llx.\0A\00", align 1
@SAS_SATA_DEV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Found device\0A\00", align 1
@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_8__* null, align 8
@SAS_END_DEVICE = common dso_local global i64 0, align 8
@PM8001F_RUN_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*)* @pm8001_dev_found_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_dev_found_notify(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pm8001_hba_info*, align 8
  %7 = alloca %struct.domain_device*, align 8
  %8 = alloca %struct.pm8001_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ex_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.pm8001_hba_info* null, %struct.pm8001_hba_info** %6, align 8
  %12 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %13 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %12, i32 0, i32 5
  %14 = load %struct.domain_device*, %struct.domain_device** %13, align 8
  store %struct.domain_device* %14, %struct.domain_device** %7, align 8
  %15 = load i32, i32* @completion, align 4
  %16 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %15)
  store i32 0, i32* %9, align 4
  %17 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %18 = call %struct.pm8001_hba_info* @pm8001_find_ha_by_dev(%struct.domain_device* %17)
  store %struct.pm8001_hba_info* %18, %struct.pm8001_hba_info** %6, align 8
  %19 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %20 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %19, i32 0, i32 0
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %24 = call %struct.pm8001_device* @pm8001_alloc_dev(%struct.pm8001_hba_info* %23)
  store %struct.pm8001_device* %24, %struct.pm8001_device** %8, align 8
  %25 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %26 = icmp ne %struct.pm8001_device* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store i32 -1, i32* %5, align 4
  br label %146

28:                                               ; preds = %1
  %29 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %30 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %31 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %30, i32 0, i32 3
  store %struct.domain_device* %29, %struct.domain_device** %31, align 8
  %32 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %33 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %34 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %33, i32 0, i32 4
  store %struct.pm8001_device* %32, %struct.pm8001_device** %34, align 8
  %35 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %36 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %39 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %41 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %40, i32 0, i32 2
  store i32* @completion, i32** %41, align 8
  %42 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %43 = icmp ne %struct.domain_device* %42, null
  br i1 %43, label %44, label %103

44:                                               ; preds = %28
  %45 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %46 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @dev_is_expander(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %103

50:                                               ; preds = %44
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %80, %50
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %54 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %51
  %59 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %60 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load %struct.ex_phy*, %struct.ex_phy** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %62, i64 %64
  store %struct.ex_phy* %65, %struct.ex_phy** %11, align 8
  %66 = load %struct.ex_phy*, %struct.ex_phy** %11, align 8
  %67 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @SAS_ADDR(i32 %68)
  %70 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %71 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @SAS_ADDR(i32 %72)
  %74 = icmp eq i64 %69, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %58
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %78 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  br label %83

79:                                               ; preds = %58
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %51

83:                                               ; preds = %75, %51
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %86 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %84, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %83
  %91 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %92 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %93 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @SAS_ADDR(i32 %94)
  %96 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %97 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @SAS_ADDR(i32 %98)
  %100 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %95, i64 %99)
  %101 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %91, i32 %100)
  store i32 -1, i32* %5, align 4
  br label %102

102:                                              ; preds = %90, %83
  br label %119

103:                                              ; preds = %44, %28
  %104 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %105 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SAS_SATA_DEV, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %111 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %117 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  store i32 1, i32* %9, align 4
  br label %118

118:                                              ; preds = %109, %103
  br label %119

119:                                              ; preds = %118, %102
  %120 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %121 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %122 = call i32 @PM8001_DISC_DBG(%struct.pm8001_hba_info* %120, i32 %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PM8001_CHIP_DISP, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32 (%struct.pm8001_hba_info*, %struct.pm8001_device*, i32)*, i32 (%struct.pm8001_hba_info*, %struct.pm8001_device*, i32)** %124, align 8
  %126 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %127 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 %125(%struct.pm8001_hba_info* %126, %struct.pm8001_device* %127, i32 %128)
  %130 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %131 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %130, i32 0, i32 0
  %132 = load i64, i64* %4, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i64 %132)
  %134 = call i32 @wait_for_completion(i32* @completion)
  %135 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %136 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @SAS_END_DEVICE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %119
  %141 = call i32 @msleep(i32 50)
  br label %142

142:                                              ; preds = %140, %119
  %143 = load i32, i32* @PM8001F_RUN_TIME, align 4
  %144 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %145 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  store i32 0, i32* %2, align 4
  br label %152

146:                                              ; preds = %27
  %147 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %148 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %147, i32 0, i32 0
  %149 = load i64, i64* %4, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  %151 = load i32, i32* %5, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %146, %142
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local %struct.pm8001_hba_info* @pm8001_find_ha_by_dev(%struct.domain_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.pm8001_device* @pm8001_alloc_dev(%struct.pm8001_hba_info*) #1

declare dso_local i64 @dev_is_expander(i64) #1

declare dso_local i64 @SAS_ADDR(i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @PM8001_DISC_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
