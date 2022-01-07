; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_event.c_qtnf_event_handle_scan_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_event.c_qtnf_event_handle_scan_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { i32 }
%struct.qlink_event_scan_complete = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"MAC%u: payload is too short\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QLINK_SCAN_ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_wmac*, %struct.qlink_event_scan_complete*, i32)* @qtnf_event_handle_scan_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_event_handle_scan_complete(%struct.qtnf_wmac* %0, %struct.qlink_event_scan_complete* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtnf_wmac*, align 8
  %6 = alloca %struct.qlink_event_scan_complete*, align 8
  %7 = alloca i32, align 4
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %5, align 8
  store %struct.qlink_event_scan_complete* %1, %struct.qlink_event_scan_complete** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 4
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %13 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %27

18:                                               ; preds = %3
  %19 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %20 = load %struct.qlink_event_scan_complete*, %struct.qlink_event_scan_complete** %6, align 8
  %21 = getelementptr inbounds %struct.qlink_event_scan_complete, %struct.qlink_event_scan_complete* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  %24 = load i32, i32* @QLINK_SCAN_ABORTED, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @qtnf_scan_done(%struct.qtnf_wmac* %19, i32 %25)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %18, %11
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @qtnf_scan_done(%struct.qtnf_wmac*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
