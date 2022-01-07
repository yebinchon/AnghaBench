; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_abrt_cls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_abrt_cls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_ioreq = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.csio_hw* }
%struct.csio_hw = type { i32 }
%struct.csio_wr_pair = type { i64, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_ioreq*, i32)* @csio_scsi_abrt_cls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_scsi_abrt_cls(%struct.csio_ioreq* %0, i32 %1) #0 {
  %3 = alloca %struct.csio_ioreq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_wr_pair, align 8
  %6 = alloca %struct.csio_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.csio_ioreq* %0, %struct.csio_ioreq** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %10 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.csio_hw*, %struct.csio_hw** %12, align 8
  store %struct.csio_hw* %13, %struct.csio_hw** %6, align 8
  %14 = call i64 @ALIGN(i32 4, i32 16)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %16 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %17 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @csio_wr_get(%struct.csio_hw* %15, i32 %18, i64 %19, %struct.csio_wr_pair* %5)
  %21 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %22 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %24 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %69

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %5, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %35 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %5, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @csio_scsi_init_abrt_cls_wr(%struct.csio_ioreq* %34, i8* %36, i64 %37, i32 %38)
  br label %69

40:                                               ; preds = %28
  %41 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %42 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %43 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32* @csio_q_eq_wrap(%struct.csio_hw* %41, i32 %44)
  store i32* %45, i32** %8, align 8
  %46 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = bitcast i32* %47 to i8*
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @csio_scsi_init_abrt_cls_wr(%struct.csio_ioreq* %46, i8* %48, i64 %49, i32 %50)
  %52 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %5, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %5, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @memcpy(i8* %53, i32* %54, i64 %56)
  %58 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %5, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %5, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %5, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %64, %66
  %68 = call i32 @memcpy(i8* %59, i32* %63, i64 %67)
  br label %69

69:                                               ; preds = %27, %40, %33
  ret void
}

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @csio_wr_get(%struct.csio_hw*, i32, i64, %struct.csio_wr_pair*) #1

declare dso_local i32 @csio_scsi_init_abrt_cls_wr(%struct.csio_ioreq*, i8*, i64, i32) #1

declare dso_local i32* @csio_q_eq_wrap(%struct.csio_hw*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
