; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_repost_return.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_repost_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uiscmdrsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_pkt_rcv }
%struct.net_pkt_rcv = type { i32, %struct.sk_buff** }
%struct.visornic_devdata = type { i32, i32, i32, %struct.sk_buff**, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uiscmdrsp*, %struct.visornic_devdata*, %struct.sk_buff*, %struct.net_device*)* @repost_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @repost_return(%struct.uiscmdrsp* %0, %struct.visornic_devdata* %1, %struct.sk_buff* %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.uiscmdrsp*, align 8
  %6 = alloca %struct.visornic_devdata*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net_pkt_rcv, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.uiscmdrsp* %0, %struct.uiscmdrsp** %5, align 8
  store %struct.visornic_devdata* %1, %struct.visornic_devdata** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %16 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast %struct.net_pkt_rcv* %9 to i8*
  %19 = bitcast %struct.net_pkt_rcv* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false)
  %20 = getelementptr inbounds %struct.net_pkt_rcv, %struct.net_pkt_rcv* %9, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %37 [
    i32 0, label %22
    i32 1, label %27
    i32 2, label %32
  ]

22:                                               ; preds = %4
  %23 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %24 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %42

27:                                               ; preds = %4
  %28 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %29 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  br label %42

32:                                               ; preds = %4
  %33 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %34 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %42

37:                                               ; preds = %4
  %38 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %39 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %37, %32, %27, %22
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %156, %42
  %44 = load i32, i32* %11, align 4
  %45 = getelementptr inbounds %struct.net_pkt_rcv, %struct.net_pkt_rcv* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %159

48:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %152, %48
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %52 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %155

55:                                               ; preds = %49
  %56 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %57 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %56, i32 0, i32 3
  %58 = load %struct.sk_buff**, %struct.sk_buff*** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %58, i64 %60
  %62 = load %struct.sk_buff*, %struct.sk_buff** %61, align 8
  %63 = getelementptr inbounds %struct.net_pkt_rcv, %struct.net_pkt_rcv* %9, i32 0, i32 1
  %64 = load %struct.sk_buff**, %struct.sk_buff*** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %64, i64 %66
  %68 = load %struct.sk_buff*, %struct.sk_buff** %67, align 8
  %69 = icmp ne %struct.sk_buff* %62, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  br label %152

71:                                               ; preds = %55
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = icmp ne %struct.sk_buff* %72, null
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %76 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %75, i32 0, i32 3
  %77 = load %struct.sk_buff**, %struct.sk_buff*** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %77, i64 %79
  %81 = load %struct.sk_buff*, %struct.sk_buff** %80, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = icmp eq %struct.sk_buff* %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %74
  %85 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %86 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  store i32 1, i32* %13, align 4
  %89 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %90 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %84, %74, %71
  %94 = load %struct.net_device*, %struct.net_device** %8, align 8
  %95 = call %struct.sk_buff* @alloc_rcv_buf(%struct.net_device* %94)
  %96 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %97 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %96, i32 0, i32 3
  %98 = load %struct.sk_buff**, %struct.sk_buff*** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %98, i64 %100
  store %struct.sk_buff* %95, %struct.sk_buff** %101, align 8
  %102 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %103 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %102, i32 0, i32 3
  %104 = load %struct.sk_buff**, %struct.sk_buff*** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %104, i64 %106
  %108 = load %struct.sk_buff*, %struct.sk_buff** %107, align 8
  %109 = icmp ne %struct.sk_buff* %108, null
  br i1 %109, label %121, label %110

110:                                              ; preds = %93
  %111 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %112 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %116 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %14, align 4
  br label %155

121:                                              ; preds = %93
  %122 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %123 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %124 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %125 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %124, i32 0, i32 3
  %126 = load %struct.sk_buff**, %struct.sk_buff*** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %126, i64 %128
  %130 = load %struct.sk_buff*, %struct.sk_buff** %129, align 8
  %131 = call i32 @post_skb(%struct.uiscmdrsp* %122, %struct.visornic_devdata* %123, %struct.sk_buff* %130)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %121
  %135 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %136 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %135, i32 0, i32 3
  %137 = load %struct.sk_buff**, %struct.sk_buff*** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %137, i64 %139
  %141 = load %struct.sk_buff*, %struct.sk_buff** %140, align 8
  %142 = call i32 @kfree_skb(%struct.sk_buff* %141)
  %143 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %144 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %143, i32 0, i32 3
  %145 = load %struct.sk_buff**, %struct.sk_buff*** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %145, i64 %147
  store %struct.sk_buff* null, %struct.sk_buff** %148, align 8
  br label %155

149:                                              ; preds = %121
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %12, align 4
  br label %155

152:                                              ; preds = %70
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %49

155:                                              ; preds = %149, %134, %110, %49
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %43

159:                                              ; preds = %43
  %160 = load i32, i32* %12, align 4
  %161 = getelementptr inbounds %struct.net_pkt_rcv, %struct.net_pkt_rcv* %9, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %160, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %159
  %165 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %166 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %14, align 4
  br label %171

171:                                              ; preds = %164, %159
  %172 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %173 = icmp ne %struct.sk_buff* %172, null
  br i1 %173, label %174, label %188

174:                                              ; preds = %171
  %175 = load i32, i32* %13, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %179 = call i32 @kfree_skb(%struct.sk_buff* %178)
  br label %187

180:                                              ; preds = %174
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %14, align 4
  %183 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %184 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %180, %177
  br label %188

188:                                              ; preds = %187, %171
  %189 = load i32, i32* %14, align 4
  ret i32 %189
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.sk_buff* @alloc_rcv_buf(%struct.net_device*) #2

declare dso_local i32 @post_skb(%struct.uiscmdrsp*, %struct.visornic_devdata*, %struct.sk_buff*) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
