; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_sysfs.c_fcoe_ctlr_device_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_sysfs.c_fcoe_ctlr_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr_device = type { i32, i32*, i32*, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, %struct.fcoe_sysfs_function_template* }
%struct.TYPE_3__ = type { i32*, i32*, %struct.device* }
%struct.device = type { i32 }
%struct.fcoe_sysfs_function_template = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ctlr_num = common dso_local global i32 0, align 4
@FIP_CONN_TYPE_FABRIC = common dso_local global i32 0, align 4
@fcoe_bus_type = common dso_local global i32 0, align 4
@fcoe_ctlr_device_type = common dso_local global i32 0, align 4
@fcoe_fcf_dev_loss_tmo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ctlr_wq_%d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ctlr_dl_wq_%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ctlr_%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fcoe_ctlr_device* @fcoe_ctlr_device_add(%struct.device* %0, %struct.fcoe_sysfs_function_template* %1, i32 %2) #0 {
  %4 = alloca %struct.fcoe_ctlr_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.fcoe_sysfs_function_template*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fcoe_ctlr_device*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.fcoe_sysfs_function_template* %1, %struct.fcoe_sysfs_function_template** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 80, %11
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.fcoe_ctlr_device* @kzalloc(i32 %13, i32 %14)
  store %struct.fcoe_ctlr_device* %15, %struct.fcoe_ctlr_device** %8, align 8
  %16 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %17 = icmp ne %struct.fcoe_ctlr_device* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %120

19:                                               ; preds = %3
  %20 = call i32 @atomic_inc_return(i32* @ctlr_num)
  %21 = sub nsw i32 %20, 1
  %22 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %23 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.fcoe_sysfs_function_template*, %struct.fcoe_sysfs_function_template** %6, align 8
  %25 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %26 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %25, i32 0, i32 10
  store %struct.fcoe_sysfs_function_template* %24, %struct.fcoe_sysfs_function_template** %26, align 8
  %27 = load i32, i32* @FIP_CONN_TYPE_FABRIC, align 4
  %28 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %29 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 4
  %30 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %31 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %30, i32 0, i32 8
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %34 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %33, i32 0, i32 7
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %38 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store %struct.device* %36, %struct.device** %39, align 8
  %40 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %41 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32* @fcoe_bus_type, i32** %42, align 8
  %43 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %44 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32* @fcoe_ctlr_device_type, i32** %45, align 8
  %46 = load i32, i32* @fcoe_fcf_dev_loss_tmo, align 4
  %47 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %48 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  %49 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %50 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %53 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @snprintf(i32 %51, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %57 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @create_singlethread_workqueue(i32 %58)
  %60 = bitcast i8* %59 to i32*
  %61 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %62 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %64 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %19
  br label %117

68:                                               ; preds = %19
  %69 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %70 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %73 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @snprintf(i32 %71, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %77 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @create_singlethread_workqueue(i32 %78)
  %80 = bitcast i8* %79 to i32*
  %81 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %82 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %81, i32 0, i32 2
  store i32* %80, i32** %82, align 8
  %83 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %84 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %68
  br label %110

88:                                               ; preds = %68
  %89 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %90 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %89, i32 0, i32 3
  %91 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %92 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dev_set_name(%struct.TYPE_3__* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %96 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %95, i32 0, i32 3
  %97 = call i32 @device_register(%struct.TYPE_3__* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  br label %103

101:                                              ; preds = %88
  %102 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  store %struct.fcoe_ctlr_device* %102, %struct.fcoe_ctlr_device** %4, align 8
  br label %121

103:                                              ; preds = %100
  %104 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %105 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @destroy_workqueue(i32* %106)
  %108 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %109 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %108, i32 0, i32 2
  store i32* null, i32** %109, align 8
  br label %110

110:                                              ; preds = %103, %87
  %111 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %112 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @destroy_workqueue(i32* %113)
  %115 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %116 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %115, i32 0, i32 1
  store i32* null, i32** %116, align 8
  br label %117

117:                                              ; preds = %110, %67
  %118 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %8, align 8
  %119 = call i32 @kfree(%struct.fcoe_ctlr_device* %118)
  br label %120

120:                                              ; preds = %117, %18
  store %struct.fcoe_ctlr_device* null, %struct.fcoe_ctlr_device** %4, align 8
  br label %121

121:                                              ; preds = %120, %101
  %122 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %4, align 8
  ret %struct.fcoe_ctlr_device* %122
}

declare dso_local %struct.fcoe_ctlr_device* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i8* @create_singlethread_workqueue(i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_3__*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @kfree(%struct.fcoe_ctlr_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
