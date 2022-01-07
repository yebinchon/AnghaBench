; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_get_ssqd_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_get_ssqd_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.qdio_ssqd_desc = type { i32 }
%struct.subchannel_id = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"get ssqd:%4x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_get_ssqd_desc(%struct.ccw_device* %0, %struct.qdio_ssqd_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca %struct.qdio_ssqd_desc*, align 8
  %6 = alloca %struct.subchannel_id, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store %struct.qdio_ssqd_desc* %1, %struct.qdio_ssqd_desc** %5, align 8
  %7 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %8 = icmp ne %struct.ccw_device* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %11 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %25

17:                                               ; preds = %9
  %18 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %19 = call i32 @ccw_device_get_schid(%struct.ccw_device* %18, %struct.subchannel_id* %6)
  %20 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DBF_EVENT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.qdio_ssqd_desc*, %struct.qdio_ssqd_desc** %5, align 8
  %24 = call i32 @qdio_setup_get_ssqd(i32* null, %struct.subchannel_id* %6, %struct.qdio_ssqd_desc* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %17, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @ccw_device_get_schid(%struct.ccw_device*, %struct.subchannel_id*) #1

declare dso_local i32 @DBF_EVENT(i8*, i32) #1

declare dso_local i32 @qdio_setup_get_ssqd(i32*, %struct.subchannel_id*, %struct.qdio_ssqd_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
