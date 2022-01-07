; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_ep0.c_ast_vhub_ep0_do_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_ep0.c_ast_vhub_ep0_do_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_ep = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ast_vhub_req = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"receive got=%d remain=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"receiving too much (ovf: %d) !\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@ep0_state_status = common dso_local global i32 0, align 4
@VHUB_EP0_TX_BUFF_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_vhub_ep*, %struct.ast_vhub_req*, i32)* @ast_vhub_ep0_do_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_vhub_ep0_do_receive(%struct.ast_vhub_ep* %0, %struct.ast_vhub_req* %1, i32 %2) #0 {
  %4 = alloca %struct.ast_vhub_ep*, align 8
  %5 = alloca %struct.ast_vhub_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ast_vhub_ep* %0, %struct.ast_vhub_ep** %4, align 8
  store %struct.ast_vhub_req* %1, %struct.ast_vhub_req** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %5, align 8
  %10 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %5, align 8
  %14 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub i32 %12, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @EPVDBG(%struct.ast_vhub_ep* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sub i32 %27, %28
  %30 = call i32 @EPDBG(%struct.ast_vhub_ep* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @EOVERFLOW, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %25, %3
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %5, align 8
  %39 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %5, align 8
  %45 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %5, align 8
  %49 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add i32 %47, %51
  %53 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %54 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @memcpy(i32 %52, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %43, %37, %34
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %5, align 8
  %61 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, %59
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %67 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ult i32 %65, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %58
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %71, %58
  %76 = load i32, i32* @ep0_state_status, align 4
  %77 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %78 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @VHUB_EP0_TX_BUFF_RDY, align 4
  %81 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %82 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @writel(i32 %80, i32 %84)
  %86 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %87 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @ast_vhub_done(%struct.ast_vhub_ep* %86, %struct.ast_vhub_req* %87, i32 %88)
  br label %93

90:                                               ; preds = %71
  %91 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %92 = call i32 @ast_vhub_ep0_rx_prime(%struct.ast_vhub_ep* %91)
  br label %93

93:                                               ; preds = %90, %75
  ret void
}

declare dso_local i32 @EPVDBG(%struct.ast_vhub_ep*, i8*, i32, i32) #1

declare dso_local i32 @EPDBG(%struct.ast_vhub_ep*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @ast_vhub_done(%struct.ast_vhub_ep*, %struct.ast_vhub_req*, i32) #1

declare dso_local i32 @ast_vhub_ep0_rx_prime(%struct.ast_vhub_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
