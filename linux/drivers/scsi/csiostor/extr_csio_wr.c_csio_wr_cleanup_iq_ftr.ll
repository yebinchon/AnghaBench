; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_cleanup_iq_ftr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_cleanup_iq_ftr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_wrm = type { %struct.csio_q** }
%struct.csio_q = type { i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.csio_iqwr_footer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, i32)* @csio_wr_cleanup_iq_ftr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_wr_cleanup_iq_ftr(%struct.csio_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_wrm*, align 8
  %6 = alloca %struct.csio_q*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.csio_iqwr_footer*, align 8
  %9 = alloca i64, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %11 = call %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw* %10)
  store %struct.csio_wrm* %11, %struct.csio_wrm** %5, align 8
  %12 = load %struct.csio_wrm*, %struct.csio_wrm** %5, align 8
  %13 = getelementptr inbounds %struct.csio_wrm, %struct.csio_wrm* %12, i32 0, i32 0
  %14 = load %struct.csio_q**, %struct.csio_q*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.csio_q*, %struct.csio_q** %14, i64 %16
  %18 = load %struct.csio_q*, %struct.csio_q** %17, align 8
  store %struct.csio_q* %18, %struct.csio_q** %6, align 8
  store i64 0, i64* %9, align 8
  %19 = load %struct.csio_q*, %struct.csio_q** %6, align 8
  %20 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %50, %2
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.csio_q*, %struct.csio_q** %6, align 8
  %26 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %23
  %30 = load %struct.csio_q*, %struct.csio_q** %6, align 8
  %31 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.csio_q*, %struct.csio_q** %6, align 8
  %35 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = mul i64 %33, %36
  %38 = add i64 %32, %37
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = load %struct.csio_q*, %struct.csio_q** %6, align 8
  %43 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %44, 4
  %46 = add i64 %41, %45
  %47 = inttoptr i64 %46 to %struct.csio_iqwr_footer*
  store %struct.csio_iqwr_footer* %47, %struct.csio_iqwr_footer** %8, align 8
  %48 = load %struct.csio_iqwr_footer*, %struct.csio_iqwr_footer** %8, align 8
  %49 = call i32 @memset(%struct.csio_iqwr_footer* %48, i32 0, i32 4)
  br label %50

50:                                               ; preds = %29
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %9, align 8
  br label %23

53:                                               ; preds = %23
  ret void
}

declare dso_local %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw*) #1

declare dso_local i32 @memset(%struct.csio_iqwr_footer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
