; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_init_sliport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_init_sliport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@BEISCSI_HBA_IN_ERR = common dso_local global i32 0, align 4
@BEISCSI_HBA_UER_SUPP = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"BC_%d : SLI Function Reset failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_init_sliport(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  %5 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %6 = call i32 @beiscsi_check_fw_rdy(%struct.beiscsi_hba* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load i32, i32* @BEISCSI_HBA_IN_ERR, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %16 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @BEISCSI_HBA_UER_SUPP, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %22 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %26 = call i32 @beiscsi_cmd_function_reset(%struct.beiscsi_hba* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %12
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %33 = call i32 @beiscsi_log(%struct.beiscsi_hba* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %39

35:                                               ; preds = %12
  %36 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %37 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %36, i32 0, i32 0
  %38 = call i32 @beiscsi_cmd_special_wrb(i32* %37, i32 1)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %29, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @beiscsi_check_fw_rdy(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_cmd_function_reset(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @beiscsi_cmd_special_wrb(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
