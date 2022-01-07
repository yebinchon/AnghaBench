; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_set_txfifo_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_set_txfifo_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc_ep = type { i32, i32, %struct.udc*, i32 }
%struct.udc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UDC_EPIN_BUFF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udc_ep*)* @udc_set_txfifo_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udc_set_txfifo_addr(%struct.udc_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.udc_ep*, align 8
  %4 = alloca %struct.udc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.udc_ep* %0, %struct.udc_ep** %3, align 8
  %7 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %8 = icmp ne %struct.udc_ep* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %11 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %68

17:                                               ; preds = %9
  %18 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %19 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %18, i32 0, i32 2
  %20 = load %struct.udc*, %struct.udc** %19, align 8
  store %struct.udc* %20, %struct.udc** %4, align 8
  %21 = load %struct.udc*, %struct.udc** %4, align 8
  %22 = getelementptr inbounds %struct.udc, %struct.udc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %25 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %64, %17
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %29 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %26
  %33 = load %struct.udc*, %struct.udc** %4, align 8
  %34 = getelementptr inbounds %struct.udc, %struct.udc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %63

42:                                               ; preds = %32
  %43 = load %struct.udc*, %struct.udc** %4, align 8
  %44 = getelementptr inbounds %struct.udc, %struct.udc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i64 @readl(i32* %51)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i32, i32* @UDC_EPIN_BUFF_SIZE, align 4
  %55 = call i64 @AMD_GETBITS(i64 %53, i32 %54)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %58 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  br label %63

63:                                               ; preds = %42, %32
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %26

67:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %14
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @readl(i32*) #1

declare dso_local i64 @AMD_GETBITS(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
