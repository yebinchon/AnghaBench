; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_skip_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_skip_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.ext_report_lun_entry = type { i32, i32 }

@RPL_DEV_FLAG_NON_DISK = common dso_local global i32 0, align 4
@BMIC_DEVICE_TYPE_ENCLOSURE = common dso_local global i32 0, align 4
@RPL_DEV_FLAG_UNCONFIG_DISK_REPORTING_SUPPORTED = common dso_local global i32 0, align 4
@RPL_DEV_FLAG_UNCONFIG_DISK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i32*, %struct.ext_report_lun_entry*)* @hpsa_skip_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_skip_device(%struct.ctlr_info* %0, i32* %1, %struct.ext_report_lun_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctlr_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ext_report_lun_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.ext_report_lun_entry* %2, %struct.ext_report_lun_entry** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @MASKED_DEVICE(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

14:                                               ; preds = %3
  %15 = load %struct.ext_report_lun_entry*, %struct.ext_report_lun_entry** %7, align 8
  %16 = getelementptr inbounds %struct.ext_report_lun_entry, %struct.ext_report_lun_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ext_report_lun_entry*, %struct.ext_report_lun_entry** %7, align 8
  %19 = getelementptr inbounds %struct.ext_report_lun_entry, %struct.ext_report_lun_entry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @RPL_DEV_FLAG_NON_DISK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @BMIC_DEVICE_TYPE_ENCLOSURE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %50

30:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %50

31:                                               ; preds = %14
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @RPL_DEV_FLAG_UNCONFIG_DISK_REPORTING_SUPPORTED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %50

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @RPL_DEV_FLAG_UNCONFIG_DISK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %50

43:                                               ; preds = %37
  %44 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i64 @hpsa_is_disk_spare(%struct.ctlr_info* %44, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %50

49:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %48, %42, %36, %30, %29, %13
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @MASKED_DEVICE(i32*) #1

declare dso_local i64 @hpsa_is_disk_spare(%struct.ctlr_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
