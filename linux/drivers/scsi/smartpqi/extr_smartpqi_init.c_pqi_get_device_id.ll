; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_get_device_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_get_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }

@SCSI_VPD_DEVICE_ID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VPD_PAGE = common dso_local global i32 0, align 4
@SCSI_VPD_DEVICE_ID_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, i32*, i32*, i32)* @pqi_get_device_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_get_device_id(%struct.pqi_ctrl_info* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pqi_ctrl_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* @SCSI_VPD_DEVICE_ID, align 4
  %15 = call i32 @pqi_vpd_page_supported(%struct.pqi_ctrl_info* %12, i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %51

18:                                               ; preds = %4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kzalloc(i32 64, i32 %19)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %51

26:                                               ; preds = %18
  %27 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @VPD_PAGE, align 4
  %30 = load i32, i32* @SCSI_VPD_DEVICE_ID, align 4
  %31 = or i32 %29, %30
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @pqi_scsi_inquiry(%struct.pqi_ctrl_info* %27, i32* %28, i32 %31, i8* %32, i32 64)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %26
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %37, 16
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 16, i32* %9, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32*, i32** %8, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i64, i64* @SCSI_VPD_DEVICE_ID_IDX, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @memcpy(i32* %41, i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %26
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @kfree(i8* %48)
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %23, %17
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @pqi_vpd_page_supported(%struct.pqi_ctrl_info*, i32*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @pqi_scsi_inquiry(%struct.pqi_ctrl_info*, i32*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
