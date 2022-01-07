; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_sysmon.c_qcom_add_sysmon_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_sysmon.c_qcom_add_sysmon_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_sysmon = type { i8*, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_7__, i32, %struct.TYPE_8__*, i32, i32, i32, i32, %struct.rproc* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.rproc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"shutdown-ack\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to retrieve shutdown-ack IRQ\0A\00", align 1
@sysmon_shutdown_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"q6v5 shutdown-ack\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to acquire shutdown-ack IRQ\0A\00", align 1
@SSCTL_MAX_MSG_LEN = common dso_local global i32 0, align 4
@ssctl_ops = common dso_local global i32 0, align 4
@qmi_indication_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to initialize qmi handle\0A\00", align 1
@sysmon_start = common dso_local global i32 0, align 4
@sysmon_stop = common dso_local global i32 0, align 4
@sysmon_notify = common dso_local global i32 0, align 4
@sysmon_notifiers = common dso_local global i32 0, align 4
@sysmon_lock = common dso_local global i32 0, align 4
@sysmon_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qcom_sysmon* @qcom_add_sysmon_subdev(%struct.rproc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.qcom_sysmon*, align 8
  %5 = alloca %struct.rproc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qcom_sysmon*, align 8
  %9 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.qcom_sysmon* @kzalloc(i32 72, i32 %10)
  store %struct.qcom_sysmon* %11, %struct.qcom_sysmon** %8, align 8
  %12 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %13 = icmp ne %struct.qcom_sysmon* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.qcom_sysmon* @ERR_PTR(i32 %16)
  store %struct.qcom_sysmon* %17, %struct.qcom_sysmon** %4, align 8
  br label %144

18:                                               ; preds = %3
  %19 = load %struct.rproc*, %struct.rproc** %5, align 8
  %20 = getelementptr inbounds %struct.rproc, %struct.rproc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %24 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %23, i32 0, i32 7
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %24, align 8
  %25 = load %struct.rproc*, %struct.rproc** %5, align 8
  %26 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %27 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %26, i32 0, i32 12
  store %struct.rproc* %25, %struct.rproc** %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %30 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %33 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %35 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %34, i32 0, i32 11
  %36 = call i32 @init_completion(i32* %35)
  %37 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %38 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %37, i32 0, i32 10
  %39 = call i32 @init_completion(i32* %38)
  %40 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %41 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %40, i32 0, i32 9
  %42 = call i32 @init_completion(i32* %41)
  %43 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %44 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %43, i32 0, i32 8
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %47 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %46, i32 0, i32 7
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @of_irq_get_byname(i32 %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %53 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %55 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %18
  %59 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %60 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ENODATA, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %67 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %66, i32 0, i32 7
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = call i32 @dev_err(%struct.TYPE_8__* %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %71 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.qcom_sysmon* @ERR_PTR(i32 %72)
  store %struct.qcom_sysmon* %73, %struct.qcom_sysmon** %4, align 8
  br label %144

74:                                               ; preds = %58
  br label %98

75:                                               ; preds = %18
  %76 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %77 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %76, i32 0, i32 7
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %80 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @sysmon_shutdown_interrupt, align 4
  %83 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %84 = load i32, i32* @IRQF_ONESHOT, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %87 = call i32 @devm_request_threaded_irq(%struct.TYPE_8__* %78, i32 %81, i32* null, i32 %82, i32 %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.qcom_sysmon* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %75
  %91 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %92 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %91, i32 0, i32 7
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = call i32 @dev_err(%struct.TYPE_8__* %93, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* %9, align 4
  %96 = call %struct.qcom_sysmon* @ERR_PTR(i32 %95)
  store %struct.qcom_sysmon* %96, %struct.qcom_sysmon** %4, align 8
  br label %144

97:                                               ; preds = %75
  br label %98

98:                                               ; preds = %97, %74
  %99 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %100 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %99, i32 0, i32 6
  %101 = load i32, i32* @SSCTL_MAX_MSG_LEN, align 4
  %102 = load i32, i32* @qmi_indication_handler, align 4
  %103 = call i32 @qmi_handle_init(i32* %100, i32 %101, i32* @ssctl_ops, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %98
  %107 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %108 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %107, i32 0, i32 7
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = call i32 @dev_err(%struct.TYPE_8__* %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %111 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %112 = call i32 @kfree(%struct.qcom_sysmon* %111)
  %113 = load i32, i32* %9, align 4
  %114 = call %struct.qcom_sysmon* @ERR_PTR(i32 %113)
  store %struct.qcom_sysmon* %114, %struct.qcom_sysmon** %4, align 8
  br label %144

115:                                              ; preds = %98
  %116 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %117 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %116, i32 0, i32 6
  %118 = call i32 @qmi_add_lookup(i32* %117, i32 43, i32 0, i32 0)
  %119 = load i32, i32* @sysmon_start, align 4
  %120 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %121 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* @sysmon_stop, align 4
  %124 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %125 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  %127 = load %struct.rproc*, %struct.rproc** %5, align 8
  %128 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %129 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %128, i32 0, i32 5
  %130 = call i32 @rproc_add_subdev(%struct.rproc* %127, %struct.TYPE_7__* %129)
  %131 = load i32, i32* @sysmon_notify, align 4
  %132 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %133 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 4
  %135 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %136 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %135, i32 0, i32 4
  %137 = call i32 @blocking_notifier_chain_register(i32* @sysmon_notifiers, %struct.TYPE_9__* %136)
  %138 = call i32 @mutex_lock(i32* @sysmon_lock)
  %139 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  %140 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %139, i32 0, i32 3
  %141 = call i32 @list_add(i32* %140, i32* @sysmon_list)
  %142 = call i32 @mutex_unlock(i32* @sysmon_lock)
  %143 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %8, align 8
  store %struct.qcom_sysmon* %143, %struct.qcom_sysmon** %4, align 8
  br label %144

144:                                              ; preds = %115, %106, %90, %65, %14
  %145 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %4, align 8
  ret %struct.qcom_sysmon* %145
}

declare dso_local %struct.qcom_sysmon* @kzalloc(i32, i32) #1

declare dso_local %struct.qcom_sysmon* @ERR_PTR(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @of_irq_get_byname(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_8__*, i32, i32*, i32, i32, i8*, %struct.qcom_sysmon*) #1

declare dso_local i32 @qmi_handle_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.qcom_sysmon*) #1

declare dso_local i32 @qmi_add_lookup(i32*, i32, i32, i32) #1

declare dso_local i32 @rproc_add_subdev(%struct.rproc*, %struct.TYPE_7__*) #1

declare dso_local i32 @blocking_notifier_chain_register(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
