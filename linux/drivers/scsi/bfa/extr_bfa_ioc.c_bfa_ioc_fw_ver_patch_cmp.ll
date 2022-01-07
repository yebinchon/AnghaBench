; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_fw_ver_patch_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_fw_ver_patch_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfi_ioc_image_hdr_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@BFA_FALSE = common dso_local global i64 0, align 8
@BFI_IOC_IMG_VER_INCOMP = common dso_local global i32 0, align 4
@BFI_IOC_IMG_VER_BETTER = common dso_local global i32 0, align 4
@BFI_IOC_IMG_VER_OLD = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i64 0, align 8
@BFI_IOC_IMG_VER_SAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s*)* @bfa_ioc_fw_ver_patch_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioc_fw_ver_patch_cmp(%struct.bfi_ioc_image_hdr_s* %0, %struct.bfi_ioc_image_hdr_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfi_ioc_image_hdr_s*, align 8
  %5 = alloca %struct.bfi_ioc_image_hdr_s*, align 8
  store %struct.bfi_ioc_image_hdr_s* %0, %struct.bfi_ioc_image_hdr_s** %4, align 8
  store %struct.bfi_ioc_image_hdr_s* %1, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %6 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %4, align 8
  %7 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %8 = call i64 @bfa_ioc_fw_ver_compatible(%struct.bfi_ioc_image_hdr_s* %6, %struct.bfi_ioc_image_hdr_s* %7)
  %9 = load i64, i64* @BFA_FALSE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @BFI_IOC_IMG_VER_INCOMP, align 4
  store i32 %12, i32* %3, align 4
  br label %110

13:                                               ; preds = %2
  %14 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %15 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %4, align 8
  %19 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %17, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @BFI_IOC_IMG_VER_BETTER, align 4
  store i32 %24, i32* %3, align 4
  br label %110

25:                                               ; preds = %13
  %26 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %27 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %4, align 8
  %31 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %29, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @BFI_IOC_IMG_VER_OLD, align 4
  store i32 %36, i32* %3, align 4
  br label %110

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %4, align 8
  %40 = call i64 @fwhdr_is_ga(%struct.bfi_ioc_image_hdr_s* %39)
  %41 = load i64, i64* @BFA_TRUE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %45 = call i64 @fwhdr_is_ga(%struct.bfi_ioc_image_hdr_s* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @BFI_IOC_IMG_VER_SAME, align 4
  store i32 %48, i32* %3, align 4
  br label %110

49:                                               ; preds = %43
  %50 = load i32, i32* @BFI_IOC_IMG_VER_OLD, align 4
  store i32 %50, i32* %3, align 4
  br label %110

51:                                               ; preds = %38
  %52 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %53 = call i64 @fwhdr_is_ga(%struct.bfi_ioc_image_hdr_s* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @BFI_IOC_IMG_VER_BETTER, align 4
  store i32 %56, i32* %3, align 4
  br label %110

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %60 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %4, align 8
  %64 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %62, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* @BFI_IOC_IMG_VER_BETTER, align 4
  store i32 %69, i32* %3, align 4
  br label %110

70:                                               ; preds = %58
  %71 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %72 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %4, align 8
  %76 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %74, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* @BFI_IOC_IMG_VER_OLD, align 4
  store i32 %81, i32* %3, align 4
  br label %110

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %85 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %4, align 8
  %89 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %87, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* @BFI_IOC_IMG_VER_BETTER, align 4
  store i32 %94, i32* %3, align 4
  br label %110

95:                                               ; preds = %83
  %96 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %97 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %4, align 8
  %101 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %99, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i32, i32* @BFI_IOC_IMG_VER_OLD, align 4
  store i32 %106, i32* %3, align 4
  br label %110

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* @BFI_IOC_IMG_VER_SAME, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %105, %93, %80, %68, %55, %49, %47, %35, %23, %11
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i64 @bfa_ioc_fw_ver_compatible(%struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s*) #1

declare dso_local i64 @fwhdr_is_ga(%struct.bfi_ioc_image_hdr_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
