; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_stop_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_stop_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.pn533 = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.pn533*, i32)* }

@.str = private unnamed_addr constant [35 x i8] c"Polling operation was not running\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_dev*)* @pn533_stop_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pn533_stop_poll(%struct.nfc_dev* %0) #0 {
  %2 = alloca %struct.nfc_dev*, align 8
  %3 = alloca %struct.pn533*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %2, align 8
  %4 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %5 = call %struct.pn533* @nfc_get_drvdata(%struct.nfc_dev* %4)
  store %struct.pn533* %5, %struct.pn533** %3, align 8
  %6 = load %struct.pn533*, %struct.pn533** %3, align 8
  %7 = getelementptr inbounds %struct.pn533, %struct.pn533* %6, i32 0, i32 4
  %8 = call i32 @del_timer(i32* %7)
  %9 = load %struct.pn533*, %struct.pn533** %3, align 8
  %10 = getelementptr inbounds %struct.pn533, %struct.pn533* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.pn533*, %struct.pn533** %3, align 8
  %15 = getelementptr inbounds %struct.pn533, %struct.pn533* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.pn533*, %struct.pn533** %3, align 8
  %20 = getelementptr inbounds %struct.pn533, %struct.pn533* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.pn533*, i32)*, i32 (%struct.pn533*, i32)** %22, align 8
  %24 = load %struct.pn533*, %struct.pn533** %3, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 %23(%struct.pn533* %24, i32 %25)
  %27 = load %struct.pn533*, %struct.pn533** %3, align 8
  %28 = getelementptr inbounds %struct.pn533, %struct.pn533* %27, i32 0, i32 0
  %29 = call i32 @flush_delayed_work(i32* %28)
  %30 = load %struct.pn533*, %struct.pn533** %3, align 8
  %31 = call i32 @pn533_poll_reset_mod_list(%struct.pn533* %30)
  br label %32

32:                                               ; preds = %18, %13
  ret void
}

declare dso_local %struct.pn533* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

declare dso_local i32 @pn533_poll_reset_mod_list(%struct.pn533*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
