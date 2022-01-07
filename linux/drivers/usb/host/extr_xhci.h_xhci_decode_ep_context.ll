; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.h_xhci_decode_ep_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.h_xhci_decode_ep_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xhci_decode_ep_context.str = internal global [1024 x i8] zeroinitializer, align 16
@EP_STATE_MASK = common dso_local global i32 0, align 4
@EP_HAS_LSA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"State %s mult %d max P. Streams %d %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"LSA \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"interval %d us max ESIT payload %d CErr %d \00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Type %s %sburst %d maxp %d deq %016llx \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"HID\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"avg trb len %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32, i32)* @xhci_decode_ep_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xhci_decode_ep_context(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @CTX_TO_MAX_ESIT_PAYLOAD_HI(i32 %22)
  %24 = shl i32 %23, 16
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @CTX_TO_MAX_ESIT_PAYLOAD(i32 %25)
  %27 = or i32 %24, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @EP_STATE_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @CTX_TO_EP_MAXPSTREAMS(i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @CTX_TO_EP_INTERVAL(i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @CTX_TO_EP_MULT(i32 %35)
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @EP_HAS_LSA, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 6
  %47 = ashr i32 %46, 1
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @CTX_TO_EP_TYPE(i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 128
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @CTX_TO_MAX_BURST(i32 %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @MAX_PACKET_DECODED(i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @EP_AVG_TRB_LENGTH(i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i8* @xhci_ep_state_string(i32 %62)
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %20, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @xhci_decode_ep_context.str, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %63, i32 %64, i32 %65, i8* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @xhci_decode_ep_context.str, i64 0, i64 0), i64 %72
  %74 = load i32, i32* %15, align 4
  %75 = shl i32 1, %74
  %76 = mul nsw i32 %75, 125
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %18, align 4
  %79 = call i32 (i8*, i8*, ...) @sprintf(i8* %73, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @xhci_decode_ep_context.str, i64 0, i64 0), i64 %83
  %85 = load i32, i32* %16, align 4
  %86 = call i8* @xhci_ep_type_string(i32 %85)
  %87 = load i32, i32* %21, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 (i8*, i8*, ...) @sprintf(i8* %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %86, i8* %90, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @xhci_decode_ep_context.str, i64 0, i64 0), i64 %98
  %100 = load i32, i32* %12, align 4
  %101 = call i32 (i8*, i8*, ...) @sprintf(i8* %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %9, align 4
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @xhci_decode_ep_context.str, i64 0, i64 0)
}

declare dso_local i32 @CTX_TO_MAX_ESIT_PAYLOAD_HI(i32) #1

declare dso_local i32 @CTX_TO_MAX_ESIT_PAYLOAD(i32) #1

declare dso_local i32 @CTX_TO_EP_MAXPSTREAMS(i32) #1

declare dso_local i32 @CTX_TO_EP_INTERVAL(i32) #1

declare dso_local i32 @CTX_TO_EP_MULT(i32) #1

declare dso_local i32 @CTX_TO_EP_TYPE(i32) #1

declare dso_local i32 @CTX_TO_MAX_BURST(i32) #1

declare dso_local i32 @MAX_PACKET_DECODED(i32) #1

declare dso_local i32 @EP_AVG_TRB_LENGTH(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @xhci_ep_state_string(i32) #1

declare dso_local i8* @xhci_ep_type_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
