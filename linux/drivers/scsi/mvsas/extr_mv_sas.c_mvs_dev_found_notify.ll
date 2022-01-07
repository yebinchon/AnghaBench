; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_dev_found_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_dev_found_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, %struct.TYPE_2__, i32, %struct.mvs_device*, %struct.domain_device* }
%struct.TYPE_2__ = type { i32, %struct.ex_phy* }
%struct.ex_phy = type { i32 }
%struct.mvs_device = type { i32, %struct.domain_device*, %struct.mvs_info*, i32, i32 }
%struct.mvs_info = type { i32 }

@MVS_DEV_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Error: no attached dev:%016llxat ex:%016llx.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i32)* @mvs_dev_found_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_dev_found_notify(%struct.domain_device* %0, i32 %1) #0 {
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvs_info*, align 8
  %8 = alloca %struct.domain_device*, align 8
  %9 = alloca %struct.mvs_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ex_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.mvs_info* null, %struct.mvs_info** %7, align 8
  %13 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %14 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %13, i32 0, i32 4
  %15 = load %struct.domain_device*, %struct.domain_device** %14, align 8
  store %struct.domain_device* %15, %struct.domain_device** %8, align 8
  %16 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %17 = call %struct.mvs_info* @mvs_find_dev_mvi(%struct.domain_device* %16)
  store %struct.mvs_info* %17, %struct.mvs_info** %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.mvs_info*, %struct.mvs_info** %7, align 8
  %22 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.mvs_info*, %struct.mvs_info** %7, align 8
  %27 = call %struct.mvs_device* @mvs_alloc_dev(%struct.mvs_info* %26)
  store %struct.mvs_device* %27, %struct.mvs_device** %9, align 8
  %28 = load %struct.mvs_device*, %struct.mvs_device** %9, align 8
  %29 = icmp ne %struct.mvs_device* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 -1, i32* %6, align 4
  br label %107

31:                                               ; preds = %25
  %32 = load %struct.mvs_device*, %struct.mvs_device** %9, align 8
  %33 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %34 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %33, i32 0, i32 3
  store %struct.mvs_device* %32, %struct.mvs_device** %34, align 8
  %35 = load i32, i32* @MVS_DEV_NORMAL, align 4
  %36 = load %struct.mvs_device*, %struct.mvs_device** %9, align 8
  %37 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %39 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mvs_device*, %struct.mvs_device** %9, align 8
  %42 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mvs_info*, %struct.mvs_info** %7, align 8
  %44 = load %struct.mvs_device*, %struct.mvs_device** %9, align 8
  %45 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %44, i32 0, i32 2
  store %struct.mvs_info* %43, %struct.mvs_info** %45, align 8
  %46 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %47 = load %struct.mvs_device*, %struct.mvs_device** %9, align 8
  %48 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %47, i32 0, i32 1
  store %struct.domain_device* %46, %struct.domain_device** %48, align 8
  %49 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %50 = icmp ne %struct.domain_device* %49, null
  br i1 %50, label %51, label %106

51:                                               ; preds = %31
  %52 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %53 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @dev_is_expander(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %106

57:                                               ; preds = %51
  %58 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %59 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %88, %57
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %62
  %67 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %68 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load %struct.ex_phy*, %struct.ex_phy** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %70, i64 %72
  store %struct.ex_phy* %73, %struct.ex_phy** %12, align 8
  %74 = load %struct.ex_phy*, %struct.ex_phy** %12, align 8
  %75 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @SAS_ADDR(i32 %76)
  %78 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %79 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @SAS_ADDR(i32 %80)
  %82 = icmp eq i64 %77, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %66
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.mvs_device*, %struct.mvs_device** %9, align 8
  %86 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %91

87:                                               ; preds = %66
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %62

91:                                               ; preds = %83, %62
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %97 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @SAS_ADDR(i32 %98)
  %100 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %101 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @SAS_ADDR(i32 %102)
  %104 = call i32 @mv_printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %99, i64 %103)
  store i32 -1, i32* %6, align 4
  br label %105

105:                                              ; preds = %95, %91
  br label %106

106:                                              ; preds = %105, %51, %31
  br label %107

107:                                              ; preds = %106, %30
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.mvs_info*, %struct.mvs_info** %7, align 8
  %112 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %111, i32 0, i32 0
  %113 = load i64, i64* %5, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32* %112, i64 %113)
  br label %115

115:                                              ; preds = %110, %107
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local %struct.mvs_info* @mvs_find_dev_mvi(%struct.domain_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.mvs_device* @mvs_alloc_dev(%struct.mvs_info*) #1

declare dso_local i64 @dev_is_expander(i32) #1

declare dso_local i64 @SAS_ADDR(i32) #1

declare dso_local i32 @mv_printk(i8*, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
