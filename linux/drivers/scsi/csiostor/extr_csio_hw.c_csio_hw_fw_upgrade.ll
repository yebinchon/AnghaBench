; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_fw_upgrade.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_fw_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.fw_hdr = type { i32 }

@FW_HDR_FLAGS_RESET_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*, i32, i32*, i32, i32)* @csio_hw_fw_upgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_hw_fw_upgrade(%struct.csio_hw* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.csio_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fw_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = bitcast i32* %15 to %struct.fw_hdr*
  store %struct.fw_hdr* %16, %struct.fw_hdr** %12, align 8
  %17 = load %struct.csio_hw*, %struct.csio_hw** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @csio_hw_fw_halt(%struct.csio_hw* %17, i32 %18, i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %6, align 4
  br label %50

28:                                               ; preds = %23, %5
  %29 = load %struct.csio_hw*, %struct.csio_hw** %7, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @csio_hw_fw_dload(%struct.csio_hw* %29, i32* %30, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %6, align 4
  br label %50

37:                                               ; preds = %28
  %38 = load %struct.fw_hdr*, %struct.fw_hdr** %12, align 8
  %39 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ntohl(i32 %40)
  %42 = load i32, i32* @FW_HDR_FLAGS_RESET_HALT, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = load %struct.csio_hw*, %struct.csio_hw** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @csio_hw_fw_restart(%struct.csio_hw* %46, i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %37, %35, %26
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @csio_hw_fw_halt(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @csio_hw_fw_dload(%struct.csio_hw*, i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @csio_hw_fw_restart(%struct.csio_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
