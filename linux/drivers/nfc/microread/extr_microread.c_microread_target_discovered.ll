; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_microread.c_microread_target_discovered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_microread.c_microread_target_discovered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.sk_buff = type { i32* }
%struct.nfc_target = type { i32, i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [32 x i8] c"target discovered to gate 0x%x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MICROREAD_EMCF_A_SAK = common dso_local global i64 0, align 8
@MICROREAD_EMCF_A_ATQA = common dso_local global i64 0, align 8
@MICROREAD_EMCF_A_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MICROREAD_EMCF_A_UID = common dso_local global i64 0, align 8
@MICROREAD_EMCF_A3_SAK = common dso_local global i64 0, align 8
@MICROREAD_EMCF_A3_ATQA = common dso_local global i64 0, align 8
@MICROREAD_EMCF_A3_LEN = common dso_local global i64 0, align 8
@MICROREAD_EMCF_A3_UID = common dso_local global i64 0, align 8
@NFC_PROTO_ISO14443_B_MASK = common dso_local global i8* null, align 8
@MICROREAD_EMCF_B_UID = common dso_local global i64 0, align 8
@NFC_PROTO_JEWEL_MASK = common dso_local global i8* null, align 8
@MICROREAD_EMCF_T1_ATQA = common dso_local global i64 0, align 8
@MICROREAD_EMCF_T1_UID = common dso_local global i64 0, align 8
@NFC_PROTO_FELICA_MASK = common dso_local global i8* null, align 8
@MICROREAD_EMCF_T3_UID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"discard target discovered to gate 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to handle discovered target err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_hci_dev*, i32, %struct.sk_buff*)* @microread_target_discovered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @microread_target_discovered(%struct.nfc_hci_dev* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nfc_target*, align 8
  %8 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nfc_target* @kzalloc(i32 32, i32 %11)
  store %struct.nfc_target* %12, %struct.nfc_target** %7, align 8
  %13 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %14 = icmp eq %struct.nfc_target* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  br label %201

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %21 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %189 [
    i32 132, label %23
    i32 131, label %79
    i32 130, label %135
    i32 129, label %150
    i32 128, label %174
  ]

23:                                               ; preds = %18
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @MICROREAD_EMCF_A_SAK, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @nfc_hci_sak_to_protocol(i32 %29)
  %31 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %32 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @MICROREAD_EMCF_A_ATQA, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @be16_to_cpu(i32 %38)
  %40 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %41 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @MICROREAD_EMCF_A_SAK, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %49 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @MICROREAD_EMCF_A_LEN, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %57 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %59 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = icmp ugt i64 %61, 4
  br i1 %62, label %63, label %66

63:                                               ; preds = %23
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %198

66:                                               ; preds = %23
  %67 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %68 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @MICROREAD_EMCF_A_UID, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %76 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @memcpy(i32 %69, i32* %74, i32 %77)
  br label %192

79:                                               ; preds = %18
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @MICROREAD_EMCF_A3_SAK, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @nfc_hci_sak_to_protocol(i32 %85)
  %87 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %88 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %87, i32 0, i32 4
  store i8* %86, i8** %88, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @MICROREAD_EMCF_A3_ATQA, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @be16_to_cpu(i32 %94)
  %96 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %97 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %96, i32 0, i32 5
  store i8* %95, i8** %97, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @MICROREAD_EMCF_A3_SAK, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %105 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @MICROREAD_EMCF_A3_LEN, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %113 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %115 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = icmp ugt i64 %117, 4
  br i1 %118, label %119, label %122

119:                                              ; preds = %79
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %8, align 4
  br label %198

122:                                              ; preds = %79
  %123 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %124 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* @MICROREAD_EMCF_A3_UID, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %132 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @memcpy(i32 %125, i32* %130, i32 %133)
  br label %192

135:                                              ; preds = %18
  %136 = load i8*, i8** @NFC_PROTO_ISO14443_B_MASK, align 8
  %137 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %138 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  %139 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %140 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* @MICROREAD_EMCF_B_UID, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = call i32 @memcpy(i32 %141, i32* %146, i32 4)
  %148 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %149 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %148, i32 0, i32 2
  store i32 4, i32* %149, align 8
  br label %192

150:                                              ; preds = %18
  %151 = load i8*, i8** @NFC_PROTO_JEWEL_MASK, align 8
  %152 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %153 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %152, i32 0, i32 4
  store i8* %151, i8** %153, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* @MICROREAD_EMCF_T1_ATQA, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @le16_to_cpu(i32 %159)
  %161 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %162 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %161, i32 0, i32 5
  store i8* %160, i8** %162, align 8
  %163 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %164 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i64, i64* @MICROREAD_EMCF_T1_UID, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = call i32 @memcpy(i32 %165, i32* %170, i32 4)
  %172 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %173 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %172, i32 0, i32 2
  store i32 4, i32* %173, align 8
  br label %192

174:                                              ; preds = %18
  %175 = load i8*, i8** @NFC_PROTO_FELICA_MASK, align 8
  %176 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %177 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %176, i32 0, i32 4
  store i8* %175, i8** %177, align 8
  %178 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %179 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %182 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* @MICROREAD_EMCF_T3_UID, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = call i32 @memcpy(i32 %180, i32* %185, i32 8)
  %187 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %188 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %187, i32 0, i32 2
  store i32 8, i32* %188, align 8
  br label %192

189:                                              ; preds = %18
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %190)
  br label %198

192:                                              ; preds = %174, %150, %135, %122, %66
  %193 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %194 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %197 = call i32 @nfc_targets_found(i32 %195, %struct.nfc_target* %196, i32 1)
  store i32 %197, i32* %8, align 4
  br label %198

198:                                              ; preds = %192, %189, %119, %63
  %199 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %200 = call i32 @kfree(%struct.nfc_target* %199)
  br label %201

201:                                              ; preds = %198, %15
  %202 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %203 = call i32 @kfree_skb(%struct.sk_buff* %202)
  %204 = load i32, i32* %8, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load i32, i32* %8, align 4
  %208 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %207)
  br label %209

209:                                              ; preds = %206, %201
  ret void
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.nfc_target* @kzalloc(i32, i32) #1

declare dso_local i8* @nfc_hci_sak_to_protocol(i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @nfc_targets_found(i32, %struct.nfc_target*, i32) #1

declare dso_local i32 @kfree(%struct.nfc_target*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
