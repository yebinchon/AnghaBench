; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_acm.c_acm_complete_set_line_coding.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_acm.c_acm_complete_set_line_coding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { %struct.f_acm* }
%struct.f_acm = type { %struct.usb_cdc_line_coding, i32, %struct.TYPE_7__ }
%struct.usb_cdc_line_coding = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.usb_request = type { i32, i32, %struct.usb_cdc_line_coding* }

@.str = private unnamed_addr constant [32 x i8] c"acm ttyGS%d completion, err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"acm ttyGS%d short resp, len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @acm_complete_set_line_coding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acm_complete_set_line_coding(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.f_acm*, align 8
  %6 = alloca %struct.usb_composite_dev*, align 8
  %7 = alloca %struct.usb_cdc_line_coding*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %8 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %9 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %8, i32 0, i32 0
  %10 = load %struct.f_acm*, %struct.f_acm** %9, align 8
  store %struct.f_acm* %10, %struct.f_acm** %5, align 8
  %11 = load %struct.f_acm*, %struct.f_acm** %5, align 8
  %12 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %16, align 8
  store %struct.usb_composite_dev* %17, %struct.usb_composite_dev** %6, align 8
  %18 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %19 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %24 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.f_acm*, %struct.f_acm** %5, align 8
  %28 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %31 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_dbg(i32* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  br label %63

34:                                               ; preds = %2
  %35 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %36 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 4
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %42 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.f_acm*, %struct.f_acm** %5, align 8
  %46 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %49 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_dbg(i32* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %53 = call i32 @usb_ep_set_halt(%struct.usb_ep* %52)
  br label %63

54:                                               ; preds = %34
  %55 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %56 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %55, i32 0, i32 2
  %57 = load %struct.usb_cdc_line_coding*, %struct.usb_cdc_line_coding** %56, align 8
  store %struct.usb_cdc_line_coding* %57, %struct.usb_cdc_line_coding** %7, align 8
  %58 = load %struct.f_acm*, %struct.f_acm** %5, align 8
  %59 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %58, i32 0, i32 0
  %60 = load %struct.usb_cdc_line_coding*, %struct.usb_cdc_line_coding** %7, align 8
  %61 = bitcast %struct.usb_cdc_line_coding* %59 to i8*
  %62 = bitcast %struct.usb_cdc_line_coding* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 4 %62, i64 4, i1 false)
  br label %63

63:                                               ; preds = %22, %54, %40
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @usb_ep_set_halt(%struct.usb_ep*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
