; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_epn.c_ast_vhub_epn_kick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_epn.c_ast_vhub_epn_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_ep = type { i32, %struct.TYPE_6__, i64, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ast_vhub_req = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"kick req %p act=%d/%d chunk=%d last=%d\0A\00", align 1
@AST_VHUB_EP_DESC_BASE = common dso_local global i64 0, align 8
@AST_VHUB_EP_DESC_STATUS = common dso_local global i64 0, align 8
@VHUB_EP_DMA_SINGLE_KICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_vhub_ep*, %struct.ast_vhub_req*)* @ast_vhub_epn_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_vhub_epn_kick(%struct.ast_vhub_ep* %0, %struct.ast_vhub_req* %1) #0 {
  %3 = alloca %struct.ast_vhub_ep*, align 8
  %4 = alloca %struct.ast_vhub_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ast_vhub_ep* %0, %struct.ast_vhub_ep** %3, align 8
  store %struct.ast_vhub_req* %1, %struct.ast_vhub_req** %4, align 8
  %8 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %9 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %13 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %17 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %25 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ugt i32 %23, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %31 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  br label %51

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %37 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %35, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %34
  %42 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %43 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41, %34
  %48 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %49 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %41
  br label %51

51:                                               ; preds = %50, %29
  %52 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %53 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %58 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @EPVDBG(%struct.ast_vhub_ep* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.ast_vhub_req* %53, i32 %54, i32 %55, i32 %56, i32 %59)
  %61 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %62 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %100, label %66

66:                                               ; preds = %51
  %67 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %68 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %66
  %73 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %74 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %77 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = zext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @memcpy(i64 %75, i64 %82, i32 %83)
  %85 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %86 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @vhub_dma_workaround(i64 %87)
  br label %89

89:                                               ; preds = %72, %66
  %90 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %91 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %94 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @AST_VHUB_EP_DESC_BASE, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel(i32 %92, i64 %98)
  br label %126

100:                                              ; preds = %51
  %101 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %102 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %108 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @vhub_dma_workaround(i64 %110)
  br label %112

112:                                              ; preds = %106, %100
  %113 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %114 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = add i32 %116, %117
  %119 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %120 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @AST_VHUB_EP_DESC_BASE, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writel(i32 %118, i64 %124)
  br label %126

126:                                              ; preds = %112, %89
  %127 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %4, align 8
  %128 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @VHUB_EP_DMA_SET_TX_SIZE(i32 %129)
  %131 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %132 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @AST_VHUB_EP_DESC_STATUS, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @writel(i32 %130, i64 %136)
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @VHUB_EP_DMA_SET_TX_SIZE(i32 %138)
  %140 = load i32, i32* @VHUB_EP_DMA_SINGLE_KICK, align 4
  %141 = or i32 %139, %140
  %142 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %143 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @AST_VHUB_EP_DESC_STATUS, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writel(i32 %141, i64 %147)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @EPVDBG(%struct.ast_vhub_ep*, i8*, %struct.ast_vhub_req*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @vhub_dma_workaround(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @VHUB_EP_DMA_SET_TX_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
