; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_xmit_linux.c_rtw_os_xmit_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_xmit_linux.c_rtw_os_xmit_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.xmit_frame = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_os_xmit_complete(%struct.adapter* %0, %struct.xmit_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.xmit_frame*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %4, align 8
  %5 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %6 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %12 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @rtw_os_pkt_complete(%struct.adapter* %10, i32* %13)
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %17 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  ret void
}

declare dso_local i32 @rtw_os_pkt_complete(%struct.adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
