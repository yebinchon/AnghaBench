; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_hci_load_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_hci_load_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.nci_dev = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64*, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.sk_buff = type { i32, i64* }
%struct.st_nci_pipe_info = type { i64, i64, i32 }

@ST_NCI_DM_GETINFO_PIPE_LIST = common dso_local global i64 0, align 8
@ST_NCI_TERMINAL_HOST_ID = common dso_local global i64 0, align 8
@ST_NCI_DM_GETINFO_PIPE_INFO = common dso_local global i64 0, align 8
@ST_NCI_HOST_CONTROLLER_ID = common dso_local global i32 0, align 4
@ST_NCI_DEVICE_MGNT_GATE = common dso_local global i32 0, align 4
@ST_NCI_DEVICE_MGNT_PIPE = common dso_local global i32 0, align 4
@ST_NCI_DM_GETINFO = common dso_local global i32 0, align 4
@ST_NCI_APDU_READER_GATE = common dso_local global i64 0, align 8
@ST_NCI_UICC_HOST_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Unexpected apdu_reader pipe on host %x\0A\00", align 1
@st_nci_gates = common dso_local global %struct.TYPE_11__* null, align 8
@NCI_HCI_LINK_MGMT_GATE = common dso_local global i32 0, align 4
@NCI_HCI_LINK_MGMT_PIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_nci_hci_load_session(%struct.nci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.st_nci_pipe_info*, align 8
  %10 = alloca [2 x i64], align 16
  %11 = alloca [3 x i64], align 16
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %13 = load i64, i64* @ST_NCI_DM_GETINFO_PIPE_LIST, align 8
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 1
  %15 = load i64, i64* @ST_NCI_TERMINAL_HOST_ID, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %17 = load i64, i64* @ST_NCI_DM_GETINFO_PIPE_INFO, align 8
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 1
  %19 = load i64, i64* @ST_NCI_TERMINAL_HOST_ID, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %22 = load i32, i32* @ST_NCI_HOST_CONTROLLER_ID, align 4
  %23 = load i32, i32* @ST_NCI_DEVICE_MGNT_GATE, align 4
  %24 = load i32, i32* @ST_NCI_DEVICE_MGNT_PIPE, align 4
  %25 = call i32 @nci_hci_connect_gate(%struct.nci_dev* %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %201

30:                                               ; preds = %1
  %31 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %32 = load i32, i32* @ST_NCI_DEVICE_MGNT_GATE, align 4
  %33 = load i32, i32* @ST_NCI_DM_GETINFO, align 4
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %35 = call i32 @nci_hci_send_cmd(%struct.nci_dev* %31, i32 %32, i32 %33, i64* %34, i32 16, %struct.sk_buff** %7)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %201

40:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %189, %40
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %192

47:                                               ; preds = %41
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  store i64 %54, i64* %55, align 16
  %56 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %57 = load i32, i32* @ST_NCI_DEVICE_MGNT_GATE, align 4
  %58 = load i32, i32* @ST_NCI_DM_GETINFO, align 4
  %59 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %60 = call i32 @nci_hci_send_cmd(%struct.nci_dev* %56, i32 %57, i32 %58, i64* %59, i32 24, %struct.sk_buff** %8)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  br label %189

64:                                               ; preds = %47
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = bitcast i64* %67 to %struct.st_nci_pipe_info*
  store %struct.st_nci_pipe_info* %68, %struct.st_nci_pipe_info** %9, align 8
  %69 = load %struct.st_nci_pipe_info*, %struct.st_nci_pipe_info** %9, align 8
  %70 = getelementptr inbounds %struct.st_nci_pipe_info, %struct.st_nci_pipe_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ST_NCI_APDU_READER_GATE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %64
  %75 = load %struct.st_nci_pipe_info*, %struct.st_nci_pipe_info** %9, align 8
  %76 = getelementptr inbounds %struct.st_nci_pipe_info, %struct.st_nci_pipe_info* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ST_NCI_UICC_HOST_ID, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.st_nci_pipe_info*, %struct.st_nci_pipe_info** %9, align 8
  %82 = getelementptr inbounds %struct.st_nci_pipe_info, %struct.st_nci_pipe_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = call i32 @kfree_skb(%struct.sk_buff* %85)
  br label %189

87:                                               ; preds = %74, %64
  store i32 3, i32* %5, align 4
  br label %88

88:                                               ; preds = %107, %87
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** @st_nci_gates, align 8
  %91 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %90)
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** @st_nci_gates, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.st_nci_pipe_info*, %struct.st_nci_pipe_info** %9, align 8
  %101 = getelementptr inbounds %struct.st_nci_pipe_info, %struct.st_nci_pipe_info* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  br label %104

104:                                              ; preds = %93, %88
  %105 = phi i1 [ false, %88 ], [ %103, %93 ]
  br i1 %105, label %106, label %110

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %88

110:                                              ; preds = %104
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** @st_nci_gates, align 8
  %113 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %112)
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %186

115:                                              ; preds = %110
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** @st_nci_gates, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.st_nci_pipe_info*, %struct.st_nci_pipe_info** %9, align 8
  %123 = getelementptr inbounds %struct.st_nci_pipe_info, %struct.st_nci_pipe_info* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %121, %124
  br i1 %125, label %126, label %186

126:                                              ; preds = %115
  %127 = load %struct.st_nci_pipe_info*, %struct.st_nci_pipe_info** %9, align 8
  %128 = getelementptr inbounds %struct.st_nci_pipe_info, %struct.st_nci_pipe_info* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @ST_NCI_DM_IS_PIPE_OPEN(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %186

132:                                              ; preds = %126
  %133 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  %134 = load i64, i64* %133, align 16
  %135 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %136 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %135, i32 0, i32 0
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i64 %134, i64* %144, align 8
  %145 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  %146 = load i64, i64* %145, align 16
  %147 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %148 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %147, i32 0, i32 0
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** @st_nci_gates, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds i64, i64* %151, i64 %157
  store i64 %146, i64* %158, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** @st_nci_gates, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %166 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %165, i32 0, i32 0
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  %171 = load i64, i64* %170, align 16
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  store i64 %164, i64* %173, align 8
  %174 = load %struct.st_nci_pipe_info*, %struct.st_nci_pipe_info** %9, align 8
  %175 = getelementptr inbounds %struct.st_nci_pipe_info, %struct.st_nci_pipe_info* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %178 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %177, i32 0, i32 0
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  %183 = load i64, i64* %182, align 16
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  store i64 %176, i64* %185, align 8
  br label %186

186:                                              ; preds = %132, %126, %115, %110
  %187 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %188 = call i32 @kfree_skb(%struct.sk_buff* %187)
  br label %189

189:                                              ; preds = %186, %80, %63
  %190 = load i32, i32* %4, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %4, align 4
  br label %41

192:                                              ; preds = %41
  %193 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %194 = load i32, i32* @ST_NCI_HOST_CONTROLLER_ID, align 4
  %195 = load i32, i32* @NCI_HCI_LINK_MGMT_GATE, align 4
  %196 = load i32, i32* @NCI_HCI_LINK_MGMT_PIPE, align 4
  %197 = call i32 @nci_hci_connect_gate(%struct.nci_dev* %193, i32 %194, i32 %195, i32 %196)
  store i32 %197, i32* %6, align 4
  %198 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %199 = call i32 @kfree_skb(%struct.sk_buff* %198)
  %200 = load i32, i32* %6, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %192, %38, %28
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i32 @nci_hci_connect_gate(%struct.nci_dev*, i32, i32, i32) #1

declare dso_local i32 @nci_hci_send_cmd(%struct.nci_dev*, i32, i32, i64*, i32, %struct.sk_buff**) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i64 @ST_NCI_DM_IS_PIPE_OPEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
