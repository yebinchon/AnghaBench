; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_start_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_start_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { i32 }
%struct.nbu2ss_ep = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nbu2ss_req = type { i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbu2ss_udc*, %struct.nbu2ss_ep*, %struct.nbu2ss_req*, i32)* @_nbu2ss_start_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nbu2ss_start_transfer(%struct.nbu2ss_udc* %0, %struct.nbu2ss_ep* %1, %struct.nbu2ss_req* %2, i32 %3) #0 {
  %5 = alloca %struct.nbu2ss_udc*, align 8
  %6 = alloca %struct.nbu2ss_ep*, align 8
  %7 = alloca %struct.nbu2ss_req*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %5, align 8
  store %struct.nbu2ss_ep* %1, %struct.nbu2ss_ep** %6, align 8
  store %struct.nbu2ss_req* %2, %struct.nbu2ss_req** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %13 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %15 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %17 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %23 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  br label %46

24:                                               ; preds = %4
  %25 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %26 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %6, align 8
  %30 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = srem i32 %28, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %37 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %41 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %45

42:                                               ; preds = %24
  %43 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %44 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %35
  br label %46

46:                                               ; preds = %45, %21
  %47 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %6, align 8
  %48 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %5, align 8
  %53 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %66 [
    i32 130, label %55
    i32 128, label %59
    i32 129, label %63
  ]

55:                                               ; preds = %51
  %56 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %5, align 8
  %57 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %58 = call i32 @_nbu2ss_ep0_in_transfer(%struct.nbu2ss_udc* %56, %struct.nbu2ss_req* %57)
  store i32 %58, i32* %9, align 4
  br label %67

59:                                               ; preds = %51
  %60 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %5, align 8
  %61 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %62 = call i32 @_nbu2ss_ep0_out_transfer(%struct.nbu2ss_udc* %60, %struct.nbu2ss_req* %61)
  store i32 %62, i32* %9, align 4
  br label %67

63:                                               ; preds = %51
  %64 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %5, align 8
  %65 = call i32 @EP0_send_NULL(%struct.nbu2ss_udc* %64, i32 1)
  store i32 %65, i32* %9, align 4
  br label %67

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66, %63, %59, %55
  br label %89

68:                                               ; preds = %46
  %69 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %6, align 8
  %70 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @USB_DIR_OUT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %5, align 8
  %79 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %6, align 8
  %80 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %81 = call i32 @_nbu2ss_epn_out_transfer(%struct.nbu2ss_udc* %78, %struct.nbu2ss_ep* %79, %struct.nbu2ss_req* %80)
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %77, %74
  br label %88

83:                                               ; preds = %68
  %84 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %5, align 8
  %85 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %6, align 8
  %86 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %87 = call i32 @_nbu2ss_epn_in_transfer(%struct.nbu2ss_udc* %84, %struct.nbu2ss_ep* %85, %struct.nbu2ss_req* %86)
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %83, %82
  br label %89

89:                                               ; preds = %88, %67
  %90 = load i32, i32* %9, align 4
  ret i32 %90
}

declare dso_local i32 @_nbu2ss_ep0_in_transfer(%struct.nbu2ss_udc*, %struct.nbu2ss_req*) #1

declare dso_local i32 @_nbu2ss_ep0_out_transfer(%struct.nbu2ss_udc*, %struct.nbu2ss_req*) #1

declare dso_local i32 @EP0_send_NULL(%struct.nbu2ss_udc*, i32) #1

declare dso_local i32 @_nbu2ss_epn_out_transfer(%struct.nbu2ss_udc*, %struct.nbu2ss_ep*, %struct.nbu2ss_req*) #1

declare dso_local i32 @_nbu2ss_epn_in_transfer(%struct.nbu2ss_udc*, %struct.nbu2ss_ep*, %struct.nbu2ss_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
