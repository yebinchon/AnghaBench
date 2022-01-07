; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops_linux.c_r8712_xmit_bh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops_linux.c_r8712_xmit_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, i64, i64, %struct.xmit_priv }
%struct.xmit_priv = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"xmit_bh => driver_stopped or surprise_removed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_xmit_bh(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %struct.xmit_priv*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct._adapter*
  store %struct._adapter* %7, %struct._adapter** %4, align 8
  %8 = load %struct._adapter*, %struct._adapter** %4, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 3
  store %struct.xmit_priv* %9, %struct.xmit_priv** %5, align 8
  %10 = load %struct._adapter*, %struct._adapter** %4, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct._adapter*, %struct._adapter** %4, align 8
  %16 = getelementptr inbounds %struct._adapter, %struct._adapter* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14, %1
  %20 = load %struct._adapter*, %struct._adapter** %4, align 8
  %21 = getelementptr inbounds %struct._adapter, %struct._adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @netdev_err(i32 %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %35

24:                                               ; preds = %14
  %25 = load %struct._adapter*, %struct._adapter** %4, align 8
  %26 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %27 = call i32 @r8712_xmitframe_complete(%struct._adapter* %25, %struct.xmit_priv* %26, i32* null)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %35

31:                                               ; preds = %24
  %32 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %33 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %32, i32 0, i32 0
  %34 = call i32 @tasklet_hi_schedule(i32* %33)
  br label %35

35:                                               ; preds = %31, %30, %19
  ret void
}

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @r8712_xmitframe_complete(%struct._adapter*, %struct.xmit_priv*, i32*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
