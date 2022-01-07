; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_dump_mgntframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_dump_mgntframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i64, i64 }
%struct.xmit_frame = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_mgntframe(%struct.adapter* %0, %struct.xmit_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.xmit_frame*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %4, align 8
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %9, %2
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  %17 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %18 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rtw_free_xmitbuf(i32* %16, i32 %19)
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %24 = call i32 @rtw_free_xmitframe(i32* %22, %struct.xmit_frame* %23)
  br label %29

25:                                               ; preds = %9
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %28 = call i32 @rtw_hal_mgnt_xmit(%struct.adapter* %26, %struct.xmit_frame* %27)
  br label %29

29:                                               ; preds = %25, %14
  ret void
}

declare dso_local i32 @rtw_free_xmitbuf(i32*, i32) #1

declare dso_local i32 @rtw_free_xmitframe(i32*, %struct.xmit_frame*) #1

declare dso_local i32 @rtw_hal_mgnt_xmit(%struct.adapter*, %struct.xmit_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
