; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_init_desc_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_init_desc_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@QUERY_DESC_IDN_DEVICE = common dso_local global i32 0, align 4
@QUERY_DESC_DEVICE_DEF_SIZE = common dso_local global i32 0, align 4
@QUERY_DESC_IDN_POWER = common dso_local global i32 0, align 4
@QUERY_DESC_POWER_DEF_SIZE = common dso_local global i32 0, align 4
@QUERY_DESC_IDN_INTERCONNECT = common dso_local global i32 0, align 4
@QUERY_DESC_INTERCONNECT_DEF_SIZE = common dso_local global i32 0, align 4
@QUERY_DESC_IDN_CONFIGURATION = common dso_local global i32 0, align 4
@QUERY_DESC_CONFIGURATION_DEF_SIZE = common dso_local global i32 0, align 4
@QUERY_DESC_IDN_UNIT = common dso_local global i32 0, align 4
@QUERY_DESC_UNIT_DEF_SIZE = common dso_local global i32 0, align 4
@QUERY_DESC_IDN_GEOMETRY = common dso_local global i32 0, align 4
@QUERY_DESC_GEOMETRY_DEF_SIZE = common dso_local global i32 0, align 4
@QUERY_DESC_IDN_HEALTH = common dso_local global i32 0, align 4
@QUERY_DESC_HEALTH_DEF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @ufshcd_init_desc_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_init_desc_sizes(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %4 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %5 = load i32, i32* @QUERY_DESC_IDN_DEVICE, align 4
  %6 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %7 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 6
  %9 = call i32 @ufshcd_read_desc_length(%struct.ufs_hba* %4, i32 %5, i32 0, i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @QUERY_DESC_DEVICE_DEF_SIZE, align 4
  %14 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %15 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 6
  store i32 %13, i32* %16, align 4
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %19 = load i32, i32* @QUERY_DESC_IDN_POWER, align 4
  %20 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %21 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 5
  %23 = call i32 @ufshcd_read_desc_length(%struct.ufs_hba* %18, i32 %19, i32 0, i32* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load i32, i32* @QUERY_DESC_POWER_DEF_SIZE, align 4
  %28 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %29 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 5
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %17
  %32 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %33 = load i32, i32* @QUERY_DESC_IDN_INTERCONNECT, align 4
  %34 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %35 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  %37 = call i32 @ufshcd_read_desc_length(%struct.ufs_hba* %32, i32 %33, i32 0, i32* %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load i32, i32* @QUERY_DESC_INTERCONNECT_DEF_SIZE, align 4
  %42 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %43 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %31
  %46 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %47 = load i32, i32* @QUERY_DESC_IDN_CONFIGURATION, align 4
  %48 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %49 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = call i32 @ufshcd_read_desc_length(%struct.ufs_hba* %46, i32 %47, i32 0, i32* %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load i32, i32* @QUERY_DESC_CONFIGURATION_DEF_SIZE, align 4
  %56 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %57 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %45
  %60 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %61 = load i32, i32* @QUERY_DESC_IDN_UNIT, align 4
  %62 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %63 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = call i32 @ufshcd_read_desc_length(%struct.ufs_hba* %60, i32 %61, i32 0, i32* %64)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = load i32, i32* @QUERY_DESC_UNIT_DEF_SIZE, align 4
  %70 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %71 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %59
  %74 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %75 = load i32, i32* @QUERY_DESC_IDN_GEOMETRY, align 4
  %76 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %77 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = call i32 @ufshcd_read_desc_length(%struct.ufs_hba* %74, i32 %75, i32 0, i32* %78)
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* %3, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load i32, i32* @QUERY_DESC_GEOMETRY_DEF_SIZE, align 4
  %84 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %85 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %73
  %88 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %89 = load i32, i32* @QUERY_DESC_IDN_HEALTH, align 4
  %90 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %91 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = call i32 @ufshcd_read_desc_length(%struct.ufs_hba* %88, i32 %89, i32 0, i32* %92)
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %87
  %97 = load i32, i32* @QUERY_DESC_HEALTH_DEF_SIZE, align 4
  %98 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %99 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 4
  br label %101

101:                                              ; preds = %96, %87
  ret void
}

declare dso_local i32 @ufshcd_read_desc_length(%struct.ufs_hba*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
