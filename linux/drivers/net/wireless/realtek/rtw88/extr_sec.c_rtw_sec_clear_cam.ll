; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_sec.c_rtw_sec_clear_cam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_sec.c_rtw_sec_clear_cam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_sec_desc = type { i32, %struct.rtw_cam_entry* }
%struct.rtw_cam_entry = type { i32, i32, i32* }

@RTW_SEC_CMD_WRITE_ENABLE = common dso_local global i32 0, align 4
@RTW_SEC_CMD_POLLING = common dso_local global i32 0, align 4
@RTW_SEC_CAM_ENTRY_SHIFT = common dso_local global i64 0, align 8
@RTW_SEC_WRITE_REG = common dso_local global i32 0, align 4
@RTW_SEC_CMD_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_sec_clear_cam(%struct.rtw_dev* %0, %struct.rtw_sec_desc* %1, i64 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.rtw_sec_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtw_cam_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store %struct.rtw_sec_desc* %1, %struct.rtw_sec_desc** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.rtw_sec_desc*, %struct.rtw_sec_desc** %5, align 8
  %12 = getelementptr inbounds %struct.rtw_sec_desc, %struct.rtw_sec_desc* %11, i32 0, i32 1
  %13 = load %struct.rtw_cam_entry*, %struct.rtw_cam_entry** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.rtw_cam_entry, %struct.rtw_cam_entry* %13, i64 %14
  store %struct.rtw_cam_entry* %15, %struct.rtw_cam_entry** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.rtw_sec_desc*, %struct.rtw_sec_desc** %5, align 8
  %18 = getelementptr inbounds %struct.rtw_sec_desc, %struct.rtw_sec_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @clear_bit(i64 %16, i32 %19)
  %21 = load %struct.rtw_cam_entry*, %struct.rtw_cam_entry** %7, align 8
  %22 = getelementptr inbounds %struct.rtw_cam_entry, %struct.rtw_cam_entry* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.rtw_cam_entry*, %struct.rtw_cam_entry** %7, align 8
  %24 = getelementptr inbounds %struct.rtw_cam_entry, %struct.rtw_cam_entry* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.rtw_cam_entry*, %struct.rtw_cam_entry** %7, align 8
  %26 = getelementptr inbounds %struct.rtw_cam_entry, %struct.rtw_cam_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @eth_zero_addr(i32 %27)
  %29 = load i32, i32* @RTW_SEC_CMD_WRITE_ENABLE, align 4
  %30 = load i32, i32* @RTW_SEC_CMD_POLLING, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @RTW_SEC_CAM_ENTRY_SHIFT, align 8
  %34 = shl i64 %32, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %40 = load i32, i32* @RTW_SEC_WRITE_REG, align 4
  %41 = call i32 @rtw_write32(%struct.rtw_dev* %39, i32 %40, i32 0)
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %43 = load i32, i32* @RTW_SEC_CMD_REG, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @rtw_write32(%struct.rtw_dev* %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
