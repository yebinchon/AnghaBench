; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_ioreq = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.csio_hw* }
%struct.csio_hw = type { i32 }
%struct.csio_wr_pair = type { i64, i8*, i8* }
%struct.csio_scsim = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_ioreq*)* @csio_scsi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_scsi_cmd(%struct.csio_ioreq* %0) #0 {
  %2 = alloca %struct.csio_ioreq*, align 8
  %3 = alloca %struct.csio_wr_pair, align 8
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca %struct.csio_scsim*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.csio_ioreq* %0, %struct.csio_ioreq** %2, align 8
  %8 = load %struct.csio_ioreq*, %struct.csio_ioreq** %2, align 8
  %9 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.csio_hw*, %struct.csio_hw** %11, align 8
  store %struct.csio_hw* %12, %struct.csio_hw** %4, align 8
  %13 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %14 = call %struct.csio_scsim* @csio_hw_to_scsim(%struct.csio_hw* %13)
  store %struct.csio_scsim* %14, %struct.csio_scsim** %5, align 8
  %15 = load %struct.csio_scsim*, %struct.csio_scsim** %5, align 8
  %16 = getelementptr inbounds %struct.csio_scsim, %struct.csio_scsim* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @CSIO_SCSI_CMD_WR_SZ_16(i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %20 = load %struct.csio_ioreq*, %struct.csio_ioreq** %2, align 8
  %21 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @csio_wr_get(%struct.csio_hw* %19, i32 %22, i64 %23, %struct.csio_wr_pair* %3)
  %25 = load %struct.csio_ioreq*, %struct.csio_ioreq** %2, align 8
  %26 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.csio_ioreq*, %struct.csio_ioreq** %2, align 8
  %28 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %74

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %3, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.csio_ioreq*, %struct.csio_ioreq** %2, align 8
  %42 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %3, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @csio_scsi_init_cmd_wr(%struct.csio_ioreq* %41, i8* %43, i64 %44)
  br label %74

46:                                               ; preds = %35
  %47 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %48 = load %struct.csio_ioreq*, %struct.csio_ioreq** %2, align 8
  %49 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32* @csio_q_eq_wrap(%struct.csio_hw* %47, i32 %50)
  store i32* %51, i32** %7, align 8
  %52 = load %struct.csio_ioreq*, %struct.csio_ioreq** %2, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @csio_scsi_init_cmd_wr(%struct.csio_ioreq* %52, i8* %54, i64 %55)
  %57 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %3, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %3, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @memcpy(i8* %58, i32* %59, i64 %61)
  %63 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %3, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %3, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %3, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %69, %71
  %73 = call i32 @memcpy(i8* %64, i32* %68, i64 %72)
  br label %74

74:                                               ; preds = %34, %46, %40
  ret void
}

declare dso_local %struct.csio_scsim* @csio_hw_to_scsim(%struct.csio_hw*) #1

declare dso_local i64 @CSIO_SCSI_CMD_WR_SZ_16(i32) #1

declare dso_local i32 @csio_wr_get(%struct.csio_hw*, i32, i64, %struct.csio_wr_pair*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @csio_scsi_init_cmd_wr(%struct.csio_ioreq*, i8*, i64) #1

declare dso_local i32* @csio_q_eq_wrap(%struct.csio_hw*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
