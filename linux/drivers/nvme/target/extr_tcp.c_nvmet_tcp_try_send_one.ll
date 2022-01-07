; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_try_send_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_try_send_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_queue = type { i64, %struct.nvmet_tcp_cmd* }
%struct.nvmet_tcp_cmd = type { i64 }

@NVMET_TCP_Q_DISCONNECTING = common dso_local global i64 0, align 8
@NVMET_TCP_SEND_DATA_PDU = common dso_local global i64 0, align 8
@NVMET_TCP_SEND_DATA = common dso_local global i64 0, align 8
@NVMET_TCP_SEND_DDGST = common dso_local global i64 0, align 8
@NVMET_TCP_SEND_R2T = common dso_local global i64 0, align 8
@NVMET_TCP_SEND_RESPONSE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_tcp_queue*, i32)* @nvmet_tcp_try_send_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_tcp_try_send_one(%struct.nvmet_tcp_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvmet_tcp_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvmet_tcp_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.nvmet_tcp_queue* %0, %struct.nvmet_tcp_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %9 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %8, i32 0, i32 1
  %10 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %9, align 8
  store %struct.nvmet_tcp_cmd* %10, %struct.nvmet_tcp_cmd** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %6, align 8
  %12 = icmp ne %struct.nvmet_tcp_cmd* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %15 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NVMET_TCP_Q_DISCONNECTING, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13, %2
  %20 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %21 = call %struct.nvmet_tcp_cmd* @nvmet_tcp_fetch_cmd(%struct.nvmet_tcp_queue* %20)
  store %struct.nvmet_tcp_cmd* %21, %struct.nvmet_tcp_cmd** %6, align 8
  %22 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %6, align 8
  %23 = icmp ne %struct.nvmet_tcp_cmd* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %106

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %13
  %31 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %6, align 8
  %32 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NVMET_TCP_SEND_DATA_PDU, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %6, align 8
  %38 = call i32 @nvmet_try_send_data_pdu(%struct.nvmet_tcp_cmd* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %94

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %30
  %44 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %6, align 8
  %45 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NVMET_TCP_SEND_DATA, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %6, align 8
  %51 = call i32 @nvmet_try_send_data(%struct.nvmet_tcp_cmd* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %94

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %43
  %57 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %6, align 8
  %58 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NVMET_TCP_SEND_DDGST, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %6, align 8
  %64 = call i32 @nvmet_try_send_ddgst(%struct.nvmet_tcp_cmd* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %94

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %56
  %70 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %6, align 8
  %71 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @NVMET_TCP_SEND_R2T, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %6, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @nvmet_try_send_r2t(%struct.nvmet_tcp_cmd* %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp sle i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %94

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %69
  %84 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %6, align 8
  %85 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NVMET_TCP_SEND_RESPONSE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %6, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @nvmet_try_send_response(%struct.nvmet_tcp_cmd* %90, i32 %91)
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %89, %83
  br label %94

94:                                               ; preds = %93, %81, %67, %54, %41
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @EAGAIN, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %106

103:                                              ; preds = %97
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %106

105:                                              ; preds = %94
  store i32 1, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %103, %102, %28
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.nvmet_tcp_cmd* @nvmet_tcp_fetch_cmd(%struct.nvmet_tcp_queue*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nvmet_try_send_data_pdu(%struct.nvmet_tcp_cmd*) #1

declare dso_local i32 @nvmet_try_send_data(%struct.nvmet_tcp_cmd*) #1

declare dso_local i32 @nvmet_try_send_ddgst(%struct.nvmet_tcp_cmd*) #1

declare dso_local i32 @nvmet_try_send_r2t(%struct.nvmet_tcp_cmd*, i32) #1

declare dso_local i32 @nvmet_try_send_response(%struct.nvmet_tcp_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
