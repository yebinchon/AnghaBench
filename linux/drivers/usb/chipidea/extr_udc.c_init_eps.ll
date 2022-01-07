; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_init_eps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_init_eps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32, %struct.TYPE_7__, %struct.ci_hw_ep*, %struct.ci_hw_ep*, i32, i32, i32, %struct.ci_hw_ep* }
%struct.TYPE_7__ = type { i32 }
%struct.ci_hw_ep = type { %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, i32*, %struct.ci_hdrc* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32, i32 }

@RX = common dso_local global i32 0, align 4
@TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ep%i%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@usb_ep_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CTRL_PAYLOAD_MAX = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc*)* @init_eps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_eps(%struct.ci_hdrc* %0) #0 {
  %2 = alloca %struct.ci_hdrc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ci_hw_ep*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %160, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %11 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sdiv i32 %12, 2
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %163

15:                                               ; preds = %8
  %16 = load i32, i32* @RX, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %156, %15
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @TX, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %159

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %25 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %23, %26
  %28 = sdiv i32 %27, 2
  %29 = add nsw i32 %22, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %31 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %30, i32 0, i32 7
  %32 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %32, i64 %34
  store %struct.ci_hw_ep* %35, %struct.ci_hw_ep** %7, align 8
  %36 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %37 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @TX, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %45 = call i32 @scnprintf(i32 %38, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %39, i8* %44)
  %46 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %47 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %48 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %47, i32 0, i32 5
  store %struct.ci_hdrc* %46, %struct.ci_hdrc** %48, align 8
  %49 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %50 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %49, i32 0, i32 6
  %51 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %52 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %51, i32 0, i32 4
  store i32* %50, i32** %52, align 8
  %53 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %54 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %57 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %59 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %62 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  store i32 %60, i32* %63, align 8
  %64 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %65 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  store i32* @usb_ep_ops, i32** %66, align 8
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %21
  %70 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %71 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  br label %87

74:                                               ; preds = %21
  %75 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %76 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %80 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i32 1, i32* %82, align 4
  %83 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %84 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %74, %69
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @TX, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %93 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 4
  store i32 1, i32* %95, align 4
  br label %101

96:                                               ; preds = %87
  %97 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %98 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 5
  store i32 1, i32* %100, align 4
  br label %101

101:                                              ; preds = %96, %91
  %102 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %103 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %102, i32 0, i32 0
  %104 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__* %103, i16 zeroext -1)
  %105 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %106 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = call i32 @INIT_LIST_HEAD(i32* %107)
  %109 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %110 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %114 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = call i32* @dma_pool_zalloc(i32 %111, i32 %112, i32* %115)
  %117 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %118 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i32* %116, i32** %119, align 8
  %120 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %121 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %101
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %125, %101
  %129 = load i32, i32* %4, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %128
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @RX, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %137 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %138 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %137, i32 0, i32 3
  store %struct.ci_hw_ep* %136, %struct.ci_hw_ep** %138, align 8
  br label %143

139:                                              ; preds = %131
  %140 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %141 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %142 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %141, i32 0, i32 2
  store %struct.ci_hw_ep* %140, %struct.ci_hw_ep** %142, align 8
  br label %143

143:                                              ; preds = %139, %135
  %144 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %145 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %144, i32 0, i32 0
  %146 = load i16, i16* @CTRL_PAYLOAD_MAX, align 2
  %147 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__* %145, i16 zeroext %146)
  br label %156

148:                                              ; preds = %128
  %149 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %7, align 8
  %150 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %153 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = call i32 @list_add_tail(i32* %151, i32* %154)
  br label %156

156:                                              ; preds = %148, %143
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %5, align 4
  br label %17

159:                                              ; preds = %17
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %4, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %4, align 4
  br label %8

163:                                              ; preds = %8
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @scnprintf(i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__*, i16 zeroext) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
