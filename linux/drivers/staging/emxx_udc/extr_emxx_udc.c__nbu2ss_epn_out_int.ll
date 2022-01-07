; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_epn_out_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_epn_out_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { i32 }
%struct.nbu2ss_ep = type { i32 }
%struct.nbu2ss_req = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbu2ss_udc*, %struct.nbu2ss_ep*, %struct.nbu2ss_req*)* @_nbu2ss_epn_out_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_nbu2ss_epn_out_int(%struct.nbu2ss_udc* %0, %struct.nbu2ss_ep* %1, %struct.nbu2ss_req* %2) #0 {
  %4 = alloca %struct.nbu2ss_udc*, align 8
  %5 = alloca %struct.nbu2ss_ep*, align 8
  %6 = alloca %struct.nbu2ss_req*, align 8
  %7 = alloca i32, align 4
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %4, align 8
  store %struct.nbu2ss_ep* %1, %struct.nbu2ss_ep** %5, align 8
  store %struct.nbu2ss_req* %2, %struct.nbu2ss_req** %6, align 8
  %8 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %9 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %5, align 8
  %10 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %6, align 8
  %11 = call i32 @_nbu2ss_epn_out_transfer(%struct.nbu2ss_udc* %8, %struct.nbu2ss_ep* %9, %struct.nbu2ss_req* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %5, align 8
  %16 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @_nbu2ss_ep_done(%struct.nbu2ss_ep* %15, %struct.nbu2ss_req* %16, i32 %17)
  br label %19

19:                                               ; preds = %14, %3
  ret void
}

declare dso_local i32 @_nbu2ss_epn_out_transfer(%struct.nbu2ss_udc*, %struct.nbu2ss_ep*, %struct.nbu2ss_req*) #1

declare dso_local i32 @_nbu2ss_ep_done(%struct.nbu2ss_ep*, %struct.nbu2ss_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
