; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_get_fw_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_get_fw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32, i32, i32, i32, i32, %struct.clk*, i32, %struct.platform_device*, %struct.device* }
%struct.clk = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"sas-addr\00", align 1
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"could not get property sas-addr\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"hisilicon,sas-syscon\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"could not get syscon\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ctrl-reset-reg\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"could not get property ctrl-reset-reg\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ctrl-reset-sts-reg\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"could not get property ctrl-reset-sts-reg\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"ctrl-clock-ena-reg\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"could not get property ctrl-clock-ena-reg\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"no ref clk property\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"phy-count\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"could not get property phy-count\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"queue-count\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"could not get property queue-count\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hisi_sas_get_fw_info(%struct.hisi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.clk*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  %8 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %9 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %8, i32 0, i32 9
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %12 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %11, i32 0, i32 8
  %13 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  store %struct.platform_device* %13, %struct.platform_device** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %15 = icmp ne %struct.platform_device* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi %struct.device_node* [ %20, %16 ], [ null, %21 ]
  store %struct.device_node* %23, %struct.device_node** %6, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %26 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %29 = call i64 @device_property_read_u8_array(%struct.device* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %126

36:                                               ; preds = %22
  %37 = load %struct.device_node*, %struct.device_node** %6, align 8
  %38 = icmp ne %struct.device_node* %37, null
  br i1 %38, label %39, label %88

39:                                               ; preds = %36
  %40 = load %struct.device_node*, %struct.device_node** %6, align 8
  %41 = call %struct.clk* @syscon_regmap_lookup_by_phandle(%struct.device_node* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %43 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %42, i32 0, i32 6
  store %struct.clk* %41, %struct.clk** %43, align 8
  %44 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %45 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %44, i32 0, i32 6
  %46 = load %struct.clk*, %struct.clk** %45, align 8
  %47 = call i64 @IS_ERR(%struct.clk* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %126

54:                                               ; preds = %39
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %57 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %56, i32 0, i32 5
  %58 = call i64 @device_property_read_u32(%struct.device* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i32, i32* @ENOENT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %126

65:                                               ; preds = %54
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %68 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %67, i32 0, i32 4
  %69 = call i64 @device_property_read_u32(%struct.device* %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %74 = load i32, i32* @ENOENT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %126

76:                                               ; preds = %65
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %79 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %78, i32 0, i32 3
  %80 = call i64 @device_property_read_u32(%struct.device* %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %126

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %36
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call %struct.clk* @devm_clk_get(%struct.device* %89, i32* null)
  store %struct.clk* %90, %struct.clk** %7, align 8
  %91 = load %struct.clk*, %struct.clk** %7, align 8
  %92 = call i64 @IS_ERR(%struct.clk* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call i32 @dev_dbg(%struct.device* %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %103

97:                                               ; preds = %88
  %98 = load %struct.clk*, %struct.clk** %7, align 8
  %99 = call i32 @clk_get_rate(%struct.clk* %98)
  %100 = sdiv i32 %99, 1000000
  %101 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %102 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %97, %94
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %106 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %105, i32 0, i32 2
  %107 = call i64 @device_property_read_u32(%struct.device* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = call i32 @dev_err(%struct.device* %110, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %112 = load i32, i32* @ENOENT, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %126

114:                                              ; preds = %103
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %117 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %116, i32 0, i32 1
  %118 = call i64 @device_property_read_u32(%struct.device* %115, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = call i32 @dev_err(%struct.device* %121, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  %123 = load i32, i32* @ENOENT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %126

125:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %120, %109, %82, %71, %60, %49, %31
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i64 @device_property_read_u8_array(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.clk* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i64 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
