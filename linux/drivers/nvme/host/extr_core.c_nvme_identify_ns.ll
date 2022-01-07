; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_identify_ns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_identify_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i32 }
%struct.nvme_id_ns = type { i32 }
%struct.nvme_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@nvme_admin_identify = common dso_local global i32 0, align 4
@NVME_ID_CNS_NS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Identify namespace failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*, i32, %struct.nvme_id_ns**)* @nvme_identify_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_identify_ns(%struct.nvme_ctrl* %0, i32 %1, %struct.nvme_id_ns** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_id_ns**, align 8
  %8 = alloca %struct.nvme_command, align 4
  %9 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvme_id_ns** %2, %struct.nvme_id_ns*** %7, align 8
  %10 = bitcast %struct.nvme_command* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 12, i1 false)
  %11 = load i32, i32* @nvme_admin_identify, align 4
  %12 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @cpu_to_le32(i32 %14)
  %16 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @NVME_ID_CNS_NS, align 4
  %19 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.nvme_id_ns* @kmalloc(i32 4, i32 %21)
  %23 = load %struct.nvme_id_ns**, %struct.nvme_id_ns*** %7, align 8
  store %struct.nvme_id_ns* %22, %struct.nvme_id_ns** %23, align 8
  %24 = load %struct.nvme_id_ns**, %struct.nvme_id_ns*** %7, align 8
  %25 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %24, align 8
  %26 = icmp ne %struct.nvme_id_ns* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %50

30:                                               ; preds = %3
  %31 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %32 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nvme_id_ns**, %struct.nvme_id_ns*** %7, align 8
  %35 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %34, align 8
  %36 = call i32 @nvme_submit_sync_cmd(i32 %33, %struct.nvme_command* %8, %struct.nvme_id_ns* %35, i32 4)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %41 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.nvme_id_ns**, %struct.nvme_id_ns*** %7, align 8
  %46 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %45, align 8
  %47 = call i32 @kfree(%struct.nvme_id_ns* %46)
  br label %48

48:                                               ; preds = %39, %30
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %27
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local %struct.nvme_id_ns* @kmalloc(i32, i32) #2

declare dso_local i32 @nvme_submit_sync_cmd(i32, %struct.nvme_command*, %struct.nvme_id_ns*, i32) #2

declare dso_local i32 @dev_warn(i32, i8*, i32) #2

declare dso_local i32 @kfree(%struct.nvme_id_ns*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
