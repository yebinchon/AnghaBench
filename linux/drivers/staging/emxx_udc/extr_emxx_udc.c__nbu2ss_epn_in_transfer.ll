; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_epn_in_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_epn_in_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nbu2ss_ep = type { i64 }
%struct.nbu2ss_req = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EPN_IN_EMPTY = common dso_local global i64 0, align 8
@EPN_IN_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbu2ss_udc*, %struct.nbu2ss_ep*, %struct.nbu2ss_req*)* @_nbu2ss_epn_in_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nbu2ss_epn_in_transfer(%struct.nbu2ss_udc* %0, %struct.nbu2ss_ep* %1, %struct.nbu2ss_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nbu2ss_udc*, align 8
  %6 = alloca %struct.nbu2ss_ep*, align 8
  %7 = alloca %struct.nbu2ss_req*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %5, align 8
  store %struct.nbu2ss_ep* %1, %struct.nbu2ss_ep** %6, align 8
  store %struct.nbu2ss_req* %2, %struct.nbu2ss_req** %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %6, align 8
  %13 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %85

19:                                               ; preds = %3
  %20 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %6, align 8
  %21 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %22, 1
  store i64 %23, i64* %8, align 8
  %24 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %5, align 8
  %25 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i64 @_nbu2ss_readl(i32* %31)
  store i64 %32, i64* %11, align 8
  %33 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %34 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %19
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @EPN_IN_EMPTY, align 8
  %41 = and i64 %39, %40
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %85

44:                                               ; preds = %38
  br label %52

45:                                               ; preds = %19
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @EPN_IN_FULL, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %85

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %44
  %53 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %54 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %58 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub i64 %56, %60
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp ugt i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %52
  %65 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %5, align 8
  %66 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %6, align 8
  %67 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @_nbu2ss_epn_in_data(%struct.nbu2ss_udc* %65, %struct.nbu2ss_ep* %66, %struct.nbu2ss_req* %67, i64 %68)
  store i32 %69, i32* %10, align 4
  br label %83

70:                                               ; preds = %52
  %71 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %72 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %5, align 8
  %78 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %6, align 8
  %79 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @_nbu2ss_zero_len_pkt(%struct.nbu2ss_udc* %77, i64 %80)
  br label %82

82:                                               ; preds = %76, %70
  br label %83

83:                                               ; preds = %82, %64
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %50, %43, %16
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @_nbu2ss_readl(i32*) #1

declare dso_local i32 @_nbu2ss_epn_in_data(%struct.nbu2ss_udc*, %struct.nbu2ss_ep*, %struct.nbu2ss_req*, i64) #1

declare dso_local i32 @_nbu2ss_zero_len_pkt(%struct.nbu2ss_udc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
