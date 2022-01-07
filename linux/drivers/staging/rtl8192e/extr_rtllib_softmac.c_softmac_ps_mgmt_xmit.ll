; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_softmac_ps_mgmt_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_softmac_ps_mgmt_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.rtllib_device = type { i16, i32*, i32, i32 (%struct.sk_buff*, i32)*, i32, i32 (%struct.sk_buff*, i32, i32)*, i64 }
%struct.rtllib_hdr_3addr = type { i8*, i32 }
%struct.cb_desc = type { i32, i32, i32, i32, i8* }

@IEEE_SOFTMAC_SINGLE_QUEUE = common dso_local global i16 0, align 2
@RTLLIB_STYPE_PSPOLL = common dso_local global i64 0, align 8
@MGNT_QUEUE = common dso_local global i8* null, align 8
@HIGH_QUEUE = common dso_local global i8* null, align 8
@RTLLIB_FTYPE_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.rtllib_device*)* @softmac_ps_mgmt_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @softmac_ps_mgmt_xmit(%struct.sk_buff* %0, %struct.rtllib_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.rtllib_hdr_3addr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cb_desc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.rtllib_device* %1, %struct.rtllib_device** %4, align 8
  %11 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %12 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 8
  %14 = sext i16 %13 to i32
  %15 = load i16, i16* @IEEE_SOFTMAC_SINGLE_QUEUE, align 2
  %16 = sext i16 %15 to i32
  %17 = and i32 %14, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %5, align 2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.rtllib_hdr_3addr*
  store %struct.rtllib_hdr_3addr* %22, %struct.rtllib_hdr_3addr** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 8
  %27 = inttoptr i64 %26 to %struct.cb_desc*
  store %struct.cb_desc* %27, %struct.cb_desc** %10, align 8
  %28 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %6, align 8
  %29 = getelementptr inbounds %struct.rtllib_hdr_3addr, %struct.rtllib_hdr_3addr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @le16_to_cpu(i32 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @WLAN_FC_GET_TYPE(i64 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @WLAN_FC_GET_STYPE(i64 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @RTLLIB_STYPE_PSPOLL, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load i8*, i8** @MGNT_QUEUE, align 8
  %41 = load %struct.cb_desc*, %struct.cb_desc** %10, align 8
  %42 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  br label %47

43:                                               ; preds = %2
  %44 = load i8*, i8** @HIGH_QUEUE, align 8
  %45 = load %struct.cb_desc*, %struct.cb_desc** %10, align 8
  %46 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %49 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i8*, i8** @HIGH_QUEUE, align 8
  %54 = load %struct.cb_desc*, %struct.cb_desc** %10, align 8
  %55 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %58 = call i32 @MgntQuery_MgntFrameTxRate(%struct.rtllib_device* %57)
  %59 = load %struct.cb_desc*, %struct.cb_desc** %10, align 8
  %60 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.cb_desc*, %struct.cb_desc** %10, align 8
  %62 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %61, i32 0, i32 0
  store i32 7, i32* %62, align 8
  %63 = load %struct.cb_desc*, %struct.cb_desc** %10, align 8
  %64 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = load %struct.cb_desc*, %struct.cb_desc** %10, align 8
  %66 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %65, i32 0, i32 2
  store i32 1, i32* %66, align 8
  %67 = load i16, i16* %5, align 2
  %68 = icmp ne i16 %67, 0
  br i1 %68, label %69, label %114

69:                                               ; preds = %56
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @RTLLIB_FTYPE_CTL, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %102

73:                                               ; preds = %69
  %74 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %75 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 4
  %80 = call i8* @cpu_to_le16(i32 %79)
  %81 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %6, align 8
  %82 = getelementptr inbounds %struct.rtllib_hdr_3addr, %struct.rtllib_hdr_3addr* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %84 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 4095
  br i1 %88, label %89, label %94

89:                                               ; preds = %73
  %90 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %91 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 0, i32* %93, align 4
  br label %101

94:                                               ; preds = %73
  %95 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %96 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %94, %89
  br label %102

102:                                              ; preds = %101, %69
  %103 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %104 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %103, i32 0, i32 5
  %105 = load i32 (%struct.sk_buff*, i32, i32)*, i32 (%struct.sk_buff*, i32, i32)** %104, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %107 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %108 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %111 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i32 %105(%struct.sk_buff* %106, i32 %109, i32 %112)
  br label %156

114:                                              ; preds = %56
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* @RTLLIB_FTYPE_CTL, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %147

118:                                              ; preds = %114
  %119 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %120 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 4
  %125 = call i8* @cpu_to_le16(i32 %124)
  %126 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %6, align 8
  %127 = getelementptr inbounds %struct.rtllib_hdr_3addr, %struct.rtllib_hdr_3addr* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  %128 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %129 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 4095
  br i1 %133, label %134, label %139

134:                                              ; preds = %118
  %135 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %136 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 0, i32* %138, align 4
  br label %146

139:                                              ; preds = %118
  %140 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %141 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %139, %134
  br label %147

147:                                              ; preds = %146, %114
  %148 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %149 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %148, i32 0, i32 3
  %150 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %149, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %152 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %153 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 %150(%struct.sk_buff* %151, i32 %154)
  br label %156

156:                                              ; preds = %147, %102
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @WLAN_FC_GET_TYPE(i64) #1

declare dso_local i64 @WLAN_FC_GET_STYPE(i64) #1

declare dso_local i32 @MgntQuery_MgntFrameTxRate(%struct.rtllib_device*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
