; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_apr.c_apr_do_rx_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_apr.c_apr_do_rx_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apr = type { i32, i32, i32 }
%struct.apr_rx_buf = type { i32, i8* }
%struct.apr_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.apr_driver = type { i32 (%struct.apr_device.0*, %struct.apr_resp_pkt*)* }
%struct.apr_device.0 = type opaque
%struct.apr_resp_pkt = type { i64, i8*, %struct.apr_hdr }
%struct.apr_hdr = type { i64, i64, i64, i64, i64, i32 }

@APR_PKT_VER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@APR_HDR_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"APR: Wrong hdr size:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"APR: Wrong packet size\0A\00", align 1
@APR_MSG_TYPE_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"APR: Wrong message type: %d\0A\00", align 1
@APR_DOMAIN_MAX = common dso_local global i64 0, align 8
@APR_SVC_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"APR: Wrong APR header\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"APR: service is not registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apr*, %struct.apr_rx_buf*)* @apr_do_rx_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apr_do_rx_callback(%struct.apr* %0, %struct.apr_rx_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apr*, align 8
  %5 = alloca %struct.apr_rx_buf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.apr_device*, align 8
  %11 = alloca %struct.apr_driver*, align 8
  %12 = alloca %struct.apr_resp_pkt, align 8
  %13 = alloca %struct.apr_hdr*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.apr* %0, %struct.apr** %4, align 8
  store %struct.apr_rx_buf* %1, %struct.apr_rx_buf** %5, align 8
  store %struct.apr_device* null, %struct.apr_device** %10, align 8
  store %struct.apr_driver* null, %struct.apr_driver** %11, align 8
  %17 = load %struct.apr_rx_buf*, %struct.apr_rx_buf** %5, align 8
  %18 = getelementptr inbounds %struct.apr_rx_buf, %struct.apr_rx_buf* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %15, align 8
  %20 = load %struct.apr_rx_buf*, %struct.apr_rx_buf** %5, align 8
  %21 = getelementptr inbounds %struct.apr_rx_buf, %struct.apr_rx_buf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %16, align 4
  %23 = load i8*, i8** %15, align 8
  %24 = bitcast i8* %23 to %struct.apr_hdr*
  store %struct.apr_hdr* %24, %struct.apr_hdr** %13, align 8
  %25 = load %struct.apr_hdr*, %struct.apr_hdr** %13, align 8
  %26 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @APR_HDR_FIELD_VER(i32 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @APR_PKT_VER, align 8
  %31 = add nsw i64 %30, 1
  %32 = icmp sgt i64 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %185

36:                                               ; preds = %2
  %37 = load %struct.apr_hdr*, %struct.apr_hdr** %13, align 8
  %38 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @APR_HDR_FIELD_SIZE_BYTES(i32 %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @APR_HDR_SIZE, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load %struct.apr*, %struct.apr** %4, align 8
  %46 = getelementptr inbounds %struct.apr, %struct.apr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %6, align 8
  %49 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %185

52:                                               ; preds = %36
  %53 = load %struct.apr_hdr*, %struct.apr_hdr** %13, align 8
  %54 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @APR_HDR_SIZE, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = load %struct.apr_hdr*, %struct.apr_hdr** %13, align 8
  %60 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ne i64 %61, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %58, %52
  %66 = load %struct.apr*, %struct.apr** %4, align 8
  %67 = getelementptr inbounds %struct.apr, %struct.apr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @dev_err(i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %185

72:                                               ; preds = %58
  %73 = load %struct.apr_hdr*, %struct.apr_hdr** %13, align 8
  %74 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @APR_HDR_FIELD_MT(i32 %75)
  store i64 %76, i64* %7, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @APR_MSG_TYPE_MAX, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load %struct.apr*, %struct.apr** %4, align 8
  %82 = getelementptr inbounds %struct.apr, %struct.apr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %7, align 8
  %85 = call i32 (i32, i8*, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %185

88:                                               ; preds = %72
  %89 = load %struct.apr_hdr*, %struct.apr_hdr** %13, align 8
  %90 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @APR_DOMAIN_MAX, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %112, label %94

94:                                               ; preds = %88
  %95 = load %struct.apr_hdr*, %struct.apr_hdr** %13, align 8
  %96 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @APR_DOMAIN_MAX, align 8
  %99 = icmp sge i64 %97, %98
  br i1 %99, label %112, label %100

100:                                              ; preds = %94
  %101 = load %struct.apr_hdr*, %struct.apr_hdr** %13, align 8
  %102 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @APR_SVC_MAX, align 8
  %105 = icmp sge i64 %103, %104
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load %struct.apr_hdr*, %struct.apr_hdr** %13, align 8
  %108 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @APR_SVC_MAX, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %106, %100, %94, %88
  %113 = load %struct.apr*, %struct.apr** %4, align 8
  %114 = getelementptr inbounds %struct.apr, %struct.apr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @dev_err(i32 %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %185

119:                                              ; preds = %106
  %120 = load %struct.apr_hdr*, %struct.apr_hdr** %13, align 8
  %121 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %9, align 8
  %123 = load %struct.apr*, %struct.apr** %4, align 8
  %124 = getelementptr inbounds %struct.apr, %struct.apr* %123, i32 0, i32 1
  %125 = load i64, i64* %14, align 8
  %126 = call i32 @spin_lock_irqsave(i32* %124, i64 %125)
  %127 = load %struct.apr*, %struct.apr** %4, align 8
  %128 = getelementptr inbounds %struct.apr, %struct.apr* %127, i32 0, i32 2
  %129 = load i64, i64* %9, align 8
  %130 = call %struct.apr_device* @idr_find(i32* %128, i64 %129)
  store %struct.apr_device* %130, %struct.apr_device** %10, align 8
  %131 = load %struct.apr_device*, %struct.apr_device** %10, align 8
  %132 = icmp ne %struct.apr_device* %131, null
  br i1 %132, label %133, label %145

133:                                              ; preds = %119
  %134 = load %struct.apr_device*, %struct.apr_device** %10, align 8
  %135 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load %struct.apr_device*, %struct.apr_device** %10, align 8
  %141 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call %struct.apr_driver* @to_apr_driver(i64 %143)
  store %struct.apr_driver* %144, %struct.apr_driver** %11, align 8
  br label %145

145:                                              ; preds = %139, %133, %119
  %146 = load %struct.apr*, %struct.apr** %4, align 8
  %147 = getelementptr inbounds %struct.apr, %struct.apr* %146, i32 0, i32 1
  %148 = load i64, i64* %14, align 8
  %149 = call i32 @spin_unlock_irqrestore(i32* %147, i64 %148)
  %150 = load %struct.apr_driver*, %struct.apr_driver** %11, align 8
  %151 = icmp ne %struct.apr_driver* %150, null
  br i1 %151, label %159, label %152

152:                                              ; preds = %145
  %153 = load %struct.apr*, %struct.apr** %4, align 8
  %154 = getelementptr inbounds %struct.apr, %struct.apr* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32, i8*, ...) @dev_err(i32 %155, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %3, align 4
  br label %185

159:                                              ; preds = %145
  %160 = getelementptr inbounds %struct.apr_resp_pkt, %struct.apr_resp_pkt* %12, i32 0, i32 2
  %161 = load %struct.apr_hdr*, %struct.apr_hdr** %13, align 8
  %162 = bitcast %struct.apr_hdr* %160 to i8*
  %163 = bitcast %struct.apr_hdr* %161 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %162, i8* align 8 %163, i64 48, i1 false)
  %164 = load %struct.apr_hdr*, %struct.apr_hdr** %13, align 8
  %165 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %6, align 8
  %168 = sub nsw i64 %166, %167
  %169 = getelementptr inbounds %struct.apr_resp_pkt, %struct.apr_resp_pkt* %12, i32 0, i32 0
  store i64 %168, i64* %169, align 8
  %170 = getelementptr inbounds %struct.apr_resp_pkt, %struct.apr_resp_pkt* %12, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp sgt i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %159
  %174 = load i8*, i8** %15, align 8
  %175 = load i64, i64* %6, align 8
  %176 = getelementptr i8, i8* %174, i64 %175
  %177 = getelementptr inbounds %struct.apr_resp_pkt, %struct.apr_resp_pkt* %12, i32 0, i32 1
  store i8* %176, i8** %177, align 8
  br label %178

178:                                              ; preds = %173, %159
  %179 = load %struct.apr_driver*, %struct.apr_driver** %11, align 8
  %180 = getelementptr inbounds %struct.apr_driver, %struct.apr_driver* %179, i32 0, i32 0
  %181 = load i32 (%struct.apr_device.0*, %struct.apr_resp_pkt*)*, i32 (%struct.apr_device.0*, %struct.apr_resp_pkt*)** %180, align 8
  %182 = load %struct.apr_device*, %struct.apr_device** %10, align 8
  %183 = bitcast %struct.apr_device* %182 to %struct.apr_device.0*
  %184 = call i32 %181(%struct.apr_device.0* %183, %struct.apr_resp_pkt* %12)
  store i32 0, i32* %3, align 4
  br label %185

185:                                              ; preds = %178, %152, %112, %80, %65, %44, %33
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i64 @APR_HDR_FIELD_VER(i32) #1

declare dso_local i64 @APR_HDR_FIELD_SIZE_BYTES(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @APR_HDR_FIELD_MT(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.apr_device* @idr_find(i32*, i64) #1

declare dso_local %struct.apr_driver* @to_apr_driver(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
