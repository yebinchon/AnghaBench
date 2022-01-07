; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_fsm.c_fsm_io_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_fsm.c_fsm_io_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_ccw_private = type { i32, i32, %struct.subchannel* }
%struct.subchannel = type { i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.orb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"stIO\00", align 1
@SCSW_ACTL_START_PEND = common dso_local global i32 0, align 4
@VFIO_CCW_STATE_CP_PENDING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_ccw_private*)* @fsm_io_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsm_io_helper(%struct.vfio_ccw_private* %0) #0 {
  %2 = alloca %struct.vfio_ccw_private*, align 8
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %union.orb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vfio_ccw_private* %0, %struct.vfio_ccw_private** %2, align 8
  %9 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %2, align 8
  %10 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %9, i32 0, i32 2
  %11 = load %struct.subchannel*, %struct.subchannel** %10, align 8
  store %struct.subchannel* %11, %struct.subchannel** %3, align 8
  %12 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %13 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32 %14, i64 %15)
  %17 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %2, align 8
  %18 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %17, i32 0, i32 1
  %19 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %20 = ptrtoint %struct.subchannel* %19 to i64
  %21 = trunc i64 %20 to i32
  %22 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %23 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %union.orb* @cp_get_orb(i32* %18, i32 %21, i32 %24)
  store %union.orb* %25, %union.orb** %4, align 8
  %26 = load %union.orb*, %union.orb** %4, align 8
  %27 = icmp ne %union.orb* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %100

31:                                               ; preds = %1
  %32 = call i32 @VFIO_CCW_TRACE_EVENT(i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %34 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %33, i32 0, i32 4
  %35 = call i8* @dev_name(i32* %34)
  %36 = call i32 @VFIO_CCW_TRACE_EVENT(i32 5, i8* %35)
  %37 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %38 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %union.orb*, %union.orb** %4, align 8
  %41 = call i32 @ssch(i32 %39, %union.orb* %40)
  store i32 %41, i32* %5, align 4
  %42 = call i32 @VFIO_CCW_HEX_EVENT(i32 5, i32* %5, i32 4)
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %97 [
    i32 0, label %44
    i32 1, label %56
    i32 2, label %56
    i32 3, label %59
  ]

44:                                               ; preds = %31
  %45 = load i32, i32* @SCSW_ACTL_START_PEND, align 4
  %46 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %47 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %45
  store i32 %52, i32* %50, align 4
  store i32 0, i32* %8, align 4
  %53 = load i32, i32* @VFIO_CCW_STATE_CP_PENDING, align 4
  %54 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %2, align 8
  %55 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %99

56:                                               ; preds = %31, %31
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %99

59:                                               ; preds = %31
  %60 = load %union.orb*, %union.orb** %4, align 8
  %61 = bitcast %union.orb* %60 to %struct.TYPE_8__*
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load i32, i32* %6, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %70 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %76

73:                                               ; preds = %59
  %74 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %75 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %66
  %77 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %78 = call i32 @cio_update_schib(%struct.subchannel* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %96

83:                                               ; preds = %76
  %84 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %85 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @EACCES, align 4
  %90 = sub nsw i32 0, %89
  br label %94

91:                                               ; preds = %83
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  br label %94

94:                                               ; preds = %91, %88
  %95 = phi i32 [ %90, %88 ], [ %93, %91 ]
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %94, %80
  br label %99

97:                                               ; preds = %31
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %97, %96, %56, %44
  br label %100

100:                                              ; preds = %99, %28
  %101 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %102 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @spin_unlock_irqrestore(i32 %103, i64 %104)
  %106 = load i32, i32* %8, align 4
  ret i32 %106
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local %union.orb* @cp_get_orb(i32*, i32, i32) #1

declare dso_local i32 @VFIO_CCW_TRACE_EVENT(i32, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @ssch(i32, %union.orb*) #1

declare dso_local i32 @VFIO_CCW_HEX_EVENT(i32, i32*, i32) #1

declare dso_local i32 @cio_update_schib(%struct.subchannel*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
