; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_fwver_md5_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_fwver_md5_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfi_ioc_image_hdr_s = type { i64* }

@BFI_IOC_MD5SUM_SZ = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s*)* @bfa_ioc_fwver_md5_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioc_fwver_md5_check(%struct.bfi_ioc_image_hdr_s* %0, %struct.bfi_ioc_image_hdr_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfi_ioc_image_hdr_s*, align 8
  %5 = alloca %struct.bfi_ioc_image_hdr_s*, align 8
  %6 = alloca i32, align 4
  store %struct.bfi_ioc_image_hdr_s* %0, %struct.bfi_ioc_image_hdr_s** %4, align 8
  store %struct.bfi_ioc_image_hdr_s* %1, %struct.bfi_ioc_image_hdr_s** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %30, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @BFI_IOC_MD5SUM_SZ, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %4, align 8
  %13 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %20 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %18, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %11
  %28 = load i32, i32* @BFA_FALSE, align 4
  store i32 %28, i32* %3, align 4
  br label %35

29:                                               ; preds = %11
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %7

33:                                               ; preds = %7
  %34 = load i32, i32* @BFA_TRUE, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
