; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_with_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_with_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.qlink_cmd = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.qlink_resp = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"VIF%u.%u cmd=0x%.4X\0A\00", align 1
@QLINK_CMD_FW_INIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"VIF%u.%u: drop cmd 0x%.4X in fw state %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"VIF%u.%u: cmd 0x%.4X failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_bus*, %struct.sk_buff*, %struct.sk_buff**, i64, i64*)* @qtnf_cmd_send_with_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_cmd_send_with_reply(%struct.qtnf_bus* %0, %struct.sk_buff* %1, %struct.sk_buff** %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qtnf_bus*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.qlink_cmd*, align 8
  %13 = alloca %struct.qlink_resp*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store %struct.qlink_resp* null, %struct.qlink_resp** %13, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %14, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.qlink_cmd*
  store %struct.qlink_cmd* %22, %struct.qlink_cmd** %12, align 8
  %23 = load %struct.qlink_cmd*, %struct.qlink_cmd** %12, align 8
  %24 = getelementptr inbounds %struct.qlink_cmd, %struct.qlink_cmd* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le16_to_cpu(i32 %25)
  store i64 %26, i64* %15, align 8
  %27 = load %struct.qlink_cmd*, %struct.qlink_cmd** %12, align 8
  %28 = getelementptr inbounds %struct.qlink_cmd, %struct.qlink_cmd* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %16, align 4
  %30 = load %struct.qlink_cmd*, %struct.qlink_cmd** %12, align 8
  %31 = getelementptr inbounds %struct.qlink_cmd, %struct.qlink_cmd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %17, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @cpu_to_le16(i32 %35)
  %37 = load %struct.qlink_cmd*, %struct.qlink_cmd** %12, align 8
  %38 = getelementptr inbounds %struct.qlink_cmd, %struct.qlink_cmd* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %17, align 4
  %42 = load i64, i64* %15, align 8
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i64 %42)
  %44 = load %struct.qtnf_bus*, %struct.qtnf_bus** %7, align 8
  %45 = call i32 @qtnf_fw_is_up(%struct.qtnf_bus* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %5
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* @QLINK_CMD_FW_INIT, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load i64, i64* %15, align 8
  %55 = load %struct.qtnf_bus*, %struct.qtnf_bus** %7, align 8
  %56 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53, i64 %54, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = call i32 @dev_kfree_skb(%struct.sk_buff* %59)
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %145

63:                                               ; preds = %47, %5
  %64 = load %struct.qtnf_bus*, %struct.qtnf_bus** %7, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = call i32 @qtnf_trans_send_cmd_with_resp(%struct.qtnf_bus* %64, %struct.sk_buff* %65, %struct.sk_buff** %14)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %117

70:                                               ; preds = %63
  %71 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %72 = icmp ne %struct.sk_buff* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %73, %70
  %80 = phi i1 [ true, %70 ], [ %78, %73 ]
  %81 = zext i1 %80 to i32
  %82 = call i64 @WARN_ON(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @EFAULT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %18, align 4
  br label %117

87:                                               ; preds = %79
  %88 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to %struct.qlink_resp*
  store %struct.qlink_resp* %91, %struct.qlink_resp** %13, align 8
  %92 = load %struct.qlink_resp*, %struct.qlink_resp** %13, align 8
  %93 = load i64, i64* %15, align 8
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @qtnf_cmd_check_reply_header(%struct.qlink_resp* %92, i64 %93, i32 %94, i32 %95, i64 %96)
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  br label %117

101:                                              ; preds = %87
  %102 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %103 = icmp ne %struct.sk_buff** %102, null
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load i64*, i64** %11, align 8
  %106 = icmp ne i64* %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load %struct.qlink_resp*, %struct.qlink_resp** %13, align 8
  %109 = getelementptr inbounds %struct.qlink_resp, %struct.qlink_resp* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @le16_to_cpu(i32 %111)
  %113 = load i64, i64* %10, align 8
  %114 = sub i64 %112, %113
  %115 = load i64*, i64** %11, align 8
  store i64 %114, i64* %115, align 8
  br label %116

116:                                              ; preds = %107, %104, %101
  br label %117

117:                                              ; preds = %116, %100, %84, %69
  %118 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %119 = icmp ne %struct.sk_buff** %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %122 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  store %struct.sk_buff* %121, %struct.sk_buff** %122, align 8
  br label %126

123:                                              ; preds = %117
  %124 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %125 = call i32 @consume_skb(%struct.sk_buff* %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %18, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %126
  %130 = load %struct.qlink_resp*, %struct.qlink_resp** %13, align 8
  %131 = icmp ne %struct.qlink_resp* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load %struct.qlink_resp*, %struct.qlink_resp** %13, align 8
  %134 = getelementptr inbounds %struct.qlink_resp, %struct.qlink_resp* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @le16_to_cpu(i32 %135)
  %137 = call i32 @qtnf_cmd_resp_result_decode(i64 %136)
  store i32 %137, i32* %6, align 4
  br label %145

138:                                              ; preds = %129, %126
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load i64, i64* %15, align 8
  %142 = load i32, i32* %18, align 4
  %143 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %139, i32 %140, i64 %141, i32 %142)
  %144 = load i32, i32* %18, align 4
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %138, %132, %51
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64) #1

declare dso_local i32 @qtnf_fw_is_up(%struct.qtnf_bus*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i64, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @qtnf_trans_send_cmd_with_resp(%struct.qtnf_bus*, %struct.sk_buff*, %struct.sk_buff**) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @qtnf_cmd_check_reply_header(%struct.qlink_resp*, i64, i32, i32, i64) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @qtnf_cmd_resp_result_decode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
