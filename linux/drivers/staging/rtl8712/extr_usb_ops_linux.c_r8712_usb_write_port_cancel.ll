; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops_linux.c_r8712_usb_write_port_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops_linux.c_r8712_usb_write_port_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.xmit_buf = type { i64* }

@NR_XMITBUFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_usb_write_port_cancel(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.xmit_buf*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %6 = load %struct._adapter*, %struct._adapter** %2, align 8
  %7 = getelementptr inbounds %struct._adapter, %struct._adapter* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.xmit_buf*
  store %struct.xmit_buf* %10, %struct.xmit_buf** %5, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %44, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @NR_XMITBUFF, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %38, %15
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load %struct.xmit_buf*, %struct.xmit_buf** %5, align 8
  %21 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load %struct.xmit_buf*, %struct.xmit_buf** %5, align 8
  %30 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @usb_kill_urb(i64 %35)
  br label %37

37:                                               ; preds = %28, %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %16

41:                                               ; preds = %16
  %42 = load %struct.xmit_buf*, %struct.xmit_buf** %5, align 8
  %43 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %42, i32 1
  store %struct.xmit_buf* %43, %struct.xmit_buf** %5, align 8
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %11

47:                                               ; preds = %11
  ret void
}

declare dso_local i32 @usb_kill_urb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
