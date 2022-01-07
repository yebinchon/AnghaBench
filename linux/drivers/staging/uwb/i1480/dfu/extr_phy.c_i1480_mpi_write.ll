; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_phy.c_i1480_mpi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_phy.c_i1480_mpi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480 = type { i32, %struct.i1480_evt_confirm*, %struct.i1480_cmd_mpi_write* }
%struct.i1480_evt_confirm = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i8* }
%struct.i1480_cmd_mpi_write = type { i32, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@i1480_CET_VS1 = common dso_local global i8* null, align 8
@i1480_CMD_MPI_WRITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"MPI-WRITE\00", align 1
@UWB_RC_RES_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"MPI-WRITE: command execution failed: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i1480*, i8*, i64)* @i1480_mpi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i1480_mpi_write(%struct.i1480* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.i1480*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i1480_cmd_mpi_write*, align 8
  %9 = alloca %struct.i1480_evt_confirm*, align 8
  store %struct.i1480* %0, %struct.i1480** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.i1480*, %struct.i1480** %4, align 8
  %11 = getelementptr inbounds %struct.i1480, %struct.i1480* %10, i32 0, i32 2
  %12 = load %struct.i1480_cmd_mpi_write*, %struct.i1480_cmd_mpi_write** %11, align 8
  store %struct.i1480_cmd_mpi_write* %12, %struct.i1480_cmd_mpi_write** %8, align 8
  %13 = load %struct.i1480*, %struct.i1480** %4, align 8
  %14 = getelementptr inbounds %struct.i1480, %struct.i1480* %13, i32 0, i32 1
  %15 = load %struct.i1480_evt_confirm*, %struct.i1480_evt_confirm** %14, align 8
  store %struct.i1480_evt_confirm* %15, %struct.i1480_evt_confirm** %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ugt i64 %16, 480
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  %22 = load i8*, i8** @i1480_CET_VS1, align 8
  %23 = load %struct.i1480_cmd_mpi_write*, %struct.i1480_cmd_mpi_write** %8, align 8
  %24 = getelementptr inbounds %struct.i1480_cmd_mpi_write, %struct.i1480_cmd_mpi_write* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load i64, i64* @i1480_CMD_MPI_WRITE, align 8
  %27 = call i8* @cpu_to_le16(i64 %26)
  %28 = load %struct.i1480_cmd_mpi_write*, %struct.i1480_cmd_mpi_write** %8, align 8
  %29 = getelementptr inbounds %struct.i1480_cmd_mpi_write, %struct.i1480_cmd_mpi_write* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i8* @cpu_to_le16(i64 %31)
  %33 = load %struct.i1480_cmd_mpi_write*, %struct.i1480_cmd_mpi_write** %8, align 8
  %34 = getelementptr inbounds %struct.i1480_cmd_mpi_write, %struct.i1480_cmd_mpi_write* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.i1480_cmd_mpi_write*, %struct.i1480_cmd_mpi_write** %8, align 8
  %36 = getelementptr inbounds %struct.i1480_cmd_mpi_write, %struct.i1480_cmd_mpi_write* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @memcpy(i32 %37, i8* %38, i64 %39)
  %41 = load i8*, i8** @i1480_CET_VS1, align 8
  %42 = load %struct.i1480_evt_confirm*, %struct.i1480_evt_confirm** %9, align 8
  %43 = getelementptr inbounds %struct.i1480_evt_confirm, %struct.i1480_evt_confirm* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  %45 = load i64, i64* @i1480_CMD_MPI_WRITE, align 8
  %46 = load %struct.i1480_evt_confirm*, %struct.i1480_evt_confirm** %9, align 8
  %47 = getelementptr inbounds %struct.i1480_evt_confirm, %struct.i1480_evt_confirm* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load %struct.i1480*, %struct.i1480** %4, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add i64 32, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @i1480_cmd(%struct.i1480* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %52, i32 24)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %3
  br label %74

57:                                               ; preds = %3
  %58 = load %struct.i1480_evt_confirm*, %struct.i1480_evt_confirm** %9, align 8
  %59 = getelementptr inbounds %struct.i1480_evt_confirm, %struct.i1480_evt_confirm* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @UWB_RC_RES_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load %struct.i1480*, %struct.i1480** %4, align 8
  %65 = getelementptr inbounds %struct.i1480, %struct.i1480* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.i1480_evt_confirm*, %struct.i1480_evt_confirm** %9, align 8
  %68 = getelementptr inbounds %struct.i1480_evt_confirm, %struct.i1480_evt_confirm* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %63, %57
  br label %74

74:                                               ; preds = %73, %56
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @i1480_cmd(%struct.i1480*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
