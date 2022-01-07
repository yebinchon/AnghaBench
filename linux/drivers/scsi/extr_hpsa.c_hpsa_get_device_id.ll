; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_get_device_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_get_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }

@HPSA_VPD_LV_DEVICE_ID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VPD_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i8*, i8*, i32, i32)* @hpsa_get_device_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_get_device_id(%struct.ctlr_info* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctlr_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* @HPSA_VPD_LV_DEVICE_ID, align 4
  %17 = call i32 @hpsa_vpd_page_supported(%struct.ctlr_info* %14, i8* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %52

20:                                               ; preds = %5
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kzalloc(i32 64, i32 %21)
  store i8* %22, i8** %13, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %52

28:                                               ; preds = %20
  %29 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* @VPD_PAGE, align 4
  %32 = load i32, i32* @HPSA_VPD_LV_DEVICE_ID, align 4
  %33 = or i32 %31, %32
  %34 = load i8*, i8** %13, align 8
  %35 = call i32 @hpsa_scsi_do_inquiry(%struct.ctlr_info* %29, i8* %30, i32 %33, i8* %34, i32 64)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %28
  %39 = load i32, i32* %11, align 4
  %40 = icmp sgt i32 %39, 16
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 16, i32* %11, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @memcpy(i8* %43, i8* %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %28
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @kfree(i8* %49)
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %48, %25, %19
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @hpsa_vpd_page_supported(%struct.ctlr_info*, i8*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @hpsa_scsi_do_inquiry(%struct.ctlr_info*, i8*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
