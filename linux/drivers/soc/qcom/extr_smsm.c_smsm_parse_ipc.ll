; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smsm.c_smsm_parse_ipc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smsm.c_smsm_parse_ipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smsm = type { %struct.TYPE_2__*, %struct.smsm_host* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.smsm_host = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"qcom,ipc-%d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no offset in %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"no bit in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_smsm*, i32)* @smsm_parse_ipc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsm_parse_ipc(%struct.qcom_smsm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcom_smsm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.smsm_host*, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.qcom_smsm* %0, %struct.qcom_smsm** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.qcom_smsm*, %struct.qcom_smsm** %4, align 8
  %12 = getelementptr inbounds %struct.qcom_smsm, %struct.qcom_smsm* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %7, align 8
  %16 = load %struct.qcom_smsm*, %struct.qcom_smsm** %4, align 8
  %17 = getelementptr inbounds %struct.qcom_smsm, %struct.qcom_smsm* %16, i32 0, i32 1
  %18 = load %struct.smsm_host*, %struct.smsm_host** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.smsm_host, %struct.smsm_host* %18, i64 %20
  store %struct.smsm_host* %21, %struct.smsm_host** %8, align 8
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @snprintf(i8* %22, i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.device_node*, %struct.device_node** %7, align 8
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %27 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %25, i8* %26, i32 0)
  store %struct.device_node* %27, %struct.device_node** %6, align 8
  %28 = load %struct.device_node*, %struct.device_node** %6, align 8
  %29 = icmp ne %struct.device_node* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

31:                                               ; preds = %2
  %32 = load %struct.device_node*, %struct.device_node** %6, align 8
  %33 = call i32 @syscon_node_to_regmap(%struct.device_node* %32)
  %34 = load %struct.smsm_host*, %struct.smsm_host** %8, align 8
  %35 = getelementptr inbounds %struct.smsm_host, %struct.smsm_host* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.smsm_host*, %struct.smsm_host** %8, align 8
  %37 = getelementptr inbounds %struct.smsm_host, %struct.smsm_host* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.smsm_host*, %struct.smsm_host** %8, align 8
  %43 = getelementptr inbounds %struct.smsm_host, %struct.smsm_host* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %3, align 4
  br label %79

46:                                               ; preds = %31
  %47 = load %struct.device_node*, %struct.device_node** %7, align 8
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %49 = load %struct.smsm_host*, %struct.smsm_host** %8, align 8
  %50 = getelementptr inbounds %struct.smsm_host, %struct.smsm_host* %49, i32 0, i32 1
  %51 = call i32 @of_property_read_u32_index(%struct.device_node* %47, i8* %48, i32 1, i32* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load %struct.qcom_smsm*, %struct.qcom_smsm** %4, align 8
  %56 = getelementptr inbounds %struct.qcom_smsm, %struct.qcom_smsm* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %59 = call i32 @dev_err(%struct.TYPE_2__* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %79

62:                                               ; preds = %46
  %63 = load %struct.device_node*, %struct.device_node** %7, align 8
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %65 = load %struct.smsm_host*, %struct.smsm_host** %8, align 8
  %66 = getelementptr inbounds %struct.smsm_host, %struct.smsm_host* %65, i32 0, i32 0
  %67 = call i32 @of_property_read_u32_index(%struct.device_node* %63, i8* %64, i32 2, i32* %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load %struct.qcom_smsm*, %struct.qcom_smsm** %4, align 8
  %72 = getelementptr inbounds %struct.qcom_smsm, %struct.qcom_smsm* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %75 = call i32 @dev_err(%struct.TYPE_2__* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %79

78:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %70, %54, %41, %30
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
