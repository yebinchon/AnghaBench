; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_cmd_frame_tx = type { i8*, i8*, i32 }

@QTNF_MAX_CMD_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"VIF%u.%u: frame is too big: %zu\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@QLINK_CMD_SEND_FRAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_send_frame(%struct.qtnf_vif* %0, i32 %1, i32 %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qtnf_vif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.qlink_cmd_frame_tx*, align 8
  %16 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load i64, i64* %13, align 8
  %18 = add i64 24, %17
  %19 = load i32, i32* @QTNF_MAX_CMD_BUF_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %6
  %23 = load %struct.qtnf_vif*, %struct.qtnf_vif** %8, align 8
  %24 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qtnf_vif*, %struct.qtnf_vif** %8, align 8
  %29 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %13, align 8
  %32 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i64 %31)
  %33 = load i32, i32* @E2BIG, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %104

35:                                               ; preds = %6
  %36 = load %struct.qtnf_vif*, %struct.qtnf_vif** %8, align 8
  %37 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.qtnf_vif*, %struct.qtnf_vif** %8, align 8
  %42 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @QLINK_CMD_SEND_FRAME, align 4
  %45 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %40, i32 %43, i32 %44, i32 24)
  store %struct.sk_buff* %45, %struct.sk_buff** %14, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %35
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %104

51:                                               ; preds = %35
  %52 = load %struct.qtnf_vif*, %struct.qtnf_vif** %8, align 8
  %53 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @qtnf_bus_lock(i32 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.qlink_cmd_frame_tx*
  store %struct.qlink_cmd_frame_tx* %61, %struct.qlink_cmd_frame_tx** %15, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @cpu_to_le32(i32 %62)
  %64 = load %struct.qlink_cmd_frame_tx*, %struct.qlink_cmd_frame_tx** %15, align 8
  %65 = getelementptr inbounds %struct.qlink_cmd_frame_tx, %struct.qlink_cmd_frame_tx* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i8* @cpu_to_le16(i32 %66)
  %68 = load %struct.qlink_cmd_frame_tx*, %struct.qlink_cmd_frame_tx** %15, align 8
  %69 = getelementptr inbounds %struct.qlink_cmd_frame_tx, %struct.qlink_cmd_frame_tx* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i8* @cpu_to_le16(i32 %70)
  %72 = load %struct.qlink_cmd_frame_tx*, %struct.qlink_cmd_frame_tx** %15, align 8
  %73 = getelementptr inbounds %struct.qlink_cmd_frame_tx, %struct.qlink_cmd_frame_tx* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load i64, i64* %13, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %51
  %77 = load i32*, i32** %12, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = load i64, i64* %13, align 8
  %83 = call i32 @qtnf_cmd_skb_put_buffer(%struct.sk_buff* %80, i32* %81, i64 %82)
  br label %84

84:                                               ; preds = %79, %76, %51
  %85 = load %struct.qtnf_vif*, %struct.qtnf_vif** %8, align 8
  %86 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %91 = call i32 @qtnf_cmd_send(i32 %89, %struct.sk_buff* %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %96

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %94
  %97 = load %struct.qtnf_vif*, %struct.qtnf_vif** %8, align 8
  %98 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @qtnf_bus_unlock(i32 %101)
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %96, %48, %22
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @pr_warn(i8*, i32, i32, i64) #1

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_bus_lock(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @qtnf_cmd_skb_put_buffer(%struct.sk_buff*, i32*, i64) #1

declare dso_local i32 @qtnf_cmd_send(i32, %struct.sk_buff*) #1

declare dso_local i32 @qtnf_bus_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
