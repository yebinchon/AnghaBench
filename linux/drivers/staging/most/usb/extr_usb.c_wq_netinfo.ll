; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_wq_netinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_wq_netinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.most_dev = type { i32, i32 (i32*, i32, i32*)*, %struct.usb_device* }
%struct.usb_device = type { %struct.device }
%struct.device = type { i32 }

@DRCI_REG_HW_ADDR_HI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Vendor request 'hw_addr_hi' failed\0A\00", align 1
@DRCI_REG_HW_ADDR_MI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Vendor request 'hw_addr_mid' failed\0A\00", align 1
@DRCI_REG_HW_ADDR_LO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Vendor request 'hw_addr_low' failed\0A\00", align 1
@DRCI_REG_NI_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Vendor request 'link status' failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @wq_netinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wq_netinfo(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.most_dev*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [6 x i32], align 16
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %11 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %12 = call %struct.most_dev* @to_mdev_from_work(%struct.work_struct* %11)
  store %struct.most_dev* %12, %struct.most_dev** %3, align 8
  %13 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %14 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %13, i32 0, i32 2
  %15 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  store %struct.usb_device* %15, %struct.usb_device** %4, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %5, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %19 = load i32, i32* @DRCI_REG_HW_ADDR_HI, align 4
  %20 = call i64 @drci_rd_reg(%struct.usb_device* %18, i32 %19, i32* %6)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %78

25:                                               ; preds = %1
  %26 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %27 = load i32, i32* @DRCI_REG_HW_ADDR_MI, align 4
  %28 = call i64 @drci_rd_reg(%struct.usb_device* %26, i32 %27, i32* %7)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %78

33:                                               ; preds = %25
  %34 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %35 = load i32, i32* @DRCI_REG_HW_ADDR_LO, align 4
  %36 = call i64 @drci_rd_reg(%struct.usb_device* %34, i32 %35, i32* %8)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %78

41:                                               ; preds = %33
  %42 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %43 = load i32, i32* @DRCI_REG_NI_STATE, align 4
  %44 = call i64 @drci_rd_reg(%struct.usb_device* %42, i32 %43, i32* %9)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %78

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %50, 8
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  store i32 %51, i32* %52, align 16
  %53 = load i32, i32* %6, align 4
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 1
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = ashr i32 %55, 8
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 2
  store i32 %56, i32* %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 3
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = ashr i32 %60, 8
  %62 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 4
  store i32 %61, i32* %62, align 16
  %63 = load i32, i32* %8, align 4
  %64 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 5
  store i32 %63, i32* %64, align 4
  %65 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %66 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %65, i32 0, i32 1
  %67 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %66, align 8
  %68 = icmp ne i32 (i32*, i32, i32*)* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %49
  %70 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %71 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %70, i32 0, i32 1
  %72 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %71, align 8
  %73 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %74 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %9, align 4
  %76 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %77 = call i32 %72(i32* %74, i32 %75, i32* %76)
  br label %78

78:                                               ; preds = %22, %30, %38, %46, %69, %49
  ret void
}

declare dso_local %struct.most_dev* @to_mdev_from_work(%struct.work_struct*) #1

declare dso_local i64 @drci_rd_reg(%struct.usb_device*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
