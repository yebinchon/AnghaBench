; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_ioreq = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.csio_hw* }
%struct.csio_hw = type { i32 }
%struct.csio_wr_pair = type { i64, i8*, i8* }
%struct.csio_scsim = type { i32 }

@read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_ioreq*)* @csio_scsi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_scsi_read(%struct.csio_ioreq* %0) #0 {
  %2 = alloca %struct.csio_ioreq*, align 8
  %3 = alloca %struct.csio_wr_pair, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca %struct.csio_scsim*, align 8
  %7 = alloca i32*, align 8
  store %struct.csio_ioreq* %0, %struct.csio_ioreq** %2, align 8
  %8 = load %struct.csio_ioreq*, %struct.csio_ioreq** %2, align 8
  %9 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.csio_hw*, %struct.csio_hw** %11, align 8
  store %struct.csio_hw* %12, %struct.csio_hw** %5, align 8
  %13 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %14 = call %struct.csio_scsim* @csio_hw_to_scsim(%struct.csio_hw* %13)
  store %struct.csio_scsim* %14, %struct.csio_scsim** %6, align 8
  %15 = load %struct.csio_ioreq*, %struct.csio_ioreq** %2, align 8
  %16 = load i32, i32* @read, align 4
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.csio_scsim*, %struct.csio_scsim** %6, align 8
  %19 = getelementptr inbounds %struct.csio_scsim, %struct.csio_scsim* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CSIO_SCSI_DATA_WRSZ(%struct.csio_ioreq* %15, i32 %16, i64 %17, i32 %20)
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @ALIGN(i64 %22, i32 16)
  store i64 %23, i64* %4, align 8
  %24 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %25 = load %struct.csio_ioreq*, %struct.csio_ioreq** %2, align 8
  %26 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @csio_wr_get(%struct.csio_hw* %24, i32 %27, i64 %28, %struct.csio_wr_pair* %3)
  %30 = load %struct.csio_ioreq*, %struct.csio_ioreq** %2, align 8
  %31 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.csio_ioreq*, %struct.csio_ioreq** %2, align 8
  %33 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i64 @likely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %82

39:                                               ; preds = %1
  %40 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %3, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp sge i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load %struct.csio_ioreq*, %struct.csio_ioreq** %2, align 8
  %49 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %3, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @csio_scsi_init_read_wr(%struct.csio_ioreq* %48, i8* %50, i64 %51)
  br label %81

53:                                               ; preds = %39
  %54 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %55 = load %struct.csio_ioreq*, %struct.csio_ioreq** %2, align 8
  %56 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32* @csio_q_eq_wrap(%struct.csio_hw* %54, i32 %57)
  store i32* %58, i32** %7, align 8
  %59 = load %struct.csio_ioreq*, %struct.csio_ioreq** %2, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = bitcast i32* %60 to i8*
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @csio_scsi_init_read_wr(%struct.csio_ioreq* %59, i8* %61, i64 %62)
  %64 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %3, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %3, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @memcpy(i8* %65, i32* %66, i64 %68)
  %70 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %3, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %3, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i64, i64* %4, align 8
  %77 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %3, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %76, %78
  %80 = call i32 @memcpy(i8* %71, i32* %75, i64 %79)
  br label %81

81:                                               ; preds = %53, %47
  br label %82

82:                                               ; preds = %81, %1
  ret void
}

declare dso_local %struct.csio_scsim* @csio_hw_to_scsim(%struct.csio_hw*) #1

declare dso_local i32 @CSIO_SCSI_DATA_WRSZ(%struct.csio_ioreq*, i32, i64, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @csio_wr_get(%struct.csio_hw*, i32, i64, %struct.csio_wr_pair*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @csio_scsi_init_read_wr(%struct.csio_ioreq*, i8*, i64) #1

declare dso_local i32* @csio_q_eq_wrap(%struct.csio_hw*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
