; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_get_raid_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_get_raid_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }

@RAID_UNKNOWN = common dso_local global i8 0, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@HPSA_VPD_LV_DEVICE_GEOMETRY = common dso_local global i32 0, align 4
@VPD_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, i8*, i8*)* @hpsa_get_raid_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_get_raid_level(%struct.ctlr_info* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8, i8* @RAID_UNKNOWN, align 1
  %10 = load i8*, i8** %6, align 8
  store i8 %9, i8* %10, align 1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kzalloc(i32 64, i32 %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %52

16:                                               ; preds = %3
  %17 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @HPSA_VPD_LV_DEVICE_GEOMETRY, align 4
  %20 = call i32 @hpsa_vpd_page_supported(%struct.ctlr_info* %17, i8* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %49

23:                                               ; preds = %16
  %24 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @VPD_PAGE, align 4
  %27 = load i32, i32* @HPSA_VPD_LV_DEVICE_GEOMETRY, align 4
  %28 = or i32 %26, %27
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @hpsa_scsi_do_inquiry(%struct.ctlr_info* %24, i8* %25, i32 %28, i8* %29, i32 64)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 8
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** %6, align 8
  store i8 %36, i8* %37, align 1
  br label %38

38:                                               ; preds = %33, %23
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @RAID_UNKNOWN, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i8, i8* @RAID_UNKNOWN, align 1
  %47 = load i8*, i8** %6, align 8
  store i8 %46, i8* %47, align 1
  br label %48

48:                                               ; preds = %45, %38
  br label %49

49:                                               ; preds = %48, %22
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @kfree(i8* %50)
  br label %52

52:                                               ; preds = %49, %15
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @hpsa_vpd_page_supported(%struct.ctlr_info*, i8*, i32) #1

declare dso_local i32 @hpsa_scsi_do_inquiry(%struct.ctlr_info*, i8*, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
