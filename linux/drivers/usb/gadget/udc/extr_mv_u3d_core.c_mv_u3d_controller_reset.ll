; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_u3d_core.c_mv_u3d_controller_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_u3d_core.c_mv_u3d_controller_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_u3d = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MV_U3D_CMD_RUN_STOP = common dso_local global i32 0, align 4
@MV_U3D_CMD_CTRL_RESET = common dso_local global i32 0, align 4
@MV_U3D_RESET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Wait for RESET completed TIMEOUT\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@LOOPS_USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_u3d*)* @mv_u3d_controller_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_u3d_controller_reset(%struct.mv_u3d* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv_u3d*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mv_u3d* %0, %struct.mv_u3d** %3, align 8
  %6 = load %struct.mv_u3d*, %struct.mv_u3d** %3, align 8
  %7 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = call i32 @ioread32(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @MV_U3D_CMD_RUN_STOP, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.mv_u3d*, %struct.mv_u3d** %3, align 8
  %17 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = call i32 @iowrite32(i32 %15, i32* %19)
  %21 = load i32, i32* @MV_U3D_CMD_CTRL_RESET, align 4
  %22 = load %struct.mv_u3d*, %struct.mv_u3d** %3, align 8
  %23 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = call i32 @iowrite32(i32 %21, i32* %25)
  %27 = load i32, i32* @MV_U3D_RESET_TIMEOUT, align 4
  %28 = call i32 @LOOPS(i32 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %48, %1
  %30 = load %struct.mv_u3d*, %struct.mv_u3d** %3, align 8
  %31 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = call i32 @ioread32(i32* %33)
  %35 = load i32, i32* @MV_U3D_CMD_CTRL_RESET, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.mv_u3d*, %struct.mv_u3d** %3, align 8
  %43 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %67

48:                                               ; preds = %38
  %49 = load i32, i32* %4, align 4
  %50 = add i32 %49, -1
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @LOOPS_USEC, align 4
  %52 = call i32 @udelay(i32 %51)
  br label %29

53:                                               ; preds = %29
  %54 = load %struct.mv_u3d*, %struct.mv_u3d** %3, align 8
  %55 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mv_u3d*, %struct.mv_u3d** %3, align 8
  %58 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = call i32 @iowrite32(i32 %56, i32* %60)
  %62 = load %struct.mv_u3d*, %struct.mv_u3d** %3, align 8
  %63 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @iowrite32(i32 0, i32* %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %53, %41
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @LOOPS(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
