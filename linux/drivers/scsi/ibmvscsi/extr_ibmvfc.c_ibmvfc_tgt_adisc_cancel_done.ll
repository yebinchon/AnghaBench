; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_adisc_cancel_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_adisc_cancel_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { %struct.ibmvfc_target*, %struct.ibmvfc_host* }
%struct.ibmvfc_target = type { i32 }
%struct.ibmvfc_host = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"ADISC cancel complete\0A\00", align 1
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_tgt_adisc_cancel_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_tgt_adisc_cancel_done(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.ibmvfc_host*, align 8
  %4 = alloca %struct.ibmvfc_target*, align 8
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %2, align 8
  %5 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %6 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %5, i32 0, i32 1
  %7 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %6, align 8
  store %struct.ibmvfc_host* %7, %struct.ibmvfc_host** %3, align 8
  %8 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %9 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %8, i32 0, i32 0
  %10 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %9, align 8
  store %struct.ibmvfc_target* %10, %struct.ibmvfc_target** %4, align 8
  %11 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %4, align 8
  %12 = call i32 @tgt_dbg(%struct.ibmvfc_target* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %14 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %18 = call i32 @ibmvfc_free_event(%struct.ibmvfc_event* %17)
  %19 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %4, align 8
  %20 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %19, i32 0, i32 0
  %21 = load i32, i32* @ibmvfc_release_tgt, align 4
  %22 = call i32 @kref_put(i32* %20, i32 %21)
  %23 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %24 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %23, i32 0, i32 0
  %25 = call i32 @wake_up(i32* %24)
  ret void
}

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*) #1

declare dso_local i32 @ibmvfc_free_event(%struct.ibmvfc_event*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
