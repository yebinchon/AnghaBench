; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_tx_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_tx_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32 }
%struct.wsm_buf = type { i32 }
%struct.wsm_tx_confirm = type { i8*, i8*, i32, i8*, i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.wsm_buf*, i32)* @wsm_tx_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsm_tx_confirm(%struct.cw1200_common* %0, %struct.wsm_buf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cw1200_common*, align 8
  %6 = alloca %struct.wsm_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wsm_tx_confirm, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %5, align 8
  store %struct.wsm_buf* %1, %struct.wsm_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.wsm_buf*, %struct.wsm_buf** %6, align 8
  %10 = call i8* @WSM_GET32(%struct.wsm_buf* %9)
  %11 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %8, i32 0, i32 6
  store i8* %10, i8** %11, align 8
  %12 = load %struct.wsm_buf*, %struct.wsm_buf** %6, align 8
  %13 = call i8* @WSM_GET32(%struct.wsm_buf* %12)
  %14 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %8, i32 0, i32 5
  store i8* %13, i8** %14, align 8
  %15 = load %struct.wsm_buf*, %struct.wsm_buf** %6, align 8
  %16 = call i8* @WSM_GET8(%struct.wsm_buf* %15)
  %17 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %8, i32 0, i32 4
  store i8* %16, i8** %17, align 8
  %18 = load %struct.wsm_buf*, %struct.wsm_buf** %6, align 8
  %19 = call i8* @WSM_GET8(%struct.wsm_buf* %18)
  %20 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %8, i32 0, i32 3
  store i8* %19, i8** %20, align 8
  %21 = load %struct.wsm_buf*, %struct.wsm_buf** %6, align 8
  %22 = call i32 @WSM_GET16(%struct.wsm_buf* %21)
  %23 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %8, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = load %struct.wsm_buf*, %struct.wsm_buf** %6, align 8
  %25 = call i8* @WSM_GET32(%struct.wsm_buf* %24)
  %26 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %8, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load %struct.wsm_buf*, %struct.wsm_buf** %6, align 8
  %28 = call i8* @WSM_GET32(%struct.wsm_buf* %27)
  %29 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %8, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @cw1200_tx_confirm_cb(%struct.cw1200_common* %30, i32 %31, %struct.wsm_tx_confirm* %8)
  store i32 0, i32* %4, align 4
  br label %37

33:                                               ; No predecessors!
  %34 = call i32 @WARN_ON(i32 1)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %3
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i8* @WSM_GET32(%struct.wsm_buf*) #1

declare dso_local i8* @WSM_GET8(%struct.wsm_buf*) #1

declare dso_local i32 @WSM_GET16(%struct.wsm_buf*) #1

declare dso_local i32 @cw1200_tx_confirm_cb(%struct.cw1200_common*, i32, %struct.wsm_tx_confirm*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
