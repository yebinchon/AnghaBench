; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_fw_ver_compatible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_fw_ver_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfi_ioc_image_hdr_s = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }

@BFA_FALSE = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s*)* @bfa_ioc_fw_ver_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioc_fw_ver_compatible(%struct.bfi_ioc_image_hdr_s* %0, %struct.bfi_ioc_image_hdr_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfi_ioc_image_hdr_s*, align 8
  %5 = alloca %struct.bfi_ioc_image_hdr_s*, align 8
  store %struct.bfi_ioc_image_hdr_s* %0, %struct.bfi_ioc_image_hdr_s** %4, align 8
  store %struct.bfi_ioc_image_hdr_s* %1, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %6 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %4, align 8
  %7 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %10 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @BFA_FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %87

15:                                               ; preds = %2
  %16 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %4, align 8
  %17 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %21 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %19, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @BFA_FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %87

27:                                               ; preds = %15
  %28 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %4, align 8
  %29 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %33 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %31, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @BFA_FALSE, align 4
  store i32 %38, i32* %3, align 4
  br label %87

39:                                               ; preds = %27
  %40 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %4, align 8
  %41 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %45 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %43, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @BFA_FALSE, align 4
  store i32 %50, i32* %3, align 4
  br label %87

51:                                               ; preds = %39
  %52 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %4, align 8
  %53 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %57 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %55, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %51
  %62 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %4, align 8
  %63 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %67 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %65, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %61
  %72 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %4, align 8
  %73 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %77 = getelementptr inbounds %struct.bfi_ioc_image_hdr_s, %struct.bfi_ioc_image_hdr_s* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %75, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %4, align 8
  %83 = load %struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s** %5, align 8
  %84 = call i32 @bfa_ioc_fwver_md5_check(%struct.bfi_ioc_image_hdr_s* %82, %struct.bfi_ioc_image_hdr_s* %83)
  store i32 %84, i32* %3, align 4
  br label %87

85:                                               ; preds = %71, %61, %51
  %86 = load i32, i32* @BFA_TRUE, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %81, %49, %37, %25, %13
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @bfa_ioc_fwver_md5_check(%struct.bfi_ioc_image_hdr_s*, %struct.bfi_ioc_image_hdr_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
