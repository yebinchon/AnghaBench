; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_query_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_query_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ism_dev = type { i32 }
%union.ism_qi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ISM_QUERY_INFO = common dso_local global i32 0, align 4
@ism_debug_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"query info\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ism_dev*)* @query_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_info(%struct.ism_dev* %0) #0 {
  %2 = alloca %struct.ism_dev*, align 8
  %3 = alloca %union.ism_qi, align 4
  store %struct.ism_dev* %0, %struct.ism_dev** %2, align 8
  %4 = call i32 @memset(%union.ism_qi* %3, i32 0, i32 8)
  %5 = load i32, i32* @ISM_QUERY_INFO, align 4
  %6 = bitcast %union.ism_qi* %3 to %struct.TYPE_4__*
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 %5, i32* %8, align 4
  %9 = bitcast %union.ism_qi* %3 to %struct.TYPE_4__*
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 8, i32* %11, align 4
  %12 = load %struct.ism_dev*, %struct.ism_dev** %2, align 8
  %13 = call i64 @ism_cmd(%struct.ism_dev* %12, %union.ism_qi* %3)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @ism_debug_info, align 4
  %18 = call i32 @debug_text_event(i32 %17, i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ism_debug_info, align 4
  %20 = bitcast %union.ism_qi* %3 to i32*
  %21 = call i32 @debug_event(i32 %19, i32 3, i32* %20, i32 4)
  br label %22

22:                                               ; preds = %16, %15
  ret i32 0
}

declare dso_local i32 @memset(%union.ism_qi*, i32, i32) #1

declare dso_local i64 @ism_cmd(%struct.ism_dev*, %union.ism_qi*) #1

declare dso_local i32 @debug_text_event(i32, i32, i8*) #1

declare dso_local i32 @debug_event(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
