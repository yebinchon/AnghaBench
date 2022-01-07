; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_trans.c_qtnf_trans_send_cmd_with_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_trans.c_qtnf_trans_send_cmd_with_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.qtnf_cmd_ctl_node }
%struct.qtnf_cmd_ctl_node = type { i32, i32, %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_cmd = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"qtnfmac: response skb not empty\0A\00", align 1
@QTNF_DEF_SYNC_CMD_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"response timeout\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"interrupted\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_trans_send_cmd_with_resp(%struct.qtnf_bus* %0, %struct.sk_buff* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtnf_bus*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.qtnf_cmd_ctl_node*, align 8
  %9 = alloca %struct.qlink_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %14 = load %struct.qtnf_bus*, %struct.qtnf_bus** %5, align 8
  %15 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.qtnf_cmd_ctl_node* %16, %struct.qtnf_cmd_ctl_node** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.qlink_cmd*
  store %struct.qlink_cmd* %21, %struct.qlink_cmd** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %12, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  %22 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %23 = icmp ne %struct.sk_buff** %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call i32 @dev_kfree_skb(%struct.sk_buff* %29)
  %31 = load i32, i32* @EFAULT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %140

33:                                               ; preds = %3
  %34 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %8, align 8
  %35 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %34, i32 0, i32 1
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %8, align 8
  %38 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %8, align 8
  %42 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cpu_to_le16(i32 %43)
  %45 = load %struct.qlink_cmd*, %struct.qlink_cmd** %9, align 8
  %46 = getelementptr inbounds %struct.qlink_cmd, %struct.qlink_cmd* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %8, align 8
  %48 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %47, i32 0, i32 2
  %49 = load %struct.sk_buff*, %struct.sk_buff** %48, align 8
  %50 = call i32 @WARN(%struct.sk_buff* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %8, align 8
  %52 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %8, align 8
  %54 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.qtnf_bus*, %struct.qtnf_bus** %5, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = call i32 @qtnf_bus_control_tx(%struct.qtnf_bus* %56, %struct.sk_buff* %57)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call i32 @dev_kfree_skb(%struct.sk_buff* %59)
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %33
  br label %124

65:                                               ; preds = %33
  %66 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %8, align 8
  %67 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %66, i32 0, i32 3
  %68 = load i32, i32* @QTNF_DEF_SYNC_CMD_TIMEOUT, align 4
  %69 = call i64 @wait_for_completion_interruptible_timeout(i32* %67, i32 %68)
  store i64 %69, i64* %11, align 8
  %70 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %8, align 8
  %71 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %70, i32 0, i32 1
  %72 = call i32 @spin_lock(i32* %71)
  %73 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %8, align 8
  %74 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %12, align 4
  %76 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %8, align 8
  %77 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %76, i32 0, i32 2
  %78 = load %struct.sk_buff*, %struct.sk_buff** %77, align 8
  store %struct.sk_buff* %78, %struct.sk_buff** %13, align 8
  %79 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %8, align 8
  %80 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %79, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %80, align 8
  %81 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %8, align 8
  %82 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = load %struct.qtnf_cmd_ctl_node*, %struct.qtnf_cmd_ctl_node** %8, align 8
  %84 = getelementptr inbounds %struct.qtnf_cmd_ctl_node, %struct.qtnf_cmd_ctl_node* %83, i32 0, i32 1
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load i64, i64* %11, align 8
  %87 = icmp sle i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %65
  %92 = load i64, i64* %11, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* @ETIMEDOUT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %10, align 4
  %97 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %102

98:                                               ; preds = %91
  %99 = load i32, i32* @EINTR, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %10, align 4
  %101 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %102

102:                                              ; preds = %98, %94
  br label %103

103:                                              ; preds = %102, %65
  %104 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %105 = icmp ne %struct.sk_buff* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br label %109

109:                                              ; preds = %106, %103
  %110 = phi i1 [ true, %103 ], [ %108, %106 ]
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* @EFAULT, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %117, %114
  br label %124

121:                                              ; preds = %109
  store i32 0, i32* %10, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %123 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  store %struct.sk_buff* %122, %struct.sk_buff** %123, align 8
  br label %124

124:                                              ; preds = %121, %120, %64
  %125 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %126 = icmp ne %struct.sk_buff* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br label %130

130:                                              ; preds = %127, %124
  %131 = phi i1 [ false, %124 ], [ %129, %127 ]
  %132 = zext i1 %131 to i32
  %133 = call i64 @unlikely(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %137 = call i32 @dev_kfree_skb(%struct.sk_buff* %136)
  br label %138

138:                                              ; preds = %135, %130
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %138, %28
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @WARN(%struct.sk_buff*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @qtnf_bus_control_tx(%struct.qtnf_bus*, %struct.sk_buff*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
