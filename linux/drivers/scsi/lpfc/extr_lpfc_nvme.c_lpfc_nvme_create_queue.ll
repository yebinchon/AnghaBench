; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_create_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_create_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.nvme_fc_local_port = type { i64 }
%struct.lpfc_nvme_lport = type { %struct.lpfc_vport* }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_nvme_qhandle = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IO \00", align 1
@lpfc_nvme_template = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ADM\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NVME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"6073 Binding %s HdwQueue %d  (cpu %d) to hdw_queue %d qhandle x%px\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_local_port*, i32, i32, i8**)* @lpfc_nvme_create_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_nvme_create_queue(%struct.nvme_fc_local_port* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_fc_local_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.lpfc_nvme_lport*, align 8
  %11 = alloca %struct.lpfc_vport*, align 8
  %12 = alloca %struct.lpfc_nvme_qhandle*, align 8
  %13 = alloca i8*, align 8
  store %struct.nvme_fc_local_port* %0, %struct.nvme_fc_local_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %14 = load %struct.nvme_fc_local_port*, %struct.nvme_fc_local_port** %6, align 8
  %15 = getelementptr inbounds %struct.nvme_fc_local_port, %struct.nvme_fc_local_port* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %73

21:                                               ; preds = %4
  %22 = load %struct.nvme_fc_local_port*, %struct.nvme_fc_local_port** %6, align 8
  %23 = getelementptr inbounds %struct.nvme_fc_local_port, %struct.nvme_fc_local_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.lpfc_nvme_lport*
  store %struct.lpfc_nvme_lport* %25, %struct.lpfc_nvme_lport** %10, align 8
  %26 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %10, align 8
  %27 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %26, i32 0, i32 0
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %27, align 8
  store %struct.lpfc_vport* %28, %struct.lpfc_vport** %11, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.lpfc_nvme_qhandle* @kzalloc(i32 12, i32 %29)
  store %struct.lpfc_nvme_qhandle* %30, %struct.lpfc_nvme_qhandle** %12, align 8
  %31 = load %struct.lpfc_nvme_qhandle*, %struct.lpfc_nvme_qhandle** %12, align 8
  %32 = icmp eq %struct.lpfc_nvme_qhandle* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %73

36:                                               ; preds = %21
  %37 = call i32 (...) @raw_smp_processor_id()
  %38 = load %struct.lpfc_nvme_qhandle*, %struct.lpfc_nvme_qhandle** %12, align 8
  %39 = getelementptr inbounds %struct.lpfc_nvme_qhandle, %struct.lpfc_nvme_qhandle* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.lpfc_nvme_qhandle*, %struct.lpfc_nvme_qhandle** %12, align 8
  %42 = getelementptr inbounds %struct.lpfc_nvme_qhandle, %struct.lpfc_nvme_qhandle* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sub i32 %46, 1
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpfc_nvme_template, i32 0, i32 0), align 4
  %49 = urem i32 %47, %48
  %50 = load %struct.lpfc_nvme_qhandle*, %struct.lpfc_nvme_qhandle** %12, align 8
  %51 = getelementptr inbounds %struct.lpfc_nvme_qhandle, %struct.lpfc_nvme_qhandle* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %56

52:                                               ; preds = %36
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.lpfc_nvme_qhandle*, %struct.lpfc_nvme_qhandle** %12, align 8
  %55 = getelementptr inbounds %struct.lpfc_nvme_qhandle, %struct.lpfc_nvme_qhandle* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %58 = load i32, i32* @KERN_INFO, align 4
  %59 = load i32, i32* @LOG_NVME, align 4
  %60 = load i8*, i8** %13, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.lpfc_nvme_qhandle*, %struct.lpfc_nvme_qhandle** %12, align 8
  %63 = getelementptr inbounds %struct.lpfc_nvme_qhandle, %struct.lpfc_nvme_qhandle* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.lpfc_nvme_qhandle*, %struct.lpfc_nvme_qhandle** %12, align 8
  %66 = getelementptr inbounds %struct.lpfc_nvme_qhandle, %struct.lpfc_nvme_qhandle* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.lpfc_nvme_qhandle*, %struct.lpfc_nvme_qhandle** %12, align 8
  %69 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %57, i32 %58, i32 %59, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i8* %60, i32 %61, i32 %64, i32 %67, %struct.lpfc_nvme_qhandle* %68)
  %70 = load %struct.lpfc_nvme_qhandle*, %struct.lpfc_nvme_qhandle** %12, align 8
  %71 = bitcast %struct.lpfc_nvme_qhandle* %70 to i8*
  %72 = load i8**, i8*** %9, align 8
  store i8* %71, i8** %72, align 8
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %56, %33, %18
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.lpfc_nvme_qhandle* @kzalloc(i32, i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i8*, i32, i32, i32, %struct.lpfc_nvme_qhandle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
