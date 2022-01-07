; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_u3d_core.c_mv_u3d_controller_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_u3d_core.c_mv_u3d_controller_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_u3d = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@MV_U3D_INTR_ENABLE_VBUS_VALID = common dso_local global i32 0, align 4
@MV_U3D_CMD_RUN_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"after u3d_stop, USBCMD 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_u3d*)* @mv_u3d_controller_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_u3d_controller_stop(%struct.mv_u3d* %0) #0 {
  %2 = alloca %struct.mv_u3d*, align 8
  %3 = alloca i32, align 4
  store %struct.mv_u3d* %0, %struct.mv_u3d** %2, align 8
  %4 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %5 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %10 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load i32, i32* @MV_U3D_INTR_ENABLE_VBUS_VALID, align 4
  %15 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %16 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  %19 = call i32 @iowrite32(i32 %14, i32* %18)
  br label %26

20:                                               ; preds = %8, %1
  %21 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %22 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 5
  %25 = call i32 @iowrite32(i32 0, i32* %24)
  br label %26

26:                                               ; preds = %20, %13
  %27 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %28 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %31 = call i32 @iowrite32(i32 -1, i32* %30)
  %32 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %33 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = call i32 @iowrite32(i32 -1, i32* %35)
  %37 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %38 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = call i32 @iowrite32(i32 -1, i32* %40)
  %42 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %43 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = call i32 @iowrite32(i32 -1, i32* %45)
  %47 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %48 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @iowrite32(i32 1, i32* %50)
  %52 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %53 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @ioread32(i32* %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* @MV_U3D_CMD_RUN_STOP, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %3, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %63 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @iowrite32(i32 %61, i32* %65)
  %67 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %68 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %71 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @ioread32(i32* %73)
  %75 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %74)
  ret void
}

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
