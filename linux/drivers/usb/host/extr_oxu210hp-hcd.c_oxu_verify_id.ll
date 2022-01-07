; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_verify_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_verify_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@oxu_verify_id.bo = internal constant [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"128-pin LQFP\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"84-pin TFBGA\00", align 1
@OXU_DEVICEID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"device ID %x\0A\00", align 1
@OXU_REV_MASK = common dso_local global i64 0, align 8
@OXU_REV_2100 = common dso_local global i64 0, align 8
@OXU_REV_SHIFT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"found device %x %s (%04x:%04x)\0A\00", align 1
@OXU_BO_MASK = common dso_local global i64 0, align 8
@OXU_BO_SHIFT = common dso_local global i64 0, align 8
@OXU_MAJ_REV_MASK = common dso_local global i64 0, align 8
@OXU_MAJ_REV_SHIFT = common dso_local global i64 0, align 8
@OXU_MIN_REV_MASK = common dso_local global i64 0, align 8
@OXU_MIN_REV_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i8*)* @oxu_verify_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxu_verify_id(%struct.platform_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* @OXU_DEVICEID, align 4
  %9 = call i64 @oxu_readl(i8* %7, i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @OXU_REV_MASK, align 8
  %16 = and i64 %14, %15
  %17 = load i64, i64* @OXU_REV_2100, align 8
  %18 = load i64, i64* @OXU_REV_SHIFT, align 8
  %19 = shl i64 %17, %18
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %46

22:                                               ; preds = %2
  %23 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @OXU_REV_SHIFT, align 8
  %27 = lshr i64 %25, %26
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @OXU_BO_MASK, align 8
  %30 = and i64 %28, %29
  %31 = load i64, i64* @OXU_BO_SHIFT, align 8
  %32 = lshr i64 %30, %31
  %33 = getelementptr inbounds [4 x i8*], [4 x i8*]* @oxu_verify_id.bo, i64 0, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @OXU_MAJ_REV_MASK, align 8
  %37 = and i64 %35, %36
  %38 = load i64, i64* @OXU_MAJ_REV_SHIFT, align 8
  %39 = lshr i64 %37, %38
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @OXU_MIN_REV_MASK, align 8
  %42 = and i64 %40, %41
  %43 = load i64, i64* @OXU_MIN_REV_SHIFT, align 8
  %44 = lshr i64 %42, %43
  %45 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %27, i8* %34, i64 %39, i64 %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %22, %21
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @oxu_readl(i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
