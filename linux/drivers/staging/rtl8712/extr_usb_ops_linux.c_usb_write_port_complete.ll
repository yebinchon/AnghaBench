; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops_linux.c_usb_write_port_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops_linux.c_usb_write_port_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64 }
%struct.xmit_frame = type { i32*, %struct.urb**, %struct.pkt_attrib, %struct._adapter*, %struct.xmit_buf* }
%struct.pkt_attrib = type { i32 }
%struct._adapter = type { i32, i64, %struct.xmit_priv }
%struct.xmit_priv = type { i32, i32, i32, i32, i32, i32 }
%struct.xmit_buf = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"r8712u: pipe error: (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @usb_write_port_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_write_port_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xmit_frame*, align 8
  %5 = alloca %struct.xmit_buf*, align 8
  %6 = alloca %struct._adapter*, align 8
  %7 = alloca %struct.xmit_priv*, align 8
  %8 = alloca %struct.pkt_attrib*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.xmit_frame*
  store %struct.xmit_frame* %12, %struct.xmit_frame** %4, align 8
  %13 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %14 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %13, i32 0, i32 4
  %15 = load %struct.xmit_buf*, %struct.xmit_buf** %14, align 8
  store %struct.xmit_buf* %15, %struct.xmit_buf** %5, align 8
  %16 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %17 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %16, i32 0, i32 3
  %18 = load %struct._adapter*, %struct._adapter** %17, align 8
  store %struct._adapter* %18, %struct._adapter** %6, align 8
  %19 = load %struct._adapter*, %struct._adapter** %6, align 8
  %20 = getelementptr inbounds %struct._adapter, %struct._adapter* %19, i32 0, i32 2
  store %struct.xmit_priv* %20, %struct.xmit_priv** %7, align 8
  %21 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %22 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %21, i32 0, i32 2
  store %struct.pkt_attrib* %22, %struct.pkt_attrib** %8, align 8
  %23 = load %struct.pkt_attrib*, %struct.pkt_attrib** %8, align 8
  %24 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %42 [
    i32 1, label %26
    i32 2, label %26
    i32 4, label %31
    i32 5, label %31
    i32 6, label %36
    i32 7, label %36
    i32 0, label %41
    i32 3, label %41
  ]

26:                                               ; preds = %1, %1
  %27 = load %struct.xmit_priv*, %struct.xmit_priv** %7, align 8
  %28 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  br label %47

31:                                               ; preds = %1, %1
  %32 = load %struct.xmit_priv*, %struct.xmit_priv** %7, align 8
  %33 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  br label %47

36:                                               ; preds = %1, %1
  %37 = load %struct.xmit_priv*, %struct.xmit_priv** %7, align 8
  %38 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  br label %47

41:                                               ; preds = %1, %1
  br label %42

42:                                               ; preds = %1, %41
  %43 = load %struct.xmit_priv*, %struct.xmit_priv** %7, align 8
  %44 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %36, %31, %26
  %48 = load %struct.xmit_priv*, %struct.xmit_priv** %7, align 8
  %49 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 4
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %73, %47
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 8
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  %56 = load %struct.urb*, %struct.urb** %2, align 8
  %57 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %58 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %57, i32 0, i32 1
  %59 = load %struct.urb**, %struct.urb*** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.urb*, %struct.urb** %59, i64 %61
  %63 = load %struct.urb*, %struct.urb** %62, align 8
  %64 = icmp eq %struct.urb* %56, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %55
  %66 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %67 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 0, i32* %71, align 4
  br label %76

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %52

76:                                               ; preds = %65, %52
  %77 = load %struct._adapter*, %struct._adapter** %6, align 8
  %78 = getelementptr inbounds %struct._adapter, %struct._adapter* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %105

82:                                               ; preds = %76
  %83 = load %struct.urb*, %struct.urb** %2, align 8
  %84 = getelementptr inbounds %struct.urb, %struct.urb* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  switch i32 %85, label %87 [
    i32 0, label %86
  ]

86:                                               ; preds = %82
  br label %95

87:                                               ; preds = %82
  %88 = load %struct._adapter*, %struct._adapter** %6, align 8
  %89 = getelementptr inbounds %struct._adapter, %struct._adapter* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.urb*, %struct.urb** %2, align 8
  %92 = getelementptr inbounds %struct.urb, %struct.urb* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @netdev_warn(i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %87, %86
  %96 = load %struct.xmit_priv*, %struct.xmit_priv** %7, align 8
  %97 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %98 = call i32 @r8712_free_xmitframe_ex(%struct.xmit_priv* %96, %struct.xmit_frame* %97)
  %99 = load %struct.xmit_priv*, %struct.xmit_priv** %7, align 8
  %100 = load %struct.xmit_buf*, %struct.xmit_buf** %5, align 8
  %101 = call i32 @r8712_free_xmitbuf(%struct.xmit_priv* %99, %struct.xmit_buf* %100)
  %102 = load %struct.xmit_priv*, %struct.xmit_priv** %7, align 8
  %103 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %102, i32 0, i32 0
  %104 = call i32 @tasklet_hi_schedule(i32* %103)
  br label %105

105:                                              ; preds = %95, %81
  ret void
}

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

declare dso_local i32 @r8712_free_xmitframe_ex(%struct.xmit_priv*, %struct.xmit_frame*) #1

declare dso_local i32 @r8712_free_xmitbuf(%struct.xmit_priv*, %struct.xmit_buf*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
