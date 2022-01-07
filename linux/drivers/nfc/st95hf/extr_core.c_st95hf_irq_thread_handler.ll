; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_irq_thread_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_irq_thread_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sk_buff = type { i64* }
%struct.st95hf_context = type { i32, i32, i32, i64, %struct.TYPE_4__, %struct.st95_digital_cmd_complete_arg }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.st95_digital_cmd_complete_arg = type { i32, i32, i32 (i32, i32, %struct.sk_buff.0*)*, %struct.sk_buff* }
%struct.sk_buff.0 = type opaque

@st95hf_irq_thread_handler.wtx = internal global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unknown context in ST95HF ISR\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"TISR spi response err = 0x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@WTX_REQ_FROM_TAG = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @st95hf_irq_thread_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st95hf_irq_thread_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.st95hf_context*, align 8
  %11 = alloca %struct.st95_digital_cmd_complete_arg*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.st95hf_context*
  store %struct.st95hf_context* %13, %struct.st95hf_context** %10, align 8
  %14 = load %struct.st95hf_context*, %struct.st95hf_context** %10, align 8
  %15 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load %struct.st95hf_context*, %struct.st95hf_context** %10, align 8
  %20 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %19, i32 0, i32 1
  %21 = call i32 @down_trylock(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.st95hf_context*, %struct.st95hf_context** %10, align 8
  %25 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %24, i32 0, i32 1
  %26 = call i32 @up(i32* %25)
  %27 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %155

29:                                               ; preds = %2
  %30 = load %struct.st95hf_context*, %struct.st95hf_context** %10, align 8
  %31 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %30, i32 0, i32 5
  store %struct.st95_digital_cmd_complete_arg* %31, %struct.st95_digital_cmd_complete_arg** %11, align 8
  %32 = load %struct.st95_digital_cmd_complete_arg*, %struct.st95_digital_cmd_complete_arg** %11, align 8
  %33 = getelementptr inbounds %struct.st95_digital_cmd_complete_arg, %struct.st95_digital_cmd_complete_arg* %32, i32 0, i32 3
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  store %struct.sk_buff* %34, %struct.sk_buff** %9, align 8
  %35 = load %struct.st95hf_context*, %struct.st95hf_context** %10, align 8
  %36 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.st95hf_context*, %struct.st95hf_context** %10, align 8
  %39 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %38, i32 0, i32 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = call i32 @st95hf_spi_recv_response(%struct.TYPE_4__* %39, i64* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %29
  %47 = load %struct.device*, %struct.device** %8, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %6, align 4
  br label %129

51:                                               ; preds = %29
  %52 = load %struct.st95hf_context*, %struct.st95hf_context** %10, align 8
  %53 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %129

59:                                               ; preds = %51
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @WTX_REQ_FROM_TAG, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %59
  %68 = load %struct.st95hf_context*, %struct.st95hf_context** %10, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 3
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @st95hf_handle_wtx(%struct.st95hf_context* %68, i32 1, i64 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %129

78:                                               ; preds = %67
  store i32 1, i32* @st95hf_irq_thread_handler.wtx, align 4
  %79 = load %struct.st95hf_context*, %struct.st95hf_context** %10, align 8
  %80 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %82, i32* %3, align 4
  br label %155

83:                                               ; preds = %59
  %84 = load %struct.st95hf_context*, %struct.st95hf_context** %10, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @st95hf_error_handling(%struct.st95hf_context* %84, %struct.sk_buff* %85, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %129

91:                                               ; preds = %83
  %92 = load %struct.st95hf_context*, %struct.st95hf_context** %10, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @st95hf_response_handler(%struct.st95hf_context* %92, %struct.sk_buff* %93, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %129

99:                                               ; preds = %91
  %100 = load i32, i32* @st95hf_irq_thread_handler.wtx, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  store i32 0, i32* @st95hf_irq_thread_handler.wtx, align 4
  %103 = load %struct.st95hf_context*, %struct.st95hf_context** %10, align 8
  %104 = call i32 @st95hf_handle_wtx(%struct.st95hf_context* %103, i32 0, i64 0)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %129

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108, %99
  %110 = load %struct.st95_digital_cmd_complete_arg*, %struct.st95_digital_cmd_complete_arg** %11, align 8
  %111 = getelementptr inbounds %struct.st95_digital_cmd_complete_arg, %struct.st95_digital_cmd_complete_arg* %110, i32 0, i32 2
  %112 = load i32 (i32, i32, %struct.sk_buff.0*)*, i32 (i32, i32, %struct.sk_buff.0*)** %111, align 8
  %113 = load %struct.st95hf_context*, %struct.st95hf_context** %10, align 8
  %114 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.st95_digital_cmd_complete_arg*, %struct.st95_digital_cmd_complete_arg** %11, align 8
  %117 = getelementptr inbounds %struct.st95_digital_cmd_complete_arg, %struct.st95_digital_cmd_complete_arg* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %120 = bitcast %struct.sk_buff* %119 to %struct.sk_buff.0*
  %121 = call i32 %112(i32 %115, i32 %118, %struct.sk_buff.0* %120)
  %122 = load %struct.st95hf_context*, %struct.st95hf_context** %10, align 8
  %123 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %122, i32 0, i32 1
  %124 = call i32 @up(i32* %123)
  %125 = load %struct.st95hf_context*, %struct.st95hf_context** %10, align 8
  %126 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %125, i32 0, i32 0
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %128, i32* %3, align 4
  br label %155

129:                                              ; preds = %107, %98, %90, %77, %56, %46
  %130 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %131 = call i32 @kfree_skb(%struct.sk_buff* %130)
  store i32 0, i32* @st95hf_irq_thread_handler.wtx, align 4
  %132 = load %struct.st95_digital_cmd_complete_arg*, %struct.st95_digital_cmd_complete_arg** %11, align 8
  %133 = getelementptr inbounds %struct.st95_digital_cmd_complete_arg, %struct.st95_digital_cmd_complete_arg* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call %struct.sk_buff* @ERR_PTR(i32 %134)
  store %struct.sk_buff* %135, %struct.sk_buff** %9, align 8
  %136 = load %struct.st95_digital_cmd_complete_arg*, %struct.st95_digital_cmd_complete_arg** %11, align 8
  %137 = getelementptr inbounds %struct.st95_digital_cmd_complete_arg, %struct.st95_digital_cmd_complete_arg* %136, i32 0, i32 2
  %138 = load i32 (i32, i32, %struct.sk_buff.0*)*, i32 (i32, i32, %struct.sk_buff.0*)** %137, align 8
  %139 = load %struct.st95hf_context*, %struct.st95hf_context** %10, align 8
  %140 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.st95_digital_cmd_complete_arg*, %struct.st95_digital_cmd_complete_arg** %11, align 8
  %143 = getelementptr inbounds %struct.st95_digital_cmd_complete_arg, %struct.st95_digital_cmd_complete_arg* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %146 = bitcast %struct.sk_buff* %145 to %struct.sk_buff.0*
  %147 = call i32 %138(i32 %141, i32 %144, %struct.sk_buff.0* %146)
  %148 = load %struct.st95hf_context*, %struct.st95hf_context** %10, align 8
  %149 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %148, i32 0, i32 1
  %150 = call i32 @up(i32* %149)
  %151 = load %struct.st95hf_context*, %struct.st95hf_context** %10, align 8
  %152 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %151, i32 0, i32 0
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %129, %109, %78, %23
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @down_trylock(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @st95hf_spi_recv_response(%struct.TYPE_4__*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @st95hf_handle_wtx(%struct.st95hf_context*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @st95hf_error_handling(%struct.st95hf_context*, %struct.sk_buff*, i32) #1

declare dso_local i32 @st95hf_response_handler(%struct.st95hf_context*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
