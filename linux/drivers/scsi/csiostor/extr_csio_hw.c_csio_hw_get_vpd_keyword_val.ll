; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_get_vpd_keyword_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_get_vpd_keyword_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_vpd_hdr = type { i64, i64 }

@VPD_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VPD_INFO_FLD_HDR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t4_vpd_hdr*, i8*)* @csio_hw_get_vpd_keyword_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_hw_get_vpd_keyword_val(%struct.t4_vpd_hdr* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.t4_vpd_hdr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store %struct.t4_vpd_hdr* %0, %struct.t4_vpd_hdr** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.t4_vpd_hdr*, %struct.t4_vpd_hdr** %4, align 8
  %12 = getelementptr inbounds %struct.t4_vpd_hdr, %struct.t4_vpd_hdr* %11, i32 0, i32 0
  store i64* %12, i64** %9, align 8
  %13 = load %struct.t4_vpd_hdr*, %struct.t4_vpd_hdr** %4, align 8
  %14 = getelementptr inbounds %struct.t4_vpd_hdr, %struct.t4_vpd_hdr* %13, i32 0, i32 1
  store i64* %14, i64** %10, align 8
  store i64 16, i64* %7, align 8
  %15 = load i64*, i64** %10, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i64*, i64** %10, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 2
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = shl i32 %22, 8
  %24 = add nsw i32 %18, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, 16
  %28 = load i64, i64* @VPD_LEN, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %69

33:                                               ; preds = %2
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %56, %33
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @VPD_INFO_FLD_HDR_SIZE, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp sle i64 %38, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %35
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @memcmp(i64* %46, i8* %47, i32 2)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i64, i64* @VPD_INFO_FLD_HDR_SIZE, align 8
  %52 = load i64, i64* %6, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %69

56:                                               ; preds = %43
  %57 = load i64, i64* @VPD_INFO_FLD_HDR_SIZE, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = load i64, i64* %6, align 8
  %60 = add nsw i64 %59, 2
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %57, %62
  %64 = load i64, i64* %6, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %6, align 8
  br label %35

66:                                               ; preds = %35
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %50, %30
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @memcmp(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
