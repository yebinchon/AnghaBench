; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_uasp_alloc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_uasp_alloc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_uas = type { %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.f_uas*, i32, i64, i32 }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@uasp_cmd_complete = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f_uas*)* @uasp_alloc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uasp_alloc_cmd(%struct.f_uas* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f_uas*, align 8
  store %struct.f_uas* %0, %struct.f_uas** %3, align 8
  %4 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %5 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %4, i32 0, i32 1
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.TYPE_8__* @usb_ep_alloc_request(%struct.TYPE_7__* %6, i32 %7)
  %9 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %10 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %11, align 8
  %12 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %13 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %76

18:                                               ; preds = %1
  %19 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %20 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i64 @kmalloc(i32 %23, i32 %24)
  %26 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %27 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i64 %25, i64* %28, align 8
  %29 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %30 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %18
  br label %67

35:                                               ; preds = %18
  %36 = load i32, i32* @uasp_cmd_complete, align 4
  %37 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %38 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  store i32 %36, i32* %41, align 8
  %42 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %43 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %47 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  store i64 %45, i64* %50, align 8
  %51 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %52 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %57 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i32 %55, i32* %60, align 8
  %61 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %62 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %63 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store %struct.f_uas* %61, %struct.f_uas** %66, align 8
  store i32 0, i32* %2, align 4
  br label %79

67:                                               ; preds = %34
  %68 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %69 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %72 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = call i32 @usb_ep_free_request(%struct.TYPE_7__* %70, %struct.TYPE_8__* %74)
  br label %76

76:                                               ; preds = %67, %17
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %76, %35
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_8__* @usb_ep_alloc_request(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @usb_ep_free_request(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
