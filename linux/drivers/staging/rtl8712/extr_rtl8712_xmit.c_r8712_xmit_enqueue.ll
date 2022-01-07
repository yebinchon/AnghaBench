; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_xmit.c_r8712_xmit_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_xmit.c_r8712_xmit_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }
%struct.xmit_frame = type { i32* }

@_FAIL = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_xmit_enqueue(%struct._adapter* %0, %struct.xmit_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %struct.xmit_frame*, align 8
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %5, align 8
  %6 = load %struct._adapter*, %struct._adapter** %4, align 8
  %7 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %8 = call i64 @r8712_xmit_classifier(%struct._adapter* %6, %struct.xmit_frame* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %12 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load i32, i32* @_FAIL, align 4
  store i32 %13, i32* %3, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @_SUCCESS, align 4
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i64 @r8712_xmit_classifier(%struct._adapter*, %struct.xmit_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
