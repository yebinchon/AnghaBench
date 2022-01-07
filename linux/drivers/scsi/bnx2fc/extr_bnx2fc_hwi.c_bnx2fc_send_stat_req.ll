; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_send_stat_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_send_stat_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_hba = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)* }
%struct.kwqe = type { i32 }
%struct.fcoe_kwqe_stat = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@FCOE_KWQE_OPCODE_STAT = common dso_local global i32 0, align 4
@FCOE_KWQE_LAYER_CODE = common dso_local global i32 0, align 4
@FCOE_KWQE_HEADER_LAYER_CODE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2fc_send_stat_req(%struct.bnx2fc_hba* %0) #0 {
  %2 = alloca %struct.bnx2fc_hba*, align 8
  %3 = alloca %struct.fcoe_kwqe_stat, align 8
  %4 = alloca [2 x %struct.kwqe*], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2fc_hba* %0, %struct.bnx2fc_hba** %2, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = call i32 @memset(%struct.fcoe_kwqe_stat* %3, i32 0, i32 24)
  %8 = load i32, i32* @FCOE_KWQE_OPCODE_STAT, align 4
  %9 = getelementptr inbounds %struct.fcoe_kwqe_stat, %struct.fcoe_kwqe_stat* %3, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @FCOE_KWQE_LAYER_CODE, align 4
  %12 = load i32, i32* @FCOE_KWQE_HEADER_LAYER_CODE_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = getelementptr inbounds %struct.fcoe_kwqe_stat, %struct.fcoe_kwqe_stat* %3, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %17 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = getelementptr inbounds %struct.fcoe_kwqe_stat, %struct.fcoe_kwqe_stat* %3, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %22 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = ashr i32 %24, 32
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = getelementptr inbounds %struct.fcoe_kwqe_stat, %struct.fcoe_kwqe_stat* %3, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = bitcast %struct.fcoe_kwqe_stat* %3 to %struct.kwqe*
  %30 = getelementptr inbounds [2 x %struct.kwqe*], [2 x %struct.kwqe*]* %4, i64 0, i64 0
  store %struct.kwqe* %29, %struct.kwqe** %30, align 16
  %31 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %32 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %1
  %36 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %37 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)*, i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)** %39, align 8
  %41 = icmp ne i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %35
  %43 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %44 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)*, i32 (%struct.TYPE_4__*, %struct.kwqe**, i32)** %46, align 8
  %48 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %49 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds [2 x %struct.kwqe*], [2 x %struct.kwqe*]* %4, i64 0, i64 0
  %52 = load i32, i32* %5, align 4
  %53 = call i32 %47(%struct.TYPE_4__* %50, %struct.kwqe** %51, i32 %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %42, %35, %1
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @memset(%struct.fcoe_kwqe_stat*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
