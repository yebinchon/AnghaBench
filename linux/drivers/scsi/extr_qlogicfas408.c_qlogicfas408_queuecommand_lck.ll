; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicfas408.c_qlogicfas408_queuecommand_lck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicfas408.c_qlogicfas408_queuecommand_lck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, void (%struct.scsi_cmnd*)* }
%struct.qlogicfas408_priv = type { i64, i32* }

@DID_BAD_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @qlogicfas408_queuecommand_lck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlogicfas408_queuecommand_lck(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.qlogicfas408_priv*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %8 = call %struct.qlogicfas408_priv* @get_priv_by_cmd(%struct.scsi_cmnd* %7)
  store %struct.qlogicfas408_priv* %8, %struct.qlogicfas408_priv** %6, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %10 = call i64 @scmd_id(%struct.scsi_cmnd* %9)
  %11 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %6, align 8
  %12 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @DID_BAD_TARGET, align 4
  %17 = shl i32 %16, 16
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %20(%struct.scsi_cmnd* %21)
  store i32 0, i32* %3, align 4
  br label %37

22:                                               ; preds = %2
  %23 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 1
  store void (%struct.scsi_cmnd*)* %23, void (%struct.scsi_cmnd*)** %25, align 8
  br label %26

26:                                               ; preds = %31, %22
  %27 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %6, align 8
  %28 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = call i32 (...) @barrier()
  %33 = call i32 (...) @cpu_relax()
  br label %26

34:                                               ; preds = %26
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %36 = call i32 @ql_icmd(%struct.scsi_cmnd* %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.qlogicfas408_priv* @get_priv_by_cmd(%struct.scsi_cmnd*) #1

declare dso_local i64 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @ql_icmd(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
