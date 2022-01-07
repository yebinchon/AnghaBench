; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_uasp_cleanup_old_alt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_uasp_cleanup_old_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_uas = type { i32, i32*, i32, i32, i32, i32 }

@USBG_ENABLED = common dso_local global i32 0, align 4
@UASP_SS_EP_COMP_NUM_STREAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f_uas*)* @uasp_cleanup_old_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uasp_cleanup_old_alt(%struct.f_uas* %0) #0 {
  %2 = alloca %struct.f_uas*, align 8
  %3 = alloca i32, align 4
  store %struct.f_uas* %0, %struct.f_uas** %2, align 8
  %4 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %5 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @USBG_ENABLED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %13 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @usb_ep_disable(i32 %14)
  %16 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %17 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @usb_ep_disable(i32 %18)
  %20 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %21 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usb_ep_disable(i32 %22)
  %24 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %25 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @usb_ep_disable(i32 %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %41, %11
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @UASP_SS_EP_COMP_NUM_STREAMS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %34 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %35 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @uasp_cleanup_one_stream(%struct.f_uas* %33, i32* %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %28

44:                                               ; preds = %28
  %45 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %46 = call i32 @uasp_free_cmdreq(%struct.f_uas* %45)
  br label %47

47:                                               ; preds = %44, %10
  ret void
}

declare dso_local i32 @usb_ep_disable(i32) #1

declare dso_local i32 @uasp_cleanup_one_stream(%struct.f_uas*, i32*) #1

declare dso_local i32 @uasp_free_cmdreq(%struct.f_uas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
