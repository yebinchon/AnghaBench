; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-hcd.c_fhci_urb_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-hcd.c_fhci_urb_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32, i32, i32, %struct.urb_priv*, i64, i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.urb_priv = type { i32, %struct.urb_priv* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fhci_hcd = type { i32 }

@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @fhci_urb_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fhci_urb_enqueue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fhci_hcd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.urb_priv*, align 8
  %14 = alloca i64, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %16 = call %struct.fhci_hcd* @hcd_to_fhci(%struct.usb_hcd* %15)
  store %struct.fhci_hcd* %16, %struct.fhci_hcd** %8, align 8
  %17 = load %struct.urb*, %struct.urb** %6, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @usb_pipetype(i32 %20)
  switch i32 %21, label %107 [
    i32 130, label %22
    i32 131, label %23
    i32 128, label %69
    i32 129, label %106
  ]

22:                                               ; preds = %3
  store i32 2, i32* %12, align 4
  br label %23

23:                                               ; preds = %3, %22
  %24 = load %struct.urb*, %struct.urb** %6, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sdiv i32 %26, 4096
  %28 = load i32, i32* %12, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %12, align 4
  %30 = load %struct.urb*, %struct.urb** %6, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = srem i32 %32, 4096
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %35, %23
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  br label %68

44:                                               ; preds = %38
  %45 = load %struct.urb*, %struct.urb** %6, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @URB_ZERO_PACKET, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %44
  %52 = load %struct.urb*, %struct.urb** %6, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.urb*, %struct.urb** %6, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @usb_pipeout(i32 %59)
  %61 = call i32 @usb_maxpacket(i32 %57, i32 %58, i32 %60)
  %62 = srem i32 %54, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %64, %51, %44
  br label %68

68:                                               ; preds = %67, %41
  br label %107

69:                                               ; preds = %3
  %70 = load %struct.urb*, %struct.urb** %6, align 8
  %71 = getelementptr inbounds %struct.urb, %struct.urb* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %175

78:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %102, %78
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.urb*, %struct.urb** %6, align 8
  %82 = getelementptr inbounds %struct.urb, %struct.urb* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %79
  %86 = load %struct.urb*, %struct.urb** %6, align 8
  %87 = getelementptr inbounds %struct.urb, %struct.urb* %86, i32 0, i32 7
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  %93 = load i32, i32* @EXDEV, align 4
  %94 = sub nsw i32 0, %93
  %95 = load %struct.urb*, %struct.urb** %6, align 8
  %96 = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 7
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i32 %94, i32* %101, align 4
  br label %102

102:                                              ; preds = %85
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %79

105:                                              ; preds = %79
  br label %107

106:                                              ; preds = %3
  store i32 1, i32* %12, align 4
  br label %107

107:                                              ; preds = %106, %3, %105, %68
  %108 = load i32, i32* %7, align 4
  %109 = call %struct.urb_priv* @kzalloc(i32 16, i32 %108)
  store %struct.urb_priv* %109, %struct.urb_priv** %13, align 8
  %110 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %111 = icmp ne %struct.urb_priv* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %175

115:                                              ; preds = %107
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call %struct.urb_priv* @kcalloc(i32 %116, i32 16, i32 %117)
  %119 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %120 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %119, i32 0, i32 1
  store %struct.urb_priv* %118, %struct.urb_priv** %120, align 8
  %121 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %122 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %121, i32 0, i32 1
  %123 = load %struct.urb_priv*, %struct.urb_priv** %122, align 8
  %124 = icmp ne %struct.urb_priv* %123, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %115
  %126 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %127 = call i32 @kfree(%struct.urb_priv* %126)
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %175

130:                                              ; preds = %115
  %131 = load %struct.fhci_hcd*, %struct.fhci_hcd** %8, align 8
  %132 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %131, i32 0, i32 0
  %133 = load i64, i64* %14, align 8
  %134 = call i32 @spin_lock_irqsave(i32* %132, i64 %133)
  %135 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %136 = load %struct.urb*, %struct.urb** %6, align 8
  %137 = call i32 @usb_hcd_link_urb_to_ep(%struct.usb_hcd* %135, %struct.urb* %136)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %159

141:                                              ; preds = %130
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %144 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* @EINPROGRESS, align 4
  %146 = sub nsw i32 0, %145
  %147 = load %struct.urb*, %struct.urb** %6, align 8
  %148 = getelementptr inbounds %struct.urb, %struct.urb* %147, i32 0, i32 6
  store i32 %146, i32* %148, align 8
  %149 = load %struct.urb*, %struct.urb** %6, align 8
  %150 = getelementptr inbounds %struct.urb, %struct.urb* %149, i32 0, i32 5
  store i64 0, i64* %150, align 8
  %151 = load %struct.urb*, %struct.urb** %6, align 8
  %152 = getelementptr inbounds %struct.urb, %struct.urb* %151, i32 0, i32 4
  store i64 0, i64* %152, align 8
  %153 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %154 = load %struct.urb*, %struct.urb** %6, align 8
  %155 = getelementptr inbounds %struct.urb, %struct.urb* %154, i32 0, i32 3
  store %struct.urb_priv* %153, %struct.urb_priv** %155, align 8
  %156 = load %struct.fhci_hcd*, %struct.fhci_hcd** %8, align 8
  %157 = load %struct.urb*, %struct.urb** %6, align 8
  %158 = call i32 @fhci_queue_urb(%struct.fhci_hcd* %156, %struct.urb* %157)
  br label %159

159:                                              ; preds = %141, %140
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %164 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %163, i32 0, i32 1
  %165 = load %struct.urb_priv*, %struct.urb_priv** %164, align 8
  %166 = call i32 @kfree(%struct.urb_priv* %165)
  %167 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %168 = call i32 @kfree(%struct.urb_priv* %167)
  br label %169

169:                                              ; preds = %162, %159
  %170 = load %struct.fhci_hcd*, %struct.fhci_hcd** %8, align 8
  %171 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %170, i32 0, i32 0
  %172 = load i64, i64* %14, align 8
  %173 = call i32 @spin_unlock_irqrestore(i32* %171, i64 %172)
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %169, %125, %112, %75
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local %struct.fhci_hcd* @hcd_to_fhci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_pipetype(i32) #1

declare dso_local i32 @usb_maxpacket(i32, i32, i32) #1

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local %struct.urb_priv* @kzalloc(i32, i32) #1

declare dso_local %struct.urb_priv* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.urb_priv*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_hcd_link_urb_to_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @fhci_queue_urb(%struct.fhci_hcd*, %struct.urb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
