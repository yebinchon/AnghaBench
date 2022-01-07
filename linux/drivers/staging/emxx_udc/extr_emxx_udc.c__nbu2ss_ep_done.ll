; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_ep_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_ep_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_ep = type { i64, i64, i32, i32, i64, %struct.nbu2ss_udc* }
%struct.nbu2ss_udc = type { i32 }
%struct.nbu2ss_req = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 (i32*, %struct.TYPE_2__*)* }

@ECONNRESET = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbu2ss_ep*, %struct.nbu2ss_req*, i32)* @_nbu2ss_ep_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_nbu2ss_ep_done(%struct.nbu2ss_ep* %0, %struct.nbu2ss_req* %1, i32 %2) #0 {
  %4 = alloca %struct.nbu2ss_ep*, align 8
  %5 = alloca %struct.nbu2ss_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nbu2ss_udc*, align 8
  store %struct.nbu2ss_ep* %0, %struct.nbu2ss_ep** %4, align 8
  store %struct.nbu2ss_req* %1, %struct.nbu2ss_req** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %9 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %8, i32 0, i32 5
  %10 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %9, align 8
  store %struct.nbu2ss_udc* %10, %struct.nbu2ss_udc** %7, align 8
  %11 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %12 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %11, i32 0, i32 1
  %13 = call i32 @list_del_init(i32* %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @ECONNRESET, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %7, align 8
  %20 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %21 = call i32 @_nbu2ss_fifo_flush(%struct.nbu2ss_udc* %19, %struct.nbu2ss_ep* %20)
  br label %22

22:                                               ; preds = %18, %3
  %23 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %24 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @EINPROGRESS, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %36 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  br label %38

38:                                               ; preds = %33, %22
  %39 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %40 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %7, align 8
  %45 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %46 = call i32 @_nbu2ss_epn_set_stall(%struct.nbu2ss_udc* %44, %struct.nbu2ss_ep* %45)
  br label %56

47:                                               ; preds = %38
  %48 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %49 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %48, i32 0, i32 3
  %50 = call i32 @list_empty(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %54 = call i32 @_nbu2ss_restert_transfer(%struct.nbu2ss_ep* %53)
  br label %55

55:                                               ; preds = %52, %47
  br label %56

56:                                               ; preds = %55, %43
  %57 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %7, align 8
  %58 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %61 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32 (i32*, %struct.TYPE_2__*)*, i32 (i32*, %struct.TYPE_2__*)** %62, align 8
  %64 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %65 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %64, i32 0, i32 2
  %66 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %67 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %66, i32 0, i32 0
  %68 = call i32 %63(i32* %65, %struct.TYPE_2__* %67)
  %69 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %7, align 8
  %70 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %69, i32 0, i32 0
  %71 = call i32 @spin_lock(i32* %70)
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @_nbu2ss_fifo_flush(%struct.nbu2ss_udc*, %struct.nbu2ss_ep*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @_nbu2ss_epn_set_stall(%struct.nbu2ss_udc*, %struct.nbu2ss_ep*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @_nbu2ss_restert_transfer(%struct.nbu2ss_ep*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
