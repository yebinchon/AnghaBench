; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_uasp_alloc_stream_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_uasp_alloc_stream_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_uas = type { i32, i32, i32 }
%struct.uas_stream = type { i32*, i32*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f_uas*, %struct.uas_stream*)* @uasp_alloc_stream_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uasp_alloc_stream_res(%struct.f_uas* %0, %struct.uas_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f_uas*, align 8
  %5 = alloca %struct.uas_stream*, align 8
  store %struct.f_uas* %0, %struct.f_uas** %4, align 8
  store %struct.uas_stream* %1, %struct.uas_stream** %5, align 8
  %6 = load %struct.f_uas*, %struct.f_uas** %4, align 8
  %7 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @usb_ep_alloc_request(i32 %8, i32 %9)
  %11 = load %struct.uas_stream*, %struct.uas_stream** %5, align 8
  %12 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %11, i32 0, i32 2
  store i8* %10, i8** %12, align 8
  %13 = load %struct.uas_stream*, %struct.uas_stream** %5, align 8
  %14 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %67

18:                                               ; preds = %2
  %19 = load %struct.f_uas*, %struct.f_uas** %4, align 8
  %20 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @usb_ep_alloc_request(i32 %21, i32 %22)
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.uas_stream*, %struct.uas_stream** %5, align 8
  %26 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.uas_stream*, %struct.uas_stream** %5, align 8
  %28 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %18
  br label %57

32:                                               ; preds = %18
  %33 = load %struct.f_uas*, %struct.f_uas** %4, align 8
  %34 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @usb_ep_alloc_request(i32 %35, i32 %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.uas_stream*, %struct.uas_stream** %5, align 8
  %40 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load %struct.uas_stream*, %struct.uas_stream** %5, align 8
  %42 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %32
  br label %47

46:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %70

47:                                               ; preds = %45
  %48 = load %struct.f_uas*, %struct.f_uas** %4, align 8
  %49 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.uas_stream*, %struct.uas_stream** %5, align 8
  %52 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @usb_ep_free_request(i32 %50, i32* %53)
  %55 = load %struct.uas_stream*, %struct.uas_stream** %5, align 8
  %56 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %47, %31
  %58 = load %struct.f_uas*, %struct.f_uas** %4, align 8
  %59 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.uas_stream*, %struct.uas_stream** %5, align 8
  %62 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @usb_ep_free_request(i32 %60, i32* %63)
  %65 = load %struct.uas_stream*, %struct.uas_stream** %5, align 8
  %66 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %57, %17
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %46
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i8* @usb_ep_alloc_request(i32, i32) #1

declare dso_local i32 @usb_ep_free_request(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
