; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_ctl.c_mpt3sas_enable_diag_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_ctl.c_mpt3sas_enable_diag_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mpt3_diag_register = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"registering trace buffer support\0A\00", align 1
@MASTER_TRIGGER_FW_FAULT = common dso_local global i64 0, align 8
@MASTER_TRIGGER_ADAPTER_RESET = common dso_local global i64 0, align 8
@MPI2_DIAG_BUF_TYPE_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"registering snapshot buffer support\0A\00", align 1
@MPI2_DIAG_BUF_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"registering extended buffer support\0A\00", align 1
@MPI2_DIAG_BUF_TYPE_EXTENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpt3sas_enable_diag_buffer(%struct.MPT3SAS_ADAPTER* %0, i32 %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpt3_diag_register, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @memset(%struct.mpt3_diag_register* %5, i32 0, i32 12)
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %12 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* @MASTER_TRIGGER_FW_FAULT, align 8
  %14 = load i64, i64* @MASTER_TRIGGER_ADAPTER_RESET, align 8
  %15 = add nsw i64 %13, %14
  %16 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %17 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = load i32, i32* @MPI2_DIAG_BUF_TYPE_TRACE, align 4
  %20 = getelementptr inbounds %struct.mpt3_diag_register, %struct.mpt3_diag_register* %5, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.mpt3_diag_register, %struct.mpt3_diag_register* %5, i32 0, i32 0
  store i32 2097152, i32* %21, align 4
  %22 = getelementptr inbounds %struct.mpt3_diag_register, %struct.mpt3_diag_register* %5, i32 0, i32 1
  store i32 117922048, i32* %22, align 4
  %23 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %24 = call i32 @_ctl_diag_register_2(%struct.MPT3SAS_ADAPTER* %23, %struct.mpt3_diag_register* %5)
  br label %25

25:                                               ; preds = %10, %2
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 2
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %31 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @MPI2_DIAG_BUF_TYPE_SNAPSHOT, align 4
  %33 = getelementptr inbounds %struct.mpt3_diag_register, %struct.mpt3_diag_register* %5, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.mpt3_diag_register, %struct.mpt3_diag_register* %5, i32 0, i32 0
  store i32 2097152, i32* %34, align 4
  %35 = getelementptr inbounds %struct.mpt3_diag_register, %struct.mpt3_diag_register* %5, i32 0, i32 1
  store i32 117922049, i32* %35, align 4
  %36 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %37 = call i32 @_ctl_diag_register_2(%struct.MPT3SAS_ADAPTER* %36, %struct.mpt3_diag_register* %5)
  br label %38

38:                                               ; preds = %29, %25
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %44 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @MPI2_DIAG_BUF_TYPE_EXTENDED, align 4
  %46 = getelementptr inbounds %struct.mpt3_diag_register, %struct.mpt3_diag_register* %5, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.mpt3_diag_register, %struct.mpt3_diag_register* %5, i32 0, i32 0
  store i32 2097152, i32* %47, align 4
  %48 = getelementptr inbounds %struct.mpt3_diag_register, %struct.mpt3_diag_register* %5, i32 0, i32 1
  store i32 117922049, i32* %48, align 4
  %49 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %50 = call i32 @_ctl_diag_register_2(%struct.MPT3SAS_ADAPTER* %49, %struct.mpt3_diag_register* %5)
  br label %51

51:                                               ; preds = %42, %38
  ret void
}

declare dso_local i32 @memset(%struct.mpt3_diag_register*, i32, i32) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*) #1

declare dso_local i32 @_ctl_diag_register_2(%struct.MPT3SAS_ADAPTER*, %struct.mpt3_diag_register*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
