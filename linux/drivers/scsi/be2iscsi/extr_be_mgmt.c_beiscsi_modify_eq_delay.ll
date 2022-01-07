; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_modify_eq_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_modify_eq_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_set_eqd = type { i32, i32 }
%struct.be_cmd_req_modify_eq_delay = type { %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i8*, i64, i8* }
%struct.be_dma_mem = type { %struct.be_cmd_req_modify_eq_delay* }

@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_MODIFY_EQ_DELAY = common dso_local global i32 0, align 4
@__beiscsi_eq_delay_compl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_modify_eq_delay(%struct.beiscsi_hba* %0, %struct.be_set_eqd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca %struct.be_set_eqd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_cmd_req_modify_eq_delay*, align 8
  %9 = alloca %struct.be_dma_mem, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %5, align 8
  store %struct.be_set_eqd* %1, %struct.be_set_eqd** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %13 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %14 = load i32, i32* @OPCODE_COMMON_MODIFY_EQ_DELAY, align 4
  %15 = call i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba* %12, %struct.be_dma_mem* %9, i32 %13, i32 %14, i32 16)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %4, align 4
  br label %74

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %22 = load %struct.be_cmd_req_modify_eq_delay*, %struct.be_cmd_req_modify_eq_delay** %21, align 8
  store %struct.be_cmd_req_modify_eq_delay* %22, %struct.be_cmd_req_modify_eq_delay** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = load %struct.be_cmd_req_modify_eq_delay*, %struct.be_cmd_req_modify_eq_delay** %8, align 8
  %26 = getelementptr inbounds %struct.be_cmd_req_modify_eq_delay, %struct.be_cmd_req_modify_eq_delay* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %67, %20
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %70

31:                                               ; preds = %27
  %32 = load %struct.be_set_eqd*, %struct.be_set_eqd** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.be_set_eqd, %struct.be_set_eqd* %32, i64 %34
  %36 = getelementptr inbounds %struct.be_set_eqd, %struct.be_set_eqd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_le32(i32 %37)
  %39 = load %struct.be_cmd_req_modify_eq_delay*, %struct.be_cmd_req_modify_eq_delay** %8, align 8
  %40 = getelementptr inbounds %struct.be_cmd_req_modify_eq_delay, %struct.be_cmd_req_modify_eq_delay* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i8* %38, i8** %45, align 8
  %46 = load %struct.be_cmd_req_modify_eq_delay*, %struct.be_cmd_req_modify_eq_delay** %8, align 8
  %47 = getelementptr inbounds %struct.be_cmd_req_modify_eq_delay, %struct.be_cmd_req_modify_eq_delay* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.be_set_eqd*, %struct.be_set_eqd** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.be_set_eqd, %struct.be_set_eqd* %53, i64 %55
  %57 = getelementptr inbounds %struct.be_set_eqd, %struct.be_set_eqd* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = load %struct.be_cmd_req_modify_eq_delay*, %struct.be_cmd_req_modify_eq_delay** %8, align 8
  %61 = getelementptr inbounds %struct.be_cmd_req_modify_eq_delay, %struct.be_cmd_req_modify_eq_delay* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i8* %59, i8** %66, align 8
  br label %67

67:                                               ; preds = %31
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %27

70:                                               ; preds = %27
  %71 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %72 = load i32, i32* @__beiscsi_eq_delay_compl, align 4
  %73 = call i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba* %71, %struct.be_dma_mem* %9, i32 %72, i32* null, i32 0)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %18
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
