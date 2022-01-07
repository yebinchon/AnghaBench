; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_alloc_fw_event_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_alloc_fw_event_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_event_work = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fw_event_work* (i32)* @alloc_fw_event_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fw_event_work* @alloc_fw_event_work(i32 %0) #0 {
  %2 = alloca %struct.fw_event_work*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_event_work*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = add i64 4, %6
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.fw_event_work* @kzalloc(i32 %8, i32 %9)
  store %struct.fw_event_work* %10, %struct.fw_event_work** %4, align 8
  %11 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %12 = icmp ne %struct.fw_event_work* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.fw_event_work* null, %struct.fw_event_work** %2, align 8
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %16 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %15, i32 0, i32 0
  %17 = call i32 @kref_init(i32* %16)
  %18 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  store %struct.fw_event_work* %18, %struct.fw_event_work** %2, align 8
  br label %19

19:                                               ; preds = %14, %13
  %20 = load %struct.fw_event_work*, %struct.fw_event_work** %2, align 8
  ret %struct.fw_event_work* %20
}

declare dso_local %struct.fw_event_work* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
