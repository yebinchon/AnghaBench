; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_wkup_m3_ipc.c_wkup_m3_ipc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_wkup_m3_ipc.c_wkup_m3_ipc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wkup_m3_ipc = type { %struct.task_struct*, i32*, i32, %struct.device*, %struct.rproc*, %struct.TYPE_2__, %struct.task_struct* }
%struct.device = type { i32 }
%struct.rproc = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32*, i32*, %struct.device* }
%struct.task_struct = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not ioremap ipc_mem\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no irq resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@wkup_m3_txev_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"wkup_m3_txev\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"IPC Request for A8->M3 Channel failed! %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ti,rproc\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"could not get rproc phandle\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"could not get rproc handle\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@M3_STATE_RESET = common dso_local global i32 0, align 4
@ipc_ops = common dso_local global i32 0, align 4
@wkup_m3_rproc_boot_thread = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"wkup_m3_rproc_loader\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"can't create rproc_boot thread\0A\00", align 1
@m3_ipc_state = common dso_local global %struct.wkup_m3_ipc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wkup_m3_ipc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wkup_m3_ipc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rproc*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca %struct.wkup_m3_ipc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.wkup_m3_ipc* @devm_kzalloc(%struct.device* %14, i32 88, i32 %15)
  store %struct.wkup_m3_ipc* %16, %struct.wkup_m3_ipc** %11, align 8
  %17 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %18 = icmp ne %struct.wkup_m3_ipc* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %165

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %9, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.resource*, %struct.resource** %9, align 8
  %28 = call %struct.task_struct* @devm_ioremap_resource(%struct.device* %26, %struct.resource* %27)
  %29 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %30 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %29, i32 0, i32 6
  store %struct.task_struct* %28, %struct.task_struct** %30, align 8
  %31 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %32 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %31, i32 0, i32 6
  %33 = load %struct.task_struct*, %struct.task_struct** %32, align 8
  %34 = call i64 @IS_ERR(%struct.task_struct* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %22
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %40 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %39, i32 0, i32 6
  %41 = load %struct.task_struct*, %struct.task_struct** %40, align 8
  %42 = call i32 @PTR_ERR(%struct.task_struct* %41)
  store i32 %42, i32* %2, align 4
  br label %165

43:                                               ; preds = %22
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = call i32 @platform_get_irq(%struct.platform_device* %44, i32 0)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENXIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %165

54:                                               ; preds = %43
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @wkup_m3_txev_handler, align 4
  %58 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %59 = call i32 @devm_request_irq(%struct.device* %55, i32 %56, i32 %57, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.wkup_m3_ipc* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %165

66:                                               ; preds = %54
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %69 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 5
  store %struct.device* %67, %struct.device** %70, align 8
  %71 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %72 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 4
  store i32* null, i32** %73, align 8
  %74 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %75 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  store i32* null, i32** %76, align 8
  %77 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %78 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  store i32* null, i32** %79, align 8
  %80 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %81 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %84 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32 0, i32* %85, align 4
  %86 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %87 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %86, i32 0, i32 5
  %88 = call %struct.task_struct* @mbox_request_channel(%struct.TYPE_2__* %87, i32 0)
  %89 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %90 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %89, i32 0, i32 0
  store %struct.task_struct* %88, %struct.task_struct** %90, align 8
  %91 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %92 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %91, i32 0, i32 0
  %93 = load %struct.task_struct*, %struct.task_struct** %92, align 8
  %94 = call i64 @IS_ERR(%struct.task_struct* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %66
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %99 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %98, i32 0, i32 0
  %100 = load %struct.task_struct*, %struct.task_struct** %99, align 8
  %101 = call i32 @PTR_ERR(%struct.task_struct* %100)
  %102 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %104 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %103, i32 0, i32 0
  %105 = load %struct.task_struct*, %struct.task_struct** %104, align 8
  %106 = call i32 @PTR_ERR(%struct.task_struct* %105)
  store i32 %106, i32* %2, align 4
  br label %165

107:                                              ; preds = %66
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = getelementptr inbounds %struct.device, %struct.device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @of_property_read_u32(i32 %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %7)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %117 = load i32, i32* @ENODEV, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %6, align 4
  br label %159

119:                                              ; preds = %107
  %120 = load i32, i32* %7, align 4
  %121 = call %struct.rproc* @rproc_get_by_phandle(i32 %120)
  store %struct.rproc* %121, %struct.rproc** %8, align 8
  %122 = load %struct.rproc*, %struct.rproc** %8, align 8
  %123 = icmp ne %struct.rproc* %122, null
  br i1 %123, label %130, label %124

124:                                              ; preds = %119
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %126, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %128 = load i32, i32* @EPROBE_DEFER, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  br label %159

130:                                              ; preds = %119
  %131 = load %struct.rproc*, %struct.rproc** %8, align 8
  %132 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %133 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %132, i32 0, i32 4
  store %struct.rproc* %131, %struct.rproc** %133, align 8
  %134 = load %struct.device*, %struct.device** %4, align 8
  %135 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %136 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %135, i32 0, i32 3
  store %struct.device* %134, %struct.device** %136, align 8
  %137 = load i32, i32* @M3_STATE_RESET, align 4
  %138 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %139 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %141 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %140, i32 0, i32 1
  store i32* @ipc_ops, i32** %141, align 8
  %142 = load i64, i64* @wkup_m3_rproc_boot_thread, align 8
  %143 = inttoptr i64 %142 to i8*
  %144 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %145 = call %struct.task_struct* @kthread_run(i8* %143, %struct.wkup_m3_ipc* %144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store %struct.task_struct* %145, %struct.task_struct** %10, align 8
  %146 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %147 = call i64 @IS_ERR(%struct.task_struct* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %130
  %150 = load %struct.device*, %struct.device** %4, align 8
  %151 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %150, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %152 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %153 = call i32 @PTR_ERR(%struct.task_struct* %152)
  store i32 %153, i32* %6, align 4
  br label %156

154:                                              ; preds = %130
  %155 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  store %struct.wkup_m3_ipc* %155, %struct.wkup_m3_ipc** @m3_ipc_state, align 8
  store i32 0, i32* %2, align 4
  br label %165

156:                                              ; preds = %149
  %157 = load %struct.rproc*, %struct.rproc** %8, align 8
  %158 = call i32 @rproc_put(%struct.rproc* %157)
  br label %159

159:                                              ; preds = %156, %124, %113
  %160 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %11, align 8
  %161 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %160, i32 0, i32 0
  %162 = load %struct.task_struct*, %struct.task_struct** %161, align 8
  %163 = call i32 @mbox_free_channel(%struct.task_struct* %162)
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %159, %154, %96, %62, %48, %36, %19
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.wkup_m3_ipc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.task_struct* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.wkup_m3_ipc*) #1

declare dso_local %struct.task_struct* @mbox_request_channel(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local %struct.rproc* @rproc_get_by_phandle(i32) #1

declare dso_local %struct.task_struct* @kthread_run(i8*, %struct.wkup_m3_ipc*, i8*) #1

declare dso_local i32 @rproc_put(%struct.rproc*) #1

declare dso_local i32 @mbox_free_channel(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
