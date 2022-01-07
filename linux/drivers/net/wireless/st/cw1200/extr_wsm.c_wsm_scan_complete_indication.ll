; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_scan_complete_indication.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_scan_complete_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32 }
%struct.wsm_buf = type { i32 }
%struct.wsm_scan_complete = type { i8*, i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.wsm_buf*)* @wsm_scan_complete_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsm_scan_complete_indication(%struct.cw1200_common* %0, %struct.wsm_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.wsm_buf*, align 8
  %6 = alloca %struct.wsm_scan_complete, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.wsm_buf* %1, %struct.wsm_buf** %5, align 8
  %7 = load %struct.wsm_buf*, %struct.wsm_buf** %5, align 8
  %8 = call i32 @WSM_GET32(%struct.wsm_buf* %7)
  %9 = getelementptr inbounds %struct.wsm_scan_complete, %struct.wsm_scan_complete* %6, i32 0, i32 2
  store i32 %8, i32* %9, align 8
  %10 = load %struct.wsm_buf*, %struct.wsm_buf** %5, align 8
  %11 = call i8* @WSM_GET8(%struct.wsm_buf* %10)
  %12 = getelementptr inbounds %struct.wsm_scan_complete, %struct.wsm_scan_complete* %6, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = load %struct.wsm_buf*, %struct.wsm_buf** %5, align 8
  %14 = call i8* @WSM_GET8(%struct.wsm_buf* %13)
  %15 = getelementptr inbounds %struct.wsm_scan_complete, %struct.wsm_scan_complete* %6, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  %16 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %17 = call i32 @cw1200_scan_complete_cb(%struct.cw1200_common* %16, %struct.wsm_scan_complete* %6)
  store i32 0, i32* %3, align 4
  br label %21

18:                                               ; No predecessors!
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @WSM_GET32(%struct.wsm_buf*) #1

declare dso_local i8* @WSM_GET8(%struct.wsm_buf*) #1

declare dso_local i32 @cw1200_scan_complete_cb(%struct.cw1200_common*, %struct.wsm_scan_complete*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
