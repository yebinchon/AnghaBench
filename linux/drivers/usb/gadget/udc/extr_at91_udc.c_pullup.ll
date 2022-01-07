; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_at91_udc.c_pullup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_at91_udc.c_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_udc = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.at91_udc*, i32)* }

@.str = private unnamed_addr constant [10 x i8] c"%sactive\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@AT91_UDP_ICR = common dso_local global i32 0, align 4
@AT91_UDP_RXRSM = common dso_local global i32 0, align 4
@AT91_UDP_TXVC = common dso_local global i32 0, align 4
@AT91_UDP_IDR = common dso_local global i32 0, align 4
@AT91_UDP_TXVC_TXVDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91_udc*, i32)* @pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pullup(%struct.at91_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.at91_udc*, align 8
  %4 = alloca i32, align 4
  store %struct.at91_udc* %0, %struct.at91_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %6 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %11 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %2
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %14, %9
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %20 = call i32 @DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %15
  %24 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %25 = call i32 @clk_on(%struct.at91_udc* %24)
  %26 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %27 = load i32, i32* @AT91_UDP_ICR, align 4
  %28 = load i32, i32* @AT91_UDP_RXRSM, align 4
  %29 = call i32 @at91_udp_write(%struct.at91_udc* %26, i32 %27, i32 %28)
  %30 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %31 = load i32, i32* @AT91_UDP_TXVC, align 4
  %32 = call i32 @at91_udp_write(%struct.at91_udc* %30, i32 %31, i32 0)
  br label %46

33:                                               ; preds = %15
  %34 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %35 = call i32 @stop_activity(%struct.at91_udc* %34)
  %36 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %37 = load i32, i32* @AT91_UDP_IDR, align 4
  %38 = load i32, i32* @AT91_UDP_RXRSM, align 4
  %39 = call i32 @at91_udp_write(%struct.at91_udc* %36, i32 %37, i32 %38)
  %40 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %41 = load i32, i32* @AT91_UDP_TXVC, align 4
  %42 = load i32, i32* @AT91_UDP_TXVC_TXVDIS, align 4
  %43 = call i32 @at91_udp_write(%struct.at91_udc* %40, i32 %41, i32 %42)
  %44 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %45 = call i32 @clk_off(%struct.at91_udc* %44)
  br label %46

46:                                               ; preds = %33, %23
  %47 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %48 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = icmp ne %struct.TYPE_2__* %49, null
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %53 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.at91_udc*, i32)*, i32 (%struct.at91_udc*, i32)** %55, align 8
  %57 = icmp ne i32 (%struct.at91_udc*, i32)* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %60 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct.at91_udc*, i32)*, i32 (%struct.at91_udc*, i32)** %62, align 8
  %64 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 %63(%struct.at91_udc* %64, i32 %65)
  br label %67

67:                                               ; preds = %58, %51, %46
  ret void
}

declare dso_local i32 @DBG(i8*, i8*) #1

declare dso_local i32 @clk_on(%struct.at91_udc*) #1

declare dso_local i32 @at91_udp_write(%struct.at91_udc*, i32, i32) #1

declare dso_local i32 @stop_activity(%struct.at91_udc*) #1

declare dso_local i32 @clk_off(%struct.at91_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
