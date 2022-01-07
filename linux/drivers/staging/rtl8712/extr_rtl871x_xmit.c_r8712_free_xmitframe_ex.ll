; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_r8712_free_xmitframe_ex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_r8712_free_xmitframe_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xmit_priv = type { i32 }
%struct.xmit_frame = type { i64 }

@DATA_FRAMETAG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_free_xmitframe_ex(%struct.xmit_priv* %0, %struct.xmit_frame* %1) #0 {
  %3 = alloca %struct.xmit_priv*, align 8
  %4 = alloca %struct.xmit_frame*, align 8
  store %struct.xmit_priv* %0, %struct.xmit_priv** %3, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %4, align 8
  %5 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %6 = icmp eq %struct.xmit_frame* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %18

8:                                                ; preds = %2
  %9 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %10 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DATA_FRAMETAG, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %16 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %17 = call i32 @r8712_free_xmitframe(%struct.xmit_priv* %15, %struct.xmit_frame* %16)
  br label %18

18:                                               ; preds = %7, %14, %8
  ret void
}

declare dso_local i32 @r8712_free_xmitframe(%struct.xmit_priv*, %struct.xmit_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
