; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_ustorm_task_contexts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_ustorm_task_contexts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustorm_iscsi_task_st_ctx = type { %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.e4_ustorm_iscsi_task_ag_ctx = type { i32, i8* }

@ISCSI_REG1_NUM_SGES = common dso_local global i32 0, align 4
@E4_USTORM_ISCSI_TASK_AG_CTX_DIF_ERROR_CF_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ustorm_iscsi_task_st_ctx*, %struct.e4_ustorm_iscsi_task_ag_ctx*, i8*, i8*, i32, i32)* @init_ustorm_task_contexts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ustorm_task_contexts(%struct.ustorm_iscsi_task_st_ctx* %0, %struct.e4_ustorm_iscsi_task_ag_ctx* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ustorm_iscsi_task_st_ctx*, align 8
  %8 = alloca %struct.e4_ustorm_iscsi_task_ag_ctx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.ustorm_iscsi_task_st_ctx* %0, %struct.ustorm_iscsi_task_st_ctx** %7, align 8
  store %struct.e4_ustorm_iscsi_task_ag_ctx* %1, %struct.e4_ustorm_iscsi_task_ag_ctx** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = call i8* @cpu_to_le32(i8* %14)
  %16 = load %struct.ustorm_iscsi_task_st_ctx*, %struct.ustorm_iscsi_task_st_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.ustorm_iscsi_task_st_ctx, %struct.ustorm_iscsi_task_st_ctx* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call i8* @cpu_to_le32(i8* %18)
  %20 = load %struct.e4_ustorm_iscsi_task_ag_ctx*, %struct.e4_ustorm_iscsi_task_ag_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.e4_ustorm_iscsi_task_ag_ctx, %struct.e4_ustorm_iscsi_task_ag_ctx* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call i8* @cpu_to_le32(i8* %22)
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = load %struct.ustorm_iscsi_task_st_ctx*, %struct.ustorm_iscsi_task_st_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.ustorm_iscsi_task_st_ctx, %struct.ustorm_iscsi_task_st_ctx* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.ustorm_iscsi_task_st_ctx*, %struct.ustorm_iscsi_task_st_ctx** %7, align 8
  %28 = getelementptr inbounds %struct.ustorm_iscsi_task_st_ctx, %struct.ustorm_iscsi_task_st_ctx* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ISCSI_REG1_NUM_SGES, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @SET_FIELD(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.e4_ustorm_iscsi_task_ag_ctx*, %struct.e4_ustorm_iscsi_task_ag_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.e4_ustorm_iscsi_task_ag_ctx, %struct.e4_ustorm_iscsi_task_ag_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @E4_USTORM_ISCSI_TASK_AG_CTX_DIF_ERROR_CF_EN, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  %42 = call i32 @SET_FIELD(i32 %36, i32 %37, i32 %41)
  ret void
}

declare dso_local i8* @cpu_to_le32(i8*) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
