; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_identify_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_identify_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }
%struct.nvme_id_ctrl = type { i32 }
%struct.nvme_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@nvme_admin_identify = common dso_local global i32 0, align 4
@NVME_ID_CNS_CTRL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*, %struct.nvme_id_ctrl**)* @nvme_identify_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_identify_ctrl(%struct.nvme_ctrl* %0, %struct.nvme_id_ctrl** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca %struct.nvme_id_ctrl**, align 8
  %6 = alloca %struct.nvme_command, align 4
  %7 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store %struct.nvme_id_ctrl** %1, %struct.nvme_id_ctrl*** %5, align 8
  %8 = bitcast %struct.nvme_command* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load i32, i32* @nvme_admin_identify, align 4
  %10 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %6, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @NVME_ID_CNS_CTRL, align 4
  %13 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %6, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.nvme_id_ctrl* @kmalloc(i32 4, i32 %15)
  %17 = load %struct.nvme_id_ctrl**, %struct.nvme_id_ctrl*** %5, align 8
  store %struct.nvme_id_ctrl* %16, %struct.nvme_id_ctrl** %17, align 8
  %18 = load %struct.nvme_id_ctrl**, %struct.nvme_id_ctrl*** %5, align 8
  %19 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %18, align 8
  %20 = icmp ne %struct.nvme_id_ctrl* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %39

24:                                               ; preds = %2
  %25 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %26 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nvme_id_ctrl**, %struct.nvme_id_ctrl*** %5, align 8
  %29 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %28, align 8
  %30 = call i32 @nvme_submit_sync_cmd(i32 %27, %struct.nvme_command* %6, %struct.nvme_id_ctrl* %29, i32 4)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.nvme_id_ctrl**, %struct.nvme_id_ctrl*** %5, align 8
  %35 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %34, align 8
  %36 = call i32 @kfree(%struct.nvme_id_ctrl* %35)
  br label %37

37:                                               ; preds = %33, %24
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %21
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.nvme_id_ctrl* @kmalloc(i32, i32) #2

declare dso_local i32 @nvme_submit_sync_cmd(i32, %struct.nvme_command*, %struct.nvme_id_ctrl*, i32) #2

declare dso_local i32 @kfree(%struct.nvme_id_ctrl*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
