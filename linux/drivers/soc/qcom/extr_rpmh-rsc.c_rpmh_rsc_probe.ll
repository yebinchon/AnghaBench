; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c_rpmh_rsc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c_rpmh_rsc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.rsc_drv = type { %struct.TYPE_10__, %struct.TYPE_9__*, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Command DB not available (%d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"qcom,drv-id\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@MAX_TCS_NR = common dso_local global i32 0, align 4
@tcs_tx_done = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@RSC_DRV_IRQ_ENABLE = common dso_local global i32 0, align 4
@ACTIVE_TCS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rpmh_rsc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmh_rsc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.rsc_drv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = call i32 (...) @cmd_db_ready()
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @EPROBE_DEFER, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_err(%struct.TYPE_11__* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %134

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.rsc_drv* @devm_kzalloc(%struct.TYPE_11__* %29, i32 48, i32 %30)
  store %struct.rsc_drv* %31, %struct.rsc_drv** %5, align 8
  %32 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %33 = icmp ne %struct.rsc_drv* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %134

37:                                               ; preds = %27
  %38 = load %struct.device_node*, %struct.device_node** %4, align 8
  %39 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %40 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %39, i32 0, i32 3
  %41 = call i32 @of_property_read_u32(%struct.device_node* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %134

46:                                               ; preds = %37
  %47 = load %struct.device_node*, %struct.device_node** %4, align 8
  %48 = call i64 @of_get_property(%struct.device_node* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %49 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %50 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %52 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %46
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i64 @dev_name(%struct.TYPE_11__* %57)
  %59 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %60 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %55, %46
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %64 = call i32 @rpmh_probe_tcs_config(%struct.platform_device* %62, %struct.rsc_drv* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %134

69:                                               ; preds = %61
  %70 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %71 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %70, i32 0, i32 5
  %72 = call i32 @spin_lock_init(i32* %71)
  %73 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %74 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MAX_TCS_NR, align 4
  %77 = call i32 @bitmap_zero(i32 %75, i32 %76)
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %80 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @platform_get_irq(%struct.platform_device* %78, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %69
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %2, align 4
  br label %134

87:                                               ; preds = %69
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @tcs_tx_done, align 4
  %92 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %93 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %96 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %99 = call i32 @devm_request_irq(%struct.TYPE_11__* %89, i32 %90, i32 %91, i32 %94, i64 %97, %struct.rsc_drv* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %87
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %2, align 4
  br label %134

104:                                              ; preds = %87
  %105 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %106 = load i32, i32* @RSC_DRV_IRQ_ENABLE, align 4
  %107 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %108 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = load i64, i64* @ACTIVE_TCS, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @write_tcs_reg(%struct.rsc_drv* %105, i32 %106, i32 0, i32 %113)
  %115 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %116 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = call i32 @spin_lock_init(i32* %117)
  %119 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %120 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = call i32 @INIT_LIST_HEAD(i32* %121)
  %123 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %124 = getelementptr inbounds %struct.rsc_drv, %struct.rsc_drv* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = call i32 @INIT_LIST_HEAD(i32* %125)
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %130 = call i32 @dev_set_drvdata(%struct.TYPE_11__* %128, %struct.rsc_drv* %129)
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i32 @devm_of_platform_populate(%struct.TYPE_11__* %132)
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %104, %102, %85, %67, %44, %34, %25
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @cmd_db_ready(...) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local %struct.rsc_drv* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @dev_name(%struct.TYPE_11__*) #1

declare dso_local i32 @rpmh_probe_tcs_config(%struct.platform_device*, %struct.rsc_drv*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_11__*, i32, i32, i32, i64, %struct.rsc_drv*) #1

declare dso_local i32 @write_tcs_reg(%struct.rsc_drv*, i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_11__*, %struct.rsc_drv*) #1

declare dso_local i32 @devm_of_platform_populate(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
