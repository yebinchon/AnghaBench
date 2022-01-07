; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_u3d_core.c_mv_u3d_controller_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_u3d_core.c_mv_u3d_controller_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_u3d = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@MV_U3D_LTSSM_PHY_INIT_DONE = common dso_local global i32 0, align 4
@MV_U3D_INTR_ENABLE_LINK_CHG = common dso_local global i32 0, align 4
@MV_U3D_INTR_ENABLE_TXDESC_ERR = common dso_local global i32 0, align 4
@MV_U3D_INTR_ENABLE_RXDESC_ERR = common dso_local global i32 0, align 4
@MV_U3D_INTR_ENABLE_TX_COMPLETE = common dso_local global i32 0, align 4
@MV_U3D_INTR_ENABLE_RX_COMPLETE = common dso_local global i32 0, align 4
@MV_U3D_INTR_ENABLE_SETUP = common dso_local global i32 0, align 4
@MV_U3D_INTR_ENABLE_VBUS_VALID = common dso_local global i32 0, align 4
@MV_U3D_CMD_RUN_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"after u3d_start, USBCMD 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_u3d*)* @mv_u3d_controller_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_u3d_controller_start(%struct.mv_u3d* %0) #0 {
  %2 = alloca %struct.mv_u3d*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mv_u3d* %0, %struct.mv_u3d** %2, align 8
  %5 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %6 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = call i32 @ioread32(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @MV_U3D_LTSSM_PHY_INIT_DONE, align 4
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %15 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = call i32 @iowrite32(i32 %13, i32* %17)
  %19 = load i32, i32* @MV_U3D_INTR_ENABLE_LINK_CHG, align 4
  %20 = load i32, i32* @MV_U3D_INTR_ENABLE_TXDESC_ERR, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MV_U3D_INTR_ENABLE_RXDESC_ERR, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MV_U3D_INTR_ENABLE_TX_COMPLETE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MV_U3D_INTR_ENABLE_RX_COMPLETE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MV_U3D_INTR_ENABLE_SETUP, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %31 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @MV_U3D_INTR_ENABLE_VBUS_VALID, align 4
  br label %37

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = or i32 %29, %38
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %42 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = call i32 @iowrite32(i32 %40, i32* %44)
  %46 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %47 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @iowrite32(i32 1, i32* %49)
  %51 = load i32, i32* @MV_U3D_CMD_RUN_STOP, align 4
  %52 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %53 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @iowrite32(i32 %51, i32* %55)
  %57 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %58 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %61 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @ioread32(i32* %63)
  %65 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %64)
  ret void
}

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
