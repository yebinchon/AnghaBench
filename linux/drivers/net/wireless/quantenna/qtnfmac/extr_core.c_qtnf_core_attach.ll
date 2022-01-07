; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_core_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_core_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"QTNF_BUS\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to alloc main workqueue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"QTNF_HPRI\00", align 1
@WQ_HIGHPRI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to alloc high prio workqueue\0A\00", align 1
@qtnf_event_work_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to init FW: %d\0A\00", align 1
@QTNF_FW_STATE_ACTIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to get HW info: %d\0A\00", align 1
@QLINK_PROTO_VER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"qlink version mismatch %u != %u\0A\00", align 1
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@QTNF_MAX_MAC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"no support for number of MACs=%u\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"MAC%u: attach failed: %d\0A\00", align 1
@QTNF_FW_STATE_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_core_attach(%struct.qtnf_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qtnf_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %3, align 8
  %6 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %7 = call i32 @qtnf_trans_init(%struct.qtnf_bus* %6)
  %8 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %9 = call i32 @qtnf_bus_data_rx_start(%struct.qtnf_bus* %8)
  %10 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %11 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %12 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %14 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %114

21:                                               ; preds = %1
  %22 = load i32, i32* @WQ_HIGHPRI, align 4
  %23 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 0)
  %24 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %25 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %27 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %21
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %114

34:                                               ; preds = %21
  %35 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %36 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %35, i32 0, i32 2
  %37 = load i32, i32* @qtnf_event_work_handler, align 4
  %38 = call i32 @INIT_WORK(i32* %36, i32 %37)
  %39 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %40 = call i32 @qtnf_cmd_send_init_fw(%struct.qtnf_bus* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  br label %114

46:                                               ; preds = %34
  %47 = load i32, i32* @QTNF_FW_STATE_ACTIVE, align 4
  %48 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %49 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %51 = call i32 @qtnf_cmd_get_hw_info(%struct.qtnf_bus* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  br label %114

57:                                               ; preds = %46
  %58 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %59 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @QLINK_PROTO_VER, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load i32, i32* @QLINK_PROTO_VER, align 4
  %66 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %67 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %65, i32 %69)
  %71 = load i32, i32* @EPROTONOSUPPORT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %114

73:                                               ; preds = %57
  %74 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %75 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @QTNF_MAX_MAC, align 4
  %79 = icmp ugt i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %82 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @ERANGE, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %114

88:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %107, %88
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %92 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ult i32 %90, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %89
  %97 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @qtnf_core_mac_attach(%struct.qtnf_bus* %97, i32 %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %103, i32 %104)
  br label %114

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %4, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %4, align 4
  br label %89

110:                                              ; preds = %89
  %111 = load i32, i32* @QTNF_FW_STATE_RUNNING, align 4
  %112 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %113 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  store i32 0, i32* %2, align 4
  br label %118

114:                                              ; preds = %102, %80, %64, %54, %43, %30, %17
  %115 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %116 = call i32 @qtnf_core_detach(%struct.qtnf_bus* %115)
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %114, %110
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @qtnf_trans_init(%struct.qtnf_bus*) #1

declare dso_local i32 @qtnf_bus_data_rx_start(%struct.qtnf_bus*) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @qtnf_cmd_send_init_fw(%struct.qtnf_bus*) #1

declare dso_local i32 @qtnf_cmd_get_hw_info(%struct.qtnf_bus*) #1

declare dso_local i32 @qtnf_core_mac_attach(%struct.qtnf_bus*, i32) #1

declare dso_local i32 @qtnf_core_detach(%struct.qtnf_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
