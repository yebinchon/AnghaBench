; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_uasp_prepare_reqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_uasp_prepare_reqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_uas = type { i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@USBG_USE_STREAMS = common dso_local global i32 0, align 4
@UASP_SS_EP_COMP_NUM_STREAMS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"UASP: endpoint setup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f_uas*)* @uasp_prepare_reqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uasp_prepare_reqs(%struct.f_uas* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f_uas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.f_uas* %0, %struct.f_uas** %3, align 8
  %7 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %8 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @USBG_USE_STREAMS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @UASP_SS_EP_COMP_NUM_STREAMS, align 4
  store i32 %14, i32* %6, align 4
  br label %16

15:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %16

16:                                               ; preds = %15, %13
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %34, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %23 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %24 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @uasp_alloc_stream_res(%struct.f_uas* %22, i32* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %63

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %17

37:                                               ; preds = %17
  %38 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %39 = call i32 @uasp_alloc_cmd(%struct.f_uas* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %60

43:                                               ; preds = %37
  %44 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @uasp_setup_stream_res(%struct.f_uas* %44, i32 %45)
  %47 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %48 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %51 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call i32 @usb_ep_queue(i32 %49, i32 %53, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %60

59:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %86

60:                                               ; preds = %58, %42
  %61 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %62 = call i32 @uasp_free_cmdreq(%struct.f_uas* %61)
  br label %63

63:                                               ; preds = %60, %32
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %79, %66
  %68 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %69 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %70 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = call i32 @uasp_cleanup_one_stream(%struct.f_uas* %68, i32* %75)
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %67
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %67, label %82

82:                                               ; preds = %79
  br label %83

83:                                               ; preds = %82, %63
  %84 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %83, %59
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @uasp_alloc_stream_res(%struct.f_uas*, i32*) #1

declare dso_local i32 @uasp_alloc_cmd(%struct.f_uas*) #1

declare dso_local i32 @uasp_setup_stream_res(%struct.f_uas*, i32) #1

declare dso_local i32 @usb_ep_queue(i32, i32, i32) #1

declare dso_local i32 @uasp_free_cmdreq(%struct.f_uas*) #1

declare dso_local i32 @uasp_cleanup_one_stream(%struct.f_uas*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
