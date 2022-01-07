; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_alloc_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_alloc_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i32, i8*, %struct.TYPE_2__, i32, %struct.vnt_rcb**, %struct.vnt_usb_send_context** }
%struct.TYPE_2__ = type { i8* }
%struct.vnt_rcb = type { i32, i32, i8*, %struct.vnt_private* }
%struct.vnt_usb_send_context = type { i32, i32, i8*, %struct.vnt_private* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_INTERRUPT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_private*)* @vnt_alloc_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_alloc_bufs(%struct.vnt_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnt_usb_send_context*, align 8
  %6 = alloca %struct.vnt_rcb*, align 8
  %7 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %51, %1
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %11 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kmalloc(i32 24, i32 %15)
  %17 = bitcast i8* %16 to %struct.vnt_usb_send_context*
  store %struct.vnt_usb_send_context* %17, %struct.vnt_usb_send_context** %5, align 8
  %18 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %19 = icmp ne %struct.vnt_usb_send_context* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %166

23:                                               ; preds = %14
  %24 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %25 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %26 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %25, i32 0, i32 6
  %27 = load %struct.vnt_usb_send_context**, %struct.vnt_usb_send_context*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %27, i64 %29
  store %struct.vnt_usb_send_context* %24, %struct.vnt_usb_send_context** %30, align 8
  %31 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %32 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %33 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %32, i32 0, i32 3
  store %struct.vnt_private* %31, %struct.vnt_private** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %36 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @usb_alloc_urb(i32 0, i32 %37)
  %39 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %40 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %42 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %23
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %166

48:                                               ; preds = %23
  %49 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %50 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %8

54:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %127, %54
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %58 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %130

61:                                               ; preds = %55
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.vnt_rcb* @kzalloc(i32 24, i32 %62)
  %64 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %65 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %64, i32 0, i32 5
  %66 = load %struct.vnt_rcb**, %struct.vnt_rcb*** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.vnt_rcb*, %struct.vnt_rcb** %66, i64 %68
  store %struct.vnt_rcb* %63, %struct.vnt_rcb** %69, align 8
  %70 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %71 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %70, i32 0, i32 5
  %72 = load %struct.vnt_rcb**, %struct.vnt_rcb*** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.vnt_rcb*, %struct.vnt_rcb** %72, i64 %74
  %76 = load %struct.vnt_rcb*, %struct.vnt_rcb** %75, align 8
  %77 = icmp ne %struct.vnt_rcb* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %61
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %163

81:                                               ; preds = %61
  %82 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %83 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %82, i32 0, i32 5
  %84 = load %struct.vnt_rcb**, %struct.vnt_rcb*** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.vnt_rcb*, %struct.vnt_rcb** %84, i64 %86
  %88 = load %struct.vnt_rcb*, %struct.vnt_rcb** %87, align 8
  store %struct.vnt_rcb* %88, %struct.vnt_rcb** %6, align 8
  %89 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %90 = load %struct.vnt_rcb*, %struct.vnt_rcb** %6, align 8
  %91 = getelementptr inbounds %struct.vnt_rcb, %struct.vnt_rcb* %90, i32 0, i32 3
  store %struct.vnt_private* %89, %struct.vnt_private** %91, align 8
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i8* @usb_alloc_urb(i32 0, i32 %92)
  %94 = load %struct.vnt_rcb*, %struct.vnt_rcb** %6, align 8
  %95 = getelementptr inbounds %struct.vnt_rcb, %struct.vnt_rcb* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.vnt_rcb*, %struct.vnt_rcb** %6, align 8
  %97 = getelementptr inbounds %struct.vnt_rcb, %struct.vnt_rcb* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %81
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %163

103:                                              ; preds = %81
  %104 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %105 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dev_alloc_skb(i32 %106)
  %108 = load %struct.vnt_rcb*, %struct.vnt_rcb** %6, align 8
  %109 = getelementptr inbounds %struct.vnt_rcb, %struct.vnt_rcb* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.vnt_rcb*, %struct.vnt_rcb** %6, align 8
  %111 = getelementptr inbounds %struct.vnt_rcb, %struct.vnt_rcb* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %103
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %163

117:                                              ; preds = %103
  %118 = load %struct.vnt_rcb*, %struct.vnt_rcb** %6, align 8
  %119 = getelementptr inbounds %struct.vnt_rcb, %struct.vnt_rcb* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  %120 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %121 = load %struct.vnt_rcb*, %struct.vnt_rcb** %6, align 8
  %122 = call i32 @vnt_submit_rx_urb(%struct.vnt_private* %120, %struct.vnt_rcb* %121)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  br label %163

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %55

130:                                              ; preds = %55
  %131 = load i32, i32* @GFP_KERNEL, align 4
  %132 = call i8* @usb_alloc_urb(i32 0, i32 %131)
  %133 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %134 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %133, i32 0, i32 2
  store i8* %132, i8** %134, align 8
  %135 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %136 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %130
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %4, align 4
  br label %163

142:                                              ; preds = %130
  %143 = load i32, i32* @MAX_INTERRUPT_SIZE, align 4
  %144 = load i32, i32* @GFP_KERNEL, align 4
  %145 = call i8* @kmalloc(i32 %143, i32 %144)
  %146 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %147 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  store i8* %145, i8** %148, align 8
  %149 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %150 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %142
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %4, align 4
  br label %158

157:                                              ; preds = %142
  store i32 0, i32* %2, align 4
  br label %170

158:                                              ; preds = %154
  %159 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %160 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %159, i32 0, i32 2
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @usb_free_urb(i8* %161)
  br label %163

163:                                              ; preds = %158, %139, %125, %114, %100, %78
  %164 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %165 = call i32 @vnt_free_rx_bufs(%struct.vnt_private* %164)
  br label %166

166:                                              ; preds = %163, %45, %20
  %167 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %168 = call i32 @vnt_free_tx_bufs(%struct.vnt_private* %167)
  %169 = load i32, i32* %4, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %166, %157
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.vnt_rcb* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_alloc_skb(i32) #1

declare dso_local i32 @vnt_submit_rx_urb(%struct.vnt_private*, %struct.vnt_rcb*) #1

declare dso_local i32 @usb_free_urb(i8*) #1

declare dso_local i32 @vnt_free_rx_bufs(%struct.vnt_private*) #1

declare dso_local i32 @vnt_free_tx_bufs(%struct.vnt_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
