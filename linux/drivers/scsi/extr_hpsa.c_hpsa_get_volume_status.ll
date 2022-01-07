; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_get_volume_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_get_volume_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@HPSA_VPD_LV_STATUS_UNSUPPORTED = common dso_local global i32 0, align 4
@HPSA_VPD_LV_STATUS = common dso_local global i32 0, align 4
@VPD_PAGE = common dso_local global i32 0, align 4
@HPSA_VPD_HEADER_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i8*)* @hpsa_get_volume_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_get_volume_status(%struct.ctlr_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kzalloc(i32 64, i32 %10)
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @HPSA_VPD_LV_STATUS_UNSUPPORTED, align 4
  store i32 %15, i32* %3, align 4
  br label %66

16:                                               ; preds = %2
  %17 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @HPSA_VPD_LV_STATUS, align 4
  %20 = call i32 @hpsa_vpd_page_supported(%struct.ctlr_info* %17, i8* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %62

23:                                               ; preds = %16
  %24 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @VPD_PAGE, align 4
  %27 = load i32, i32* @HPSA_VPD_LV_STATUS, align 4
  %28 = or i32 %26, %27
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* @HPSA_VPD_HEADER_SZ, align 8
  %31 = call i32 @hpsa_scsi_do_inquiry(%struct.ctlr_info* %24, i8* %25, i32 %28, i8* %29, i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %62

35:                                               ; preds = %23
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* @VPD_PAGE, align 4
  %43 = load i32, i32* @HPSA_VPD_LV_STATUS, align 4
  %44 = or i32 %42, %43
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @HPSA_VPD_HEADER_SZ, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @hpsa_scsi_do_inquiry(%struct.ctlr_info* %40, i8* %41, i32 %44, i8* %45, i64 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %35
  br label %62

54:                                               ; preds = %35
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  store i32 %58, i32* %7, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @kfree(i8* %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %66

62:                                               ; preds = %53, %34, %22
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @kfree(i8* %63)
  %65 = load i32, i32* @HPSA_VPD_LV_STATUS_UNSUPPORTED, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %54, %14
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @hpsa_vpd_page_supported(%struct.ctlr_info*, i8*, i32) #1

declare dso_local i32 @hpsa_scsi_do_inquiry(%struct.ctlr_info*, i8*, i32, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
