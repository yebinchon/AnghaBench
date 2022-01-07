; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_bot_prepare_reqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_bot_prepare_reqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_uas = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.f_uas*, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_8__ = type { %struct.TYPE_11__*, %struct.TYPE_12__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@US_BULK_CS_WRAP_LEN = common dso_local global i32 0, align 4
@bot_status_complete = common dso_local global i32 0, align 4
@US_BULK_CS_SIGN = common dso_local global i32 0, align 4
@bot_cmd_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"BOT: endpoint setup failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f_uas*)* @bot_prepare_reqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bot_prepare_reqs(%struct.f_uas* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f_uas*, align 8
  %4 = alloca i32, align 4
  store %struct.f_uas* %0, %struct.f_uas** %3, align 8
  %5 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %6 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %5, i32 0, i32 1
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @usb_ep_alloc_request(%struct.TYPE_10__* %7, i32 %8)
  %10 = bitcast i8* %9 to %struct.TYPE_11__*
  %11 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %12 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %11, i32 0, i32 0
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %12, align 8
  %13 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %14 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %195

18:                                               ; preds = %1
  %19 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %20 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %19, i32 0, i32 3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @usb_ep_alloc_request(%struct.TYPE_10__* %21, i32 %22)
  %24 = bitcast i8* %23 to %struct.TYPE_11__*
  %25 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %26 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %25, i32 0, i32 2
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %26, align 8
  %27 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %28 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %27, i32 0, i32 2
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %18
  br label %185

32:                                               ; preds = %18
  %33 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %34 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %33, i32 0, i32 3
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @usb_ep_alloc_request(%struct.TYPE_10__* %35, i32 %36)
  %38 = bitcast i8* %37 to %struct.TYPE_11__*
  %39 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %40 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %41, align 8
  %42 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %43 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = icmp ne %struct.TYPE_11__* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %32
  br label %175

48:                                               ; preds = %32
  %49 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %50 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @usb_ep_alloc_request(%struct.TYPE_10__* %51, i32 %52)
  %54 = bitcast i8* %53 to %struct.TYPE_11__*
  %55 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %56 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %57, align 8
  %58 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %59 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = icmp ne %struct.TYPE_11__* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %48
  br label %163

64:                                               ; preds = %48
  %65 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %66 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %69 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %72, align 8
  %73 = load i32, i32* @US_BULK_CS_WRAP_LEN, align 4
  %74 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %75 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  store i32 %73, i32* %78, align 8
  %79 = load i32, i32* @bot_status_complete, align 4
  %80 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %81 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  store i32 %79, i32* %84, align 8
  %85 = load i32, i32* @US_BULK_CS_SIGN, align 4
  %86 = call i32 @cpu_to_le32(i32 %85)
  %87 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %88 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 8
  %91 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %92 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %91, i32 0, i32 3
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call %struct.TYPE_12__* @kmalloc(i32 %95, i32 %96)
  %98 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %99 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  store %struct.TYPE_12__* %97, %struct.TYPE_12__** %100, align 8
  %101 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %102 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = icmp ne %struct.TYPE_12__* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %64
  br label %154

107:                                              ; preds = %64
  %108 = load i32, i32* @bot_cmd_complete, align 4
  %109 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %110 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 3
  store i32 %108, i32* %113, align 8
  %114 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %115 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %119 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  store %struct.TYPE_12__* %117, %struct.TYPE_12__** %122, align 8
  %123 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %124 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %123, i32 0, i32 3
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %129 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  store i32 %127, i32* %132, align 8
  %133 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %134 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %135 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  store %struct.f_uas* %133, %struct.f_uas** %138, align 8
  %139 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %140 = call i32 @bot_enqueue_cmd_cbw(%struct.f_uas* %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %107
  br label %145

144:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %199

145:                                              ; preds = %143
  %146 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %147 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = call i32 @kfree(%struct.TYPE_12__* %149)
  %151 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %152 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %153, align 8
  br label %154

154:                                              ; preds = %145, %106
  %155 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %156 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %155, i32 0, i32 1
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %159 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = call i32 @usb_ep_free_request(%struct.TYPE_10__* %157, %struct.TYPE_11__* %161)
  br label %163

163:                                              ; preds = %154, %63
  %164 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %165 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %164, i32 0, i32 3
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %168 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = call i32 @usb_ep_free_request(%struct.TYPE_10__* %166, %struct.TYPE_11__* %170)
  %172 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %173 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %174, align 8
  br label %175

175:                                              ; preds = %163, %47
  %176 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %177 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %176, i32 0, i32 3
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %180 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %179, i32 0, i32 2
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %180, align 8
  %182 = call i32 @usb_ep_free_request(%struct.TYPE_10__* %178, %struct.TYPE_11__* %181)
  %183 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %184 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %183, i32 0, i32 2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %184, align 8
  br label %185

185:                                              ; preds = %175, %31
  %186 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %187 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %186, i32 0, i32 1
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %190 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %189, i32 0, i32 0
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %190, align 8
  %192 = call i32 @usb_ep_free_request(%struct.TYPE_10__* %188, %struct.TYPE_11__* %191)
  %193 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %194 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %193, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %194, align 8
  br label %195

195:                                              ; preds = %185, %17
  %196 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %197 = load i32, i32* @ENOMEM, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %195, %144
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i8* @usb_ep_alloc_request(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.TYPE_12__* @kmalloc(i32, i32) #1

declare dso_local i32 @bot_enqueue_cmd_cbw(%struct.f_uas*) #1

declare dso_local i32 @kfree(%struct.TYPE_12__*) #1

declare dso_local i32 @usb_ep_free_request(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
