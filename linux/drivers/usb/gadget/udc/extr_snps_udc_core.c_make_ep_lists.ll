; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_make_ep_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_make_ep_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }

@UDC_EPIN_STATUS_IX = common dso_local global i64 0, align 8
@UDC_EPIN_IX = common dso_local global i64 0, align 8
@UDC_EPOUT_IX = common dso_local global i64 0, align 8
@UDC_EPIN_SMALLINT_BUFF_SIZE = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@UDC_FS_EPIN_BUFF_SIZE = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@hs_tx_buf = common dso_local global i32 0, align 4
@UDC_RXFIFO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udc*)* @make_ep_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_ep_lists(%struct.udc* %0) #0 {
  %2 = alloca %struct.udc*, align 8
  store %struct.udc* %0, %struct.udc** %2, align 8
  %3 = load %struct.udc*, %struct.udc** %2, align 8
  %4 = getelementptr inbounds %struct.udc, %struct.udc* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = call i32 @INIT_LIST_HEAD(i32* %5)
  %7 = load %struct.udc*, %struct.udc** %2, align 8
  %8 = getelementptr inbounds %struct.udc, %struct.udc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = load i64, i64* @UDC_EPIN_STATUS_IX, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.udc*, %struct.udc** %2, align 8
  %15 = getelementptr inbounds %struct.udc, %struct.udc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = call i32 @list_add_tail(i32* %13, i32* %16)
  %18 = load %struct.udc*, %struct.udc** %2, align 8
  %19 = getelementptr inbounds %struct.udc, %struct.udc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load i64, i64* @UDC_EPIN_IX, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.udc*, %struct.udc** %2, align 8
  %26 = getelementptr inbounds %struct.udc, %struct.udc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = call i32 @list_add_tail(i32* %24, i32* %27)
  %29 = load %struct.udc*, %struct.udc** %2, align 8
  %30 = getelementptr inbounds %struct.udc, %struct.udc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i64, i64* @UDC_EPOUT_IX, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.udc*, %struct.udc** %2, align 8
  %37 = getelementptr inbounds %struct.udc, %struct.udc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = call i32 @list_add_tail(i32* %35, i32* %38)
  %40 = load i32, i32* @UDC_EPIN_SMALLINT_BUFF_SIZE, align 4
  %41 = load %struct.udc*, %struct.udc** %2, align 8
  %42 = getelementptr inbounds %struct.udc, %struct.udc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i64, i64* @UDC_EPIN_STATUS_IX, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %40, i32* %46, align 4
  %47 = load %struct.udc*, %struct.udc** %2, align 8
  %48 = getelementptr inbounds %struct.udc, %struct.udc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @USB_SPEED_FULL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %1
  %54 = load i32, i32* @UDC_FS_EPIN_BUFF_SIZE, align 4
  %55 = load %struct.udc*, %struct.udc** %2, align 8
  %56 = getelementptr inbounds %struct.udc, %struct.udc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i64, i64* @UDC_EPIN_IX, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %54, i32* %60, align 4
  br label %77

61:                                               ; preds = %1
  %62 = load %struct.udc*, %struct.udc** %2, align 8
  %63 = getelementptr inbounds %struct.udc, %struct.udc* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @USB_SPEED_HIGH, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load i32, i32* @hs_tx_buf, align 4
  %70 = load %struct.udc*, %struct.udc** %2, align 8
  %71 = getelementptr inbounds %struct.udc, %struct.udc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i64, i64* @UDC_EPIN_IX, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %69, i32* %75, align 4
  br label %76

76:                                               ; preds = %68, %61
  br label %77

77:                                               ; preds = %76, %53
  %78 = load i32, i32* @UDC_RXFIFO_SIZE, align 4
  %79 = load %struct.udc*, %struct.udc** %2, align 8
  %80 = getelementptr inbounds %struct.udc, %struct.udc* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i64, i64* @UDC_EPOUT_IX, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 %78, i32* %84, align 4
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
