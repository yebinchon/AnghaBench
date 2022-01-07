; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_epn.c_ast_vhub_epn_dispose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_epn.c_ast_vhub_epn_dispose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.ast_vhub_ep = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__, i32*, i32, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32** }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Releasing endpoint\0A\00", align 1
@AST_VHUB_EPn_MAX_PACKET = common dso_local global i64 0, align 8
@AST_VHUB_DESCS_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*)* @ast_vhub_epn_dispose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_vhub_epn_dispose(%struct.usb_ep* %0) #0 {
  %2 = alloca %struct.usb_ep*, align 8
  %3 = alloca %struct.ast_vhub_ep*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %2, align 8
  %4 = load %struct.usb_ep*, %struct.usb_ep** %2, align 8
  %5 = call %struct.ast_vhub_ep* @to_ast_ep(%struct.usb_ep* %4)
  store %struct.ast_vhub_ep* %5, %struct.ast_vhub_ep** %3, align 8
  %6 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %7 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %6, i32 0, i32 1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %12 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i1 [ true, %1 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %73

22:                                               ; preds = %16
  %23 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %24 = call i32 @EPDBG(%struct.ast_vhub_ep* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %26 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = call i32 @list_del_init(i32* %27)
  %29 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %30 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %35 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %33, i64 %38
  store i32* null, i32** %39, align 8
  %40 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %41 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @kfree(i32* %43)
  %45 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %46 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %49 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %48, i32 0, i32 5
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* @AST_VHUB_EPn_MAX_PACKET, align 8
  %55 = load i32, i32* @AST_VHUB_DESCS_COUNT, align 4
  %56 = mul nsw i32 8, %55
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %54, %57
  %59 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %60 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %63 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dma_free_coherent(i32* %53, i64 %58, i32* %61, i32 %64)
  %66 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %67 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %66, i32 0, i32 3
  store i32* null, i32** %67, align 8
  %68 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %69 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  %71 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %3, align 8
  %72 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %71, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %72, align 8
  br label %73

73:                                               ; preds = %22, %21
  ret void
}

declare dso_local %struct.ast_vhub_ep* @to_ast_ep(%struct.usb_ep*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @EPDBG(%struct.ast_vhub_ep*, i8*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
