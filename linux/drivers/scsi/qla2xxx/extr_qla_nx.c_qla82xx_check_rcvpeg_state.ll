; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_check_rcvpeg_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_check_rcvpeg_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32, i32 }

@CRB_RCVPEG_STATE = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"CRB_RCVPEG_STATE: 0x%x and retries: 0x%x.\0A\00", align 1
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Rcv Peg initialization failed: 0x%x.\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*)* @qla82xx_check_rcvpeg_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_check_rcvpeg_state(%struct.qla_hw_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 60, i32* %5, align 4
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %8 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32* @pci_get_drvdata(i32 %9)
  store i32* %10, i32** %6, align 8
  br label %11

11:                                               ; preds = %33, %1
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %13 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %12, i32 0, i32 0
  %14 = call i32 @read_lock(i32* %13)
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %16 = load i32, i32* @CRB_RCVPEG_STATE, align 4
  %17 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 0
  %20 = call i32 @read_unlock(i32* %19)
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %25 [
    i32 129, label %22
    i32 130, label %22
    i32 128, label %24
  ]

22:                                               ; preds = %11, %11
  %23 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %23, i32* %2, align 4
  br label %52

24:                                               ; preds = %11
  br label %26

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* @ql_log_info, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i32, i32*, i32, i8*, i32, ...) @ql_log(i32 %27, i32* %28, i32 171, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = call i32 @msleep(i32 500)
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %11, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @ql_log_fatal, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i32, i32*, i32, i8*, i32, ...) @ql_log(i32 %38, i32* %39, i32 172, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 0
  %44 = call i32 @read_lock(i32* %43)
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %46 = load i32, i32* @CRB_RCVPEG_STATE, align 4
  %47 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %45, i32 %46, i32 128)
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 0
  %50 = call i32 @read_unlock(i32* %49)
  %51 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %37, %22
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @qla82xx_rd_32(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @ql_log(i32, i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
