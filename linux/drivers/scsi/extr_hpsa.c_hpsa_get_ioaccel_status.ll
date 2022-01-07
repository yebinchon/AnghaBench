; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_get_ioaccel_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_get_ioaccel_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.hpsa_scsi_dev_t = type { i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@HPSA_VPD_LV_IOACCEL_STATUS = common dso_local global i32 0, align 4
@VPD_PAGE = common dso_local global i32 0, align 4
@IOACCEL_STATUS_BYTE = common dso_local global i64 0, align 8
@OFFLOAD_CONFIGURED_BIT = common dso_local global i32 0, align 4
@OFFLOAD_ENABLED_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, i8*, %struct.hpsa_scsi_dev_t*)* @hpsa_get_ioaccel_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_get_ioaccel_status(%struct.ctlr_info* %0, i8* %1, %struct.hpsa_scsi_dev_t* %2) #0 {
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.hpsa_scsi_dev_t* %2, %struct.hpsa_scsi_dev_t** %6, align 8
  %10 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %11 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %13 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %15 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 64, i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %78

21:                                               ; preds = %3
  %22 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @HPSA_VPD_LV_IOACCEL_STATUS, align 4
  %25 = call i32 @hpsa_vpd_page_supported(%struct.ctlr_info* %22, i8* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %75

28:                                               ; preds = %21
  %29 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @VPD_PAGE, align 4
  %32 = load i32, i32* @HPSA_VPD_LV_IOACCEL_STATUS, align 4
  %33 = or i32 %31, %32
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @hpsa_scsi_do_inquiry(%struct.ctlr_info* %29, i8* %30, i32 %33, i8* %34, i32 64)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %75

39:                                               ; preds = %28
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %51 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %53 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %39
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 2
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %64 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %68 = call i64 @hpsa_get_raid_map(%struct.ctlr_info* %65, i8* %66, %struct.hpsa_scsi_dev_t* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %56
  %71 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %72 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %56
  br label %74

74:                                               ; preds = %73, %39
  br label %75

75:                                               ; preds = %74, %38, %27
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @kfree(i8* %76)
  br label %78

78:                                               ; preds = %75, %20
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @hpsa_vpd_page_supported(%struct.ctlr_info*, i8*, i32) #1

declare dso_local i32 @hpsa_scsi_do_inquiry(%struct.ctlr_info*, i8*, i32, i8*, i32) #1

declare dso_local i64 @hpsa_get_raid_map(%struct.ctlr_info*, i8*, %struct.hpsa_scsi_dev_t*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
