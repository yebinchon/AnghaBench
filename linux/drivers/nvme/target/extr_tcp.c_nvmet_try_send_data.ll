; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_try_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_try_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_cmd = type { i32, i32, %struct.TYPE_7__, i32, %struct.nvmet_tcp_queue*, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.nvmet_tcp_queue = type { %struct.TYPE_6__, i32*, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.page = type { i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_MORE = common dso_local global i32 0, align 4
@NVMET_TCP_SEND_DDGST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_tcp_cmd*)* @nvmet_try_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_try_send_data(%struct.nvmet_tcp_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_tcp_cmd*, align 8
  %4 = alloca %struct.nvmet_tcp_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  store %struct.nvmet_tcp_cmd* %0, %struct.nvmet_tcp_cmd** %3, align 8
  %8 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %8, i32 0, i32 4
  %10 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %9, align 8
  store %struct.nvmet_tcp_queue* %10, %struct.nvmet_tcp_queue** %4, align 8
  br label %11

11:                                               ; preds = %77, %1
  %12 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %12, i32 0, i32 6
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %78

16:                                               ; preds = %11
  %17 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %17, i32 0, i32 6
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = call %struct.page* @sg_page(%struct.TYPE_8__* %19)
  store %struct.page* %20, %struct.page** %6, align 8
  %21 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %22 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %21, i32 0, i32 6
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %25, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %31 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %30, i32 0, i32 4
  %32 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %31, align 8
  %33 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.page*, %struct.page** %6, align 8
  %36 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %37 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @MSG_DONTWAIT, align 4
  %41 = load i32, i32* @MSG_MORE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @kernel_sendpage(i32 %34, %struct.page* %35, i32 %38, i32 %39, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %16
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %123

48:                                               ; preds = %16
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %51 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %56 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %60 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %63 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %62, i32 0, i32 6
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %61, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %48
  %69 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %70 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %69, i32 0, i32 6
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = call %struct.TYPE_8__* @sg_next(%struct.TYPE_8__* %71)
  %73 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %74 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %73, i32 0, i32 6
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %74, align 8
  %75 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %76 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  br label %77

77:                                               ; preds = %68, %48
  br label %11

78:                                               ; preds = %11
  %79 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %80 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* @NVMET_TCP_SEND_DDGST, align 4
  %85 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %86 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %88 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  br label %106

89:                                               ; preds = %78
  %90 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %91 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %97 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %96, i32 0, i32 4
  %98 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %97, align 8
  %99 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %98, i32 0, i32 1
  store i32* null, i32** %99, align 8
  %100 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %101 = call i32 @nvmet_tcp_put_cmd(%struct.nvmet_tcp_cmd* %100)
  br label %105

102:                                              ; preds = %89
  %103 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %104 = call i32 @nvmet_setup_response_pdu(%struct.nvmet_tcp_cmd* %103)
  br label %105

105:                                              ; preds = %102, %95
  br label %106

106:                                              ; preds = %105, %83
  %107 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %108 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %106
  %113 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %114 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @kfree(i32 %115)
  %117 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %118 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @sgl_free(i32 %120)
  br label %122

122:                                              ; preds = %112, %106
  store i32 1, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %46
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.page* @sg_page(%struct.TYPE_8__*) #1

declare dso_local i32 @kernel_sendpage(i32, %struct.page*, i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @sg_next(%struct.TYPE_8__*) #1

declare dso_local i32 @nvmet_tcp_put_cmd(%struct.nvmet_tcp_cmd*) #1

declare dso_local i32 @nvmet_setup_response_pdu(%struct.nvmet_tcp_cmd*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @sgl_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
