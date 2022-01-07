; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_waiting_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_waiting_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32 }
%struct.timer_list = type { i32 }

@waiting_timer = common dso_local global i32 0, align 4
@DBG_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"waiting_timeout: Queue woken up by timer. acb=%p\0A\00", align 1
@acb = common dso_local global %struct.AdapterCtlBlk* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @waiting_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @waiting_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.AdapterCtlBlk*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %6 = ptrtoint %struct.AdapterCtlBlk* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @waiting_timer, align 4
  %9 = call %struct.AdapterCtlBlk* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.AdapterCtlBlk* %9, %struct.AdapterCtlBlk** %4, align 8
  %10 = load i32, i32* @DBG_1, align 4
  %11 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %12 = call i32 @dprintkdbg(i32 %10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.AdapterCtlBlk* %11)
  %13 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %14 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @DC395x_LOCK_IO(i32 %15, i64 %16)
  %18 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %19 = call i32 @waiting_process_next(%struct.AdapterCtlBlk* %18)
  %20 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %21 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @DC395x_UNLOCK_IO(i32 %22, i64 %23)
  ret void
}

declare dso_local %struct.AdapterCtlBlk* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @dprintkdbg(i32, i8*, %struct.AdapterCtlBlk*) #1

declare dso_local i32 @DC395x_LOCK_IO(i32, i64) #1

declare dso_local i32 @waiting_process_next(%struct.AdapterCtlBlk*) #1

declare dso_local i32 @DC395x_UNLOCK_IO(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
