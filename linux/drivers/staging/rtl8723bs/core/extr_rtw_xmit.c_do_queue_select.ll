; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_do_queue_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_do_queue_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.pkt_attrib = type { i32, i32 }

@_module_rtl871x_xmit_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"### do_queue_select priority =%d , qsel = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.pkt_attrib*)* @do_queue_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_queue_select(%struct.adapter* %0, %struct.pkt_attrib* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.pkt_attrib*, align 8
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.pkt_attrib* %1, %struct.pkt_attrib** %4, align 8
  %6 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %7 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %10 = load i32, i32* @_drv_info_, align 4
  %11 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %12 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @RT_TRACE(i32 %9, i32 %10, i8* %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %20 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret void
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
