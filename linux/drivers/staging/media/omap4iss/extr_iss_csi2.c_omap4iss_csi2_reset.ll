; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_omap4iss_csi2_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_omap4iss_csi2_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_csi2_device = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CSI2_SYSCONFIG = common dso_local global i32 0, align 4
@CSI2_SYSCONFIG_SOFT_RESET = common dso_local global i32 0, align 4
@CSI2_SYSSTATUS = common dso_local global i32 0, align 4
@CSI2_SYSSTATUS_RESET_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"CSI2: Soft reset timeout!\0A\00", align 1
@CSI2_COMPLEXIO_CFG = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_CFG_RESET_CTRL = common dso_local global i32 0, align 4
@REGISTER1 = common dso_local global i32 0, align 4
@REGISTER1_RESET_DONE_CTRLCLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"CSI2: CSI2_96M_FCLK reset timeout!\0A\00", align 1
@CSI2_SYSCONFIG_MSTANDBY_MODE_MASK = common dso_local global i32 0, align 4
@CSI2_SYSCONFIG_AUTO_IDLE = common dso_local global i32 0, align 4
@CSI2_SYSCONFIG_MSTANDBY_MODE_NO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap4iss_csi2_reset(%struct.iss_csi2_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iss_csi2_device*, align 8
  %4 = alloca i32, align 4
  store %struct.iss_csi2_device* %0, %struct.iss_csi2_device** %3, align 8
  %5 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %6 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %101

12:                                               ; preds = %1
  %13 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %14 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %101

22:                                               ; preds = %12
  %23 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %24 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %27 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CSI2_SYSCONFIG, align 4
  %30 = load i32, i32* @CSI2_SYSCONFIG_SOFT_RESET, align 4
  %31 = call i32 @iss_reg_set(%struct.TYPE_6__* %25, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %33 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %36 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CSI2_SYSSTATUS, align 4
  %39 = call i32 @iss_reg_read(%struct.TYPE_6__* %34, i32 %37, i32 %38)
  %40 = load i32, i32* @CSI2_SYSSTATUS_RESET_DONE, align 4
  %41 = and i32 %39, %40
  %42 = call i32 @iss_poll_condition_timeout(i32 %41, i32 500, i32 100, i32 200)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %22
  %46 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %47 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %101

54:                                               ; preds = %22
  %55 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %56 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %59 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CSI2_COMPLEXIO_CFG, align 4
  %62 = load i32, i32* @CSI2_COMPLEXIO_CFG_RESET_CTRL, align 4
  %63 = call i32 @iss_reg_set(%struct.TYPE_6__* %57, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %65 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %68 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @REGISTER1, align 4
  %73 = call i32 @iss_reg_read(%struct.TYPE_6__* %66, i32 %71, i32 %72)
  %74 = load i32, i32* @REGISTER1_RESET_DONE_CTRLCLK, align 4
  %75 = and i32 %73, %74
  %76 = call i32 @iss_poll_condition_timeout(i32 %75, i32 10000, i32 100, i32 500)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %54
  %80 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %81 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @EBUSY, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %101

88:                                               ; preds = %54
  %89 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %90 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %93 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @CSI2_SYSCONFIG, align 4
  %96 = load i32, i32* @CSI2_SYSCONFIG_MSTANDBY_MODE_MASK, align 4
  %97 = load i32, i32* @CSI2_SYSCONFIG_AUTO_IDLE, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @CSI2_SYSCONFIG_MSTANDBY_MODE_NO, align 4
  %100 = call i32 @iss_reg_update(%struct.TYPE_6__* %91, i32 %94, i32 %95, i32 %98, i32 %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %88, %79, %45, %19, %9
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @iss_reg_set(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @iss_poll_condition_timeout(i32, i32, i32, i32) #1

declare dso_local i32 @iss_reg_read(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @iss_reg_update(%struct.TYPE_6__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
