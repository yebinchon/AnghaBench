; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_flash_fwver_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_flash_fwver_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i32 }
%struct.bfi_ioc_image_hdr_s = type { i32 }

@BFI_FLASH_CHUNK_SZ_WORDS = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFI_IOC_IMG_VER_INCOMP = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_ioc_s*, %struct.bfi_ioc_image_hdr_s*)* @bfa_ioc_flash_fwver_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioc_flash_fwver_cmp(%struct.bfa_ioc_s* %0, %struct.bfi_ioc_image_hdr_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfa_ioc_s*, align 8
  %5 = alloca %struct.bfi_ioc_image_hdr_s*, align 8
  %6 = alloca %struct.bfi_ioc_image_hdr_s*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %4, align 8
  store %struct.bfi_ioc_image_hdr_s* %1, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %11 = load i32, i32* @BFI_FLASH_CHUNK_SZ_WORDS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %16 = call i64 @bfa_ioc_flash_img_get_chnk(%struct.bfa_ioc_s* %15, i32 0, i32* %14)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @BFA_STATUS_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @BFI_IOC_IMG_VER_INCOMP, align 4
  store i32 %21, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %34

22:                                               ; preds = %2
  %23 = bitcast i32* %14 to %struct.bfi_ioc_image_hdr_s*
  store %struct.bfi_ioc_image_hdr_s* %23, %struct.bfi_ioc_image_hdr_s** %6, align 8
  %24 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %6, align 8
  %25 = call i64 @bfa_ioc_flash_fwver_valid(%struct.bfi_ioc_image_hdr_s* %24)
  %26 = load i64, i64* @BFA_TRUE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %30 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %6, align 8
  %31 = call i32 @bfa_ioc_fw_ver_patch_cmp(%struct.bfi_ioc_image_hdr_s* %29, %struct.bfi_ioc_image_hdr_s* %30)
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @BFI_IOC_IMG_VER_INCOMP, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %28, %20
  %35 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %35)
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @bfa_ioc_flash_img_get_chnk(%struct.bfa_ioc_s*, i32, i32*) #2

declare dso_local i64 @bfa_ioc_flash_fwver_valid(%struct.bfi_ioc_image_hdr_s*) #2

declare dso_local i32 @bfa_ioc_fw_ver_patch_cmp(%struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
