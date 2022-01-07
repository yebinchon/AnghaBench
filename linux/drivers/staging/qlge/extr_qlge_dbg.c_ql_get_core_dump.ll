; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_dbg.c_ql_get_core_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_dbg.c_ql_get_core_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Don't own firmware!\0A\00", align 1
@ifup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Force Coredump can only be done from interface that is up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*)* @ql_get_core_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_get_core_dump(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  %3 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %4 = call i32 @ql_own_firmware(%struct.ql_adapter* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %8 = load i32, i32* @drv, align 4
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @netif_err(%struct.ql_adapter* %7, i32 %8, i32 %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @netif_running(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %21 = load i32, i32* @ifup, align 4
  %22 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @netif_err(%struct.ql_adapter* %20, i32 %21, i32 %24, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %29

26:                                               ; preds = %13
  %27 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %28 = call i32 @ql_queue_fw_error(%struct.ql_adapter* %27)
  br label %29

29:                                               ; preds = %26, %19, %6
  ret void
}

declare dso_local i32 @ql_own_firmware(%struct.ql_adapter*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @ql_queue_fw_error(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
