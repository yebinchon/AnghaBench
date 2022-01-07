; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_upload_pspoll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_upload_pspoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32 }
%struct.wsm_template_frame = type { i32, i32, i32 }

@WSM_FRAME_TYPE_PS_POLL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*)* @cw1200_upload_pspoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_upload_pspoll(%struct.cw1200_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wsm_template_frame, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %5, i32 0, i32 0
  store i32 255, i32* %6, align 4
  %7 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %5, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %5, i32 0, i32 2
  %9 = load i32, i32* @WSM_FRAME_TYPE_PS_POLL, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %11 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %14 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ieee80211_pspoll_get(i32 %12, i32 %15)
  %17 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %5, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %5, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %31

24:                                               ; preds = %1
  %25 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %26 = call i32 @wsm_set_template_frame(%struct.cw1200_common* %25, %struct.wsm_template_frame* %5)
  store i32 %26, i32* %4, align 4
  %27 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %5, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_kfree_skb(i32 %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %24, %21
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @ieee80211_pspoll_get(i32, i32) #1

declare dso_local i32 @wsm_set_template_frame(%struct.cw1200_common*, %struct.wsm_template_frame*) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
