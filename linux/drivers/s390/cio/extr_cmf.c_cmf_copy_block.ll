; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_cmf_copy_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_cmf_copy_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.cmb_data* }
%struct.cmb_data = type { i32, i32, i32, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.subchannel = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@SCSW_FCTL_START_FUNC = common dso_local global i32 0, align 4
@SCSW_ACTL_SUSPENDED = common dso_local global i32 0, align 4
@SCSW_ACTL_DEVACT = common dso_local global i32 0, align 4
@SCSW_ACTL_SCHACT = common dso_local global i32 0, align 4
@SCSW_STCTL_SEC_STATUS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @cmf_copy_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmf_copy_block(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca %struct.cmb_data*, align 8
  %6 = alloca i8*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %7 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %8 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.subchannel* @to_subchannel(i32 %10)
  store %struct.subchannel* %11, %struct.subchannel** %4, align 8
  %12 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %13 = call i64 @cio_update_schib(%struct.subchannel* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %76

18:                                               ; preds = %1
  %19 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %20 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @scsw_fctl(i32* %21)
  %23 = load i32, i32* @SCSW_FCTL_START_FUNC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %18
  %27 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %28 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 @scsw_actl(i32* %29)
  %31 = load i32, i32* @SCSW_ACTL_SUSPENDED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %26
  %35 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %36 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 @scsw_actl(i32* %37)
  %39 = load i32, i32* @SCSW_ACTL_DEVACT, align 4
  %40 = load i32, i32* @SCSW_ACTL_SCHACT, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %34
  %45 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %46 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @scsw_stctl(i32* %47)
  %49 = load i32, i32* @SCSW_STCTL_SEC_STATUS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %76

55:                                               ; preds = %44, %34, %26
  br label %56

56:                                               ; preds = %55, %18
  %57 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %58 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.cmb_data*, %struct.cmb_data** %60, align 8
  store %struct.cmb_data* %61, %struct.cmb_data** %5, align 8
  %62 = load %struct.cmb_data*, %struct.cmb_data** %5, align 8
  %63 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %62, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %6, align 8
  %65 = load %struct.cmb_data*, %struct.cmb_data** %5, align 8
  %66 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.cmb_data*, %struct.cmb_data** %5, align 8
  %70 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @memcpy(i32 %67, i8* %68, i32 %71)
  %73 = call i32 (...) @get_tod_clock()
  %74 = load %struct.cmb_data*, %struct.cmb_data** %5, align 8
  %75 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %56, %52, %15
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i64 @cio_update_schib(%struct.subchannel*) #1

declare dso_local i32 @scsw_fctl(i32*) #1

declare dso_local i32 @scsw_actl(i32*) #1

declare dso_local i32 @scsw_stctl(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @get_tod_clock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
