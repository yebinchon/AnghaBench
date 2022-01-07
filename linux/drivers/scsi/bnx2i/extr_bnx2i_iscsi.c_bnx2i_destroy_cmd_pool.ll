; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_destroy_cmd_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_destroy_cmd_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iscsi_session = type { i32, %struct.iscsi_task** }
%struct.iscsi_task = type { %struct.bnx2i_cmd* }
%struct.bnx2i_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@ISCSI_MAX_BDS_PER_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2i_hba*, %struct.iscsi_session*)* @bnx2i_destroy_cmd_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2i_destroy_cmd_pool(%struct.bnx2i_hba* %0, %struct.iscsi_session* %1) #0 {
  %3 = alloca %struct.bnx2i_hba*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_task*, align 8
  %7 = alloca %struct.bnx2i_cmd*, align 8
  store %struct.bnx2i_hba* %0, %struct.bnx2i_hba** %3, align 8
  store %struct.iscsi_session* %1, %struct.iscsi_session** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %49, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %8
  %15 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %16 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %15, i32 0, i32 1
  %17 = load %struct.iscsi_task**, %struct.iscsi_task*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.iscsi_task*, %struct.iscsi_task** %17, i64 %19
  %21 = load %struct.iscsi_task*, %struct.iscsi_task** %20, align 8
  store %struct.iscsi_task* %21, %struct.iscsi_task** %6, align 8
  %22 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %23 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %22, i32 0, i32 0
  %24 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %23, align 8
  store %struct.bnx2i_cmd* %24, %struct.bnx2i_cmd** %7, align 8
  %25 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %7, align 8
  %26 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %14
  %31 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* @ISCSI_MAX_BDS_PER_CMD, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %7, align 8
  %44 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dma_free_coherent(i32* %34, i32 %38, i64 %42, i32 %46)
  br label %48

48:                                               ; preds = %30, %14
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %8

52:                                               ; preds = %8
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
