; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_diag.c_dasd_diag_dump_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_diag.c_dasd_diag_dump_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.dasd_ccw_req = type { i32 }
%struct.irb = type { i32 }

@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"dump sense not available for DIAG data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*, %struct.dasd_ccw_req*, %struct.irb*)* @dasd_diag_dump_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_diag_dump_sense(%struct.dasd_device* %0, %struct.dasd_ccw_req* %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_ccw_req*, align 8
  %6 = alloca %struct.irb*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store %struct.dasd_ccw_req* %1, %struct.dasd_ccw_req** %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  %7 = load i32, i32* @DBF_WARNING, align 4
  %8 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %9 = call i32 @DBF_DEV_EVENT(i32 %7, %struct.dasd_device* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
