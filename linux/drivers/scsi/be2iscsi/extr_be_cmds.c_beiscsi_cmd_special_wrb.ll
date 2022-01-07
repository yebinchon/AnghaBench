; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_cmd_special_wrb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_cmd_special_wrb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_ctrl_info = type { i32, i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.beiscsi_hba = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"BC_%d : special WRB message failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_cmd_special_wrb(%struct.be_ctrl_info* %0, i64 %1) #0 {
  %3 = alloca %struct.be_ctrl_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.be_mcc_wrb*, align 8
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.be_ctrl_info* %0, %struct.be_ctrl_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %10 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %9, i32 0, i32 2
  %11 = call %struct.be_mcc_wrb* @wrb_from_mbox(i32* %10)
  store %struct.be_mcc_wrb* %11, %struct.be_mcc_wrb** %5, align 8
  %12 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %13 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.beiscsi_hba* @pci_get_drvdata(i32 %14)
  store %struct.beiscsi_hba* %15, %struct.beiscsi_hba** %6, align 8
  %16 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %17 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %20 = call i32 @memset(%struct.be_mcc_wrb* %19, i32 0, i32 4)
  %21 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %22 = bitcast %struct.be_mcc_wrb* %21 to i32*
  store i32* %22, i32** %7, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %2
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %7, align 8
  store i32 255, i32* %26, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %7, align 8
  store i32 18, i32* %28, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %7, align 8
  store i32 52, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %7, align 8
  store i32 255, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %7, align 8
  store i32 255, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %7, align 8
  store i32 86, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %7, align 8
  store i32 120, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %7, align 8
  store i32 255, i32* %40, align 4
  br label %58

42:                                               ; preds = %2
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %7, align 8
  store i32 255, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %7, align 8
  store i32 170, i32* %45, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %7, align 8
  store i32 187, i32* %47, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %7, align 8
  store i32 255, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %7, align 8
  store i32 255, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %7, align 8
  store i32 204, i32* %53, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %7, align 8
  store i32 221, i32* %55, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 255, i32* %57, align 4
  br label %58

58:                                               ; preds = %42, %25
  %59 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %60 = call i32 @be_dws_cpu_to_le(%struct.be_mcc_wrb* %59, i32 4)
  %61 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %62 = call i32 @be_mbox_notify(%struct.be_ctrl_info* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %67 = load i32, i32* @KERN_INFO, align 4
  %68 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %69 = call i32 @beiscsi_log(%struct.beiscsi_hba* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %58
  %71 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %72 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(i32*) #1

declare dso_local %struct.beiscsi_hba* @pci_get_drvdata(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

declare dso_local i32 @be_dws_cpu_to_le(%struct.be_mcc_wrb*, i32) #1

declare dso_local i32 @be_mbox_notify(%struct.be_ctrl_info*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
