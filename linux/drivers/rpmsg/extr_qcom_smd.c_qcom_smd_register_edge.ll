; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_register_edge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_register_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smd_edge = type { %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.device_node*, i32, %struct.device* }
%struct.device = type { i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qcom_smd_edge_release = common dso_local global i32 0, align 4
@qcom_smd_edge_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s:%pOFn\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to register smd edge\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to parse smd edge\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to register chrdev for edge\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qcom_smd_edge* @qcom_smd_register_edge(%struct.device* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.qcom_smd_edge*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.qcom_smd_edge*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.qcom_smd_edge* @kzalloc(i32 48, i32 %8)
  store %struct.qcom_smd_edge* %9, %struct.qcom_smd_edge** %6, align 8
  %10 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %11 = icmp ne %struct.qcom_smd_edge* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.qcom_smd_edge* @ERR_PTR(i32 %14)
  store %struct.qcom_smd_edge* %15, %struct.qcom_smd_edge** %3, align 8
  br label %97

16:                                               ; preds = %2
  %17 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %18 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %17, i32 0, i32 3
  %19 = call i32 @init_waitqueue_head(i32* %18)
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %22 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  store %struct.device* %20, %struct.device** %23, align 8
  %24 = load i32, i32* @qcom_smd_edge_release, align 4
  %25 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %26 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 8
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %30 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store %struct.device_node* %28, %struct.device_node** %31, align 8
  %32 = load i32, i32* @qcom_smd_edge_groups, align 4
  %33 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %34 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %37 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %36, i32 0, i32 0
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 @dev_name(%struct.device* %38)
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = call i32 @dev_set_name(%struct.TYPE_7__* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %39, %struct.device_node* %40)
  %42 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %43 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %42, i32 0, i32 0
  %44 = call i32 @device_register(%struct.TYPE_7__* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %16
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %50 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %49, i32 0, i32 0
  %51 = call i32 @put_device(%struct.TYPE_7__* %50)
  %52 = load i32, i32* %7, align 4
  %53 = call %struct.qcom_smd_edge* @ERR_PTR(i32 %52)
  store %struct.qcom_smd_edge* %53, %struct.qcom_smd_edge** %3, align 8
  br label %97

54:                                               ; preds = %16
  %55 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %56 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %55, i32 0, i32 0
  %57 = load %struct.device_node*, %struct.device_node** %5, align 8
  %58 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %59 = call i32 @qcom_smd_parse_edge(%struct.TYPE_7__* %56, %struct.device_node* %57, %struct.qcom_smd_edge* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %64 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %63, i32 0, i32 0
  %65 = call i32 @dev_err(%struct.TYPE_7__* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %80

66:                                               ; preds = %54
  %67 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %68 = call i32 @qcom_smd_create_chrdev(%struct.qcom_smd_edge* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %73 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %72, i32 0, i32 0
  %74 = call i32 @dev_err(%struct.TYPE_7__* %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %80

75:                                               ; preds = %66
  %76 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %77 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %76, i32 0, i32 2
  %78 = call i32 @schedule_work(i32* %77)
  %79 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  store %struct.qcom_smd_edge* %79, %struct.qcom_smd_edge** %3, align 8
  br label %97

80:                                               ; preds = %71, %62
  %81 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %82 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @IS_ERR_OR_NULL(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %80
  %87 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %88 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @mbox_free_channel(i32 %89)
  br label %91

91:                                               ; preds = %86, %80
  %92 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %6, align 8
  %93 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %92, i32 0, i32 0
  %94 = call i32 @device_unregister(%struct.TYPE_7__* %93)
  %95 = load i32, i32* %7, align 4
  %96 = call %struct.qcom_smd_edge* @ERR_PTR(i32 %95)
  store %struct.qcom_smd_edge* %96, %struct.qcom_smd_edge** %3, align 8
  br label %97

97:                                               ; preds = %91, %75, %47, %12
  %98 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %3, align 8
  ret %struct.qcom_smd_edge* %98
}

declare dso_local %struct.qcom_smd_edge* @kzalloc(i32, i32) #1

declare dso_local %struct.qcom_smd_edge* @ERR_PTR(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32, %struct.device_node*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @device_register(%struct.TYPE_7__*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

declare dso_local i32 @qcom_smd_parse_edge(%struct.TYPE_7__*, %struct.device_node*, %struct.qcom_smd_edge*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @qcom_smd_create_chrdev(%struct.qcom_smd_edge*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @mbox_free_channel(i32) #1

declare dso_local i32 @device_unregister(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
