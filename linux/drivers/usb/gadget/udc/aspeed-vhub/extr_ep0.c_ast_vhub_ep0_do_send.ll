; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_ep0.c_ast_vhub_ep0_do_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_ep0.c_ast_vhub_ep0_do_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_ep = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ast_vhub_req = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"complete send %d/%d\0A\00", align 1
@ep0_state_status = common dso_local global i32 0, align 4
@VHUB_EP0_RX_BUFF_RDY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"send chunk=%d last=%d, req->act=%d mp=%d\0A\00", align 1
@VHUB_EP0_TX_BUFF_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_vhub_ep*, %struct.ast_vhub_req*)* @ast_vhub_ep0_do_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_vhub_ep0_do_send(%struct.ast_vhub_ep* %0, %struct.ast_vhub_req* %1) #0 {
  %3 = alloca %struct.ast_vhub_ep*, align 8
  %4 = alloca %struct.ast_vhub_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ast_vhub_ep* %0, %struct.ast_vhub_ep** %3, align 8
  store %struct.ast_vhub_req* %1, %struct.ast_vhub_req** %4, align 8
  %7 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %8 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %14 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %17 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %15
  %21 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %22 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %23 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %27 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 (%struct.ast_vhub_ep*, i8*, i32, i32, ...) @EPVDBG(%struct.ast_vhub_ep* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %30)
  %32 = load i32, i32* @ep0_state_status, align 4
  %33 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %34 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @VHUB_EP0_RX_BUFF_RDY, align 4
  %37 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %38 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @writel(i32 %36, i32 %40)
  %42 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %43 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %44 = call i32 @ast_vhub_done(%struct.ast_vhub_ep* %42, %struct.ast_vhub_req* %43, i32 0)
  br label %150

45:                                               ; preds = %15
  %46 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %47 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %51 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = zext i32 %53 to i64
  %55 = sub nsw i64 %49, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %59 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ugt i32 %57, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %45
  %64 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %65 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %5, align 4
  br label %85

68:                                               ; preds = %45
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %71 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ult i32 %69, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %68
  %76 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %77 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %75, %68
  %82 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %83 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %75
  br label %85

85:                                               ; preds = %84, %63
  %86 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %89 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %92 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %96 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (%struct.ast_vhub_ep*, i8*, i32, i32, ...) @EPVDBG(%struct.ast_vhub_ep* %86, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %90, i32 %94, i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %85
  %103 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %104 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %102
  %109 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %110 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %113 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %117 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = add i32 %115, %119
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @memcpy(i32 %111, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %108, %102, %85
  %124 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %125 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @vhub_dma_workaround(i32 %126)
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @VHUB_EP0_SET_TX_LEN(i32 %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %132 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @writel(i32 %130, i32 %134)
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @VHUB_EP0_TX_BUFF_RDY, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %140 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @writel(i32 %138, i32 %142)
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %146 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = add i32 %148, %144
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %123, %20
  ret void
}

declare dso_local i32 @EPVDBG(%struct.ast_vhub_ep*, i8*, i32, i32, ...) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @ast_vhub_done(%struct.ast_vhub_ep*, %struct.ast_vhub_req*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @vhub_dma_workaround(i32) #1

declare dso_local i32 @VHUB_EP0_SET_TX_LEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
