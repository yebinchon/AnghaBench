; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_alloc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_alloc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_queue = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.nvmet_tcp_cmd = type { %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, %struct.TYPE_7__, i8*, %struct.TYPE_6__, %struct.nvmet_tcp_queue* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_tcp_queue*, %struct.nvmet_tcp_cmd*)* @nvmet_tcp_alloc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_tcp_alloc_cmd(%struct.nvmet_tcp_queue* %0, %struct.nvmet_tcp_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvmet_tcp_queue*, align 8
  %5 = alloca %struct.nvmet_tcp_cmd*, align 8
  %6 = alloca i64, align 8
  store %struct.nvmet_tcp_queue* %0, %struct.nvmet_tcp_queue** %4, align 8
  store %struct.nvmet_tcp_cmd* %1, %struct.nvmet_tcp_cmd** %5, align 8
  %7 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %8 = call i64 @nvmet_tcp_hdgst_len(%struct.nvmet_tcp_queue* %7)
  store i64 %8, i64* %6, align 8
  %9 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %10 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %10, i32 0, i32 7
  store %struct.nvmet_tcp_queue* %9, %struct.nvmet_tcp_queue** %11, align 8
  %12 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %13 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 8
  %20 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %21 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %20, i32 0, i32 1
  %22 = load i64, i64* %6, align 8
  %23 = add i64 8, %22
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = load i32, i32* @__GFP_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call i8* @page_frag_alloc(i32* %21, i64 %23, i32 %26)
  %28 = bitcast i8* %27 to %struct.TYPE_8__*
  %29 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %29, i32 0, i32 0
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %30, align 8
  %31 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %131

38:                                               ; preds = %2
  %39 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %44 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32* %42, i32** %45, align 8
  %46 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %47 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %46, i32 0, i32 1
  %48 = load i64, i64* %6, align 8
  %49 = add i64 8, %48
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = load i32, i32* @__GFP_ZERO, align 4
  %52 = or i32 %50, %51
  %53 = call i8* @page_frag_alloc(i32* %47, i64 %49, i32 %52)
  %54 = bitcast i8* %53 to %struct.TYPE_8__*
  %55 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %56 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %55, i32 0, i32 1
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %56, align 8
  %57 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %58 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = icmp ne %struct.TYPE_8__* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %38
  br label %124

62:                                               ; preds = %38
  %63 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %64 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %68 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32* %66, i32** %69, align 8
  %70 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %71 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %70, i32 0, i32 1
  %72 = load i64, i64* %6, align 8
  %73 = add i64 8, %72
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = load i32, i32* @__GFP_ZERO, align 4
  %76 = or i32 %74, %75
  %77 = call i8* @page_frag_alloc(i32* %71, i64 %73, i32 %76)
  %78 = bitcast i8* %77 to %struct.TYPE_8__*
  %79 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %80 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %79, i32 0, i32 2
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %80, align 8
  %81 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %82 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %81, i32 0, i32 2
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = icmp ne %struct.TYPE_8__* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %62
  br label %119

86:                                               ; preds = %62
  %87 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %88 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %87, i32 0, i32 1
  %89 = load i64, i64* %6, align 8
  %90 = add i64 1, %89
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = load i32, i32* @__GFP_ZERO, align 4
  %93 = or i32 %91, %92
  %94 = call i8* @page_frag_alloc(i32* %88, i64 %90, i32 %93)
  %95 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %96 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  %97 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %98 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %97, i32 0, i32 5
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %86
  br label %114

102:                                              ; preds = %86
  %103 = load i32, i32* @MSG_DONTWAIT, align 4
  %104 = load i32, i32* @MSG_NOSIGNAL, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %107 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 4
  %109 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %110 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %109, i32 0, i32 3
  %111 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %112 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %111, i32 0, i32 0
  %113 = call i32 @list_add_tail(i32* %110, i32* %112)
  store i32 0, i32* %3, align 4
  br label %131

114:                                              ; preds = %101
  %115 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %116 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %115, i32 0, i32 2
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = call i32 @page_frag_free(%struct.TYPE_8__* %117)
  br label %119

119:                                              ; preds = %114, %85
  %120 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %121 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %120, i32 0, i32 1
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = call i32 @page_frag_free(%struct.TYPE_8__* %122)
  br label %124

124:                                              ; preds = %119, %61
  %125 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %126 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = call i32 @page_frag_free(%struct.TYPE_8__* %127)
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %124, %102, %35
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @nvmet_tcp_hdgst_len(%struct.nvmet_tcp_queue*) #1

declare dso_local i8* @page_frag_alloc(i32*, i64, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @page_frag_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
