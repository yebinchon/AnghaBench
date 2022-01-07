; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_next_fifo_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_next_fifo_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_ep = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.usba_request = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@DBG_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s: submit_transaction, req %p (length %d)%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c", done\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SET_STA = common dso_local global i32 0, align 4
@USBA_TX_PK_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usba_ep*, %struct.usba_request*)* @next_fifo_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next_fifo_transaction(%struct.usba_ep* %0, %struct.usba_request* %1) #0 {
  %3 = alloca %struct.usba_ep*, align 8
  %4 = alloca %struct.usba_request*, align 8
  %5 = alloca i32, align 4
  store %struct.usba_ep* %0, %struct.usba_ep** %3, align 8
  store %struct.usba_request* %1, %struct.usba_request** %4, align 8
  %6 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %7 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %11 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %9, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %16 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %19 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ugt i32 %17, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %25 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %29 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  br label %47

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %33 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %31, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %39 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %45 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %37, %30
  br label %47

47:                                               ; preds = %46, %23
  %48 = load i32, i32* @DBG_QUEUE, align 4
  %49 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %50 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %56 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %61 = call i32 @DBG(i32 %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %52, %struct.usba_request* %53, i32 %54, i8* %60)
  %62 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %63 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %66 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %70 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add i32 %68, %72
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @memcpy_toio(i32 %64, i32 %73, i32 %74)
  %76 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %77 = load i32, i32* @SET_STA, align 4
  %78 = load i32, i32* @USBA_TX_PK_RDY, align 4
  %79 = call i32 @usba_ep_writel(%struct.usba_ep* %76, i32 %77, i32 %78)
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.usba_request*, %struct.usba_request** %4, align 8
  %82 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add i32 %84, %80
  store i32 %85, i32* %83, align 4
  ret void
}

declare dso_local i32 @DBG(i32, i8*, i32, %struct.usba_request*, i32, i8*) #1

declare dso_local i32 @memcpy_toio(i32, i32, i32) #1

declare dso_local i32 @usba_ep_writel(%struct.usba_ep*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
