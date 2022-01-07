; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_ep0.c_ast_vhub_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_ep0.c_ast_vhub_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_ep = type { i64, %struct.TYPE_9__*, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (%struct.TYPE_10__*, %struct.usb_request*, i32)* }
%struct.usb_request = type { i8*, i32, i32, i32*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.usb_request }

@std_req_stall = common dso_local global i32 0, align 4
@AST_VHUB_EP0_MAX_PACKET = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@std_req_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ast_vhub_reply(%struct.ast_vhub_ep* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ast_vhub_ep*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_request*, align 8
  %9 = alloca i32, align 4
  store %struct.ast_vhub_ep* %0, %struct.ast_vhub_ep** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %5, align 8
  %11 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store %struct.usb_request* %13, %struct.usb_request** %8, align 8
  %14 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %5, align 8
  %15 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @std_req_stall, align 4
  store i32 %22, i32* %4, align 4
  br label %95

23:                                               ; preds = %3
  %24 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %5, align 8
  %25 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @std_req_stall, align 4
  store i32 %34, i32* %4, align 4
  br label %95

35:                                               ; preds = %23
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @AST_VHUB_EP0_MAX_PACKET, align 4
  %38 = icmp sgt i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @std_req_stall, align 4
  store i32 %43, i32* %4, align 4
  br label %95

44:                                               ; preds = %35
  %45 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %46 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @EINPROGRESS, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @WARN_ON(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* @std_req_stall, align 4
  store i32 %55, i32* %4, align 4
  br label %95

56:                                               ; preds = %44
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %59 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %62 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %64 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %63, i32 0, i32 3
  store i32* null, i32** %64, align 8
  %65 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %66 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %65, i32 0, i32 2
  store i32 1, i32* %66, align 4
  %67 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %5, align 8
  %68 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %5, align 8
  %73 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64 (%struct.TYPE_10__*, %struct.usb_request*, i32)*, i64 (%struct.TYPE_10__*, %struct.usb_request*, i32)** %76, align 8
  %78 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %5, align 8
  %79 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %78, i32 0, i32 2
  %80 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %81 = load i32, i32* @GFP_ATOMIC, align 4
  %82 = call i64 %77(%struct.TYPE_10__* %79, %struct.usb_request* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %56
  %85 = load i32, i32* @std_req_stall, align 4
  store i32 %85, i32* %9, align 4
  br label %88

86:                                               ; preds = %56
  %87 = load i32, i32* @std_req_data, align 4
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %5, align 8
  %90 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = call i32 @spin_lock(i32* %92)
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %88, %54, %42, %33, %21
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
