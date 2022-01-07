; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_core.c_ast_vhub_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_core.c_ast_vhub_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_ep = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ast_vhub_req = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i64 }

@.str = private unnamed_addr constant [35 x i8] c"completing request @%p, status %d\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_vhub_done(%struct.ast_vhub_ep* %0, %struct.ast_vhub_req* %1, i32 %2) #0 {
  %4 = alloca %struct.ast_vhub_ep*, align 8
  %5 = alloca %struct.ast_vhub_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ast_vhub_ep* %0, %struct.ast_vhub_ep** %4, align 8
  store %struct.ast_vhub_req* %1, %struct.ast_vhub_req** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %5, align 8
  %9 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %12 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @EPVDBG(%struct.ast_vhub_ep* %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.ast_vhub_req* %12, i32 %13)
  %15 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %5, align 8
  %16 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %15, i32 0, i32 2
  %17 = call i32 @list_del_init(i32* %16)
  %18 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %5, align 8
  %19 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @EINPROGRESS, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %5, align 8
  %28 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  br label %30

30:                                               ; preds = %25, %3
  %31 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %5, align 8
  %32 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %30
  %37 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %38 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %36
  %46 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %47 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %46, i32 0, i32 3
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %5, align 8
  %51 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %50, i32 0, i32 1
  %52 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %53 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @usb_gadget_unmap_request(i32* %49, %struct.TYPE_9__* %51, i32 %55)
  br label %57

57:                                               ; preds = %45, %36
  %58 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %5, align 8
  %59 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %30
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %61
  %65 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %66 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %71 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %70, i32 0, i32 1
  %72 = load %struct.ast_vhub_req*, %struct.ast_vhub_req** %5, align 8
  %73 = getelementptr inbounds %struct.ast_vhub_req, %struct.ast_vhub_req* %72, i32 0, i32 1
  %74 = call i32 @usb_gadget_giveback_request(i32* %71, %struct.TYPE_9__* %73)
  %75 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %4, align 8
  %76 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = call i32 @spin_lock(i32* %78)
  br label %80

80:                                               ; preds = %64, %61
  ret void
}

declare dso_local i32 @EPVDBG(%struct.ast_vhub_ep*, i8*, %struct.ast_vhub_req*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @usb_gadget_unmap_request(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_gadget_giveback_request(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
