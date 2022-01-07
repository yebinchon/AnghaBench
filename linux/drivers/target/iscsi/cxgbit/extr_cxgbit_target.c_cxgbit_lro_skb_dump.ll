; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_lro_skb_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_lro_skb_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.skb_shared_info = type { i64, i32* }
%struct.cxgbit_lro_cb = type { i64, i64, i32 }
%struct.cxgbit_lro_pdu_cb = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"skb 0x%p, head 0x%p, 0x%p, len %u,%u, frags %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"skb 0x%p, lro_cb, csk 0x%p, pdu %u, %u.\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"skb 0x%p, pdu %d, %u, f 0x%x, seq 0x%x, dcrc 0x%x, frags %u.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"skb 0x%p, frag %d, off %u, sz %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @cxgbit_lro_skb_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgbit_lro_skb_dump(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.skb_shared_info*, align 8
  %4 = alloca %struct.cxgbit_lro_cb*, align 8
  %5 = alloca %struct.cxgbit_lro_pdu_cb*, align 8
  %6 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %7)
  store %struct.skb_shared_info* %8, %struct.skb_shared_info** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %10 = call %struct.cxgbit_lro_cb* @cxgbit_skb_lro_cb(%struct.sk_buff* %9)
  store %struct.cxgbit_lro_cb* %10, %struct.cxgbit_lro_cb** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %12 = call %struct.cxgbit_lro_pdu_cb* @cxgbit_skb_lro_pdu_cb(%struct.sk_buff* %11, i32 0)
  store %struct.cxgbit_lro_pdu_cb* %12, %struct.cxgbit_lro_pdu_cb** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.skb_shared_info*, %struct.skb_shared_info** %3, align 8
  %29 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i8*, %struct.sk_buff*, i64, i64, i32, ...) @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %13, i64 %17, i64 %21, i32 %24, i32 %27, i64 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = load %struct.cxgbit_lro_cb*, %struct.cxgbit_lro_cb** %4, align 8
  %34 = getelementptr inbounds %struct.cxgbit_lro_cb, %struct.cxgbit_lro_cb* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.cxgbit_lro_cb*, %struct.cxgbit_lro_cb** %4, align 8
  %37 = getelementptr inbounds %struct.cxgbit_lro_cb, %struct.cxgbit_lro_cb* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.cxgbit_lro_cb*, %struct.cxgbit_lro_cb** %4, align 8
  %40 = getelementptr inbounds %struct.cxgbit_lro_cb, %struct.cxgbit_lro_cb* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i8*, %struct.sk_buff*, i64, i64, i32, ...) @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %32, i64 %35, i64 %38, i32 %41)
  store i64 0, i64* %6, align 8
  br label %43

43:                                               ; preds = %69, %1
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.cxgbit_lro_cb*, %struct.cxgbit_lro_cb** %4, align 8
  %46 = getelementptr inbounds %struct.cxgbit_lro_cb, %struct.cxgbit_lro_cb* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %43
  %50 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %5, align 8
  %53 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %5, align 8
  %57 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %5, align 8
  %60 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %5, align 8
  %63 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %5, align 8
  %66 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, %struct.sk_buff*, i64, i64, i32, ...) @pr_info(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %50, i64 %51, i64 %55, i32 %58, i32 %61, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %49
  %70 = load i64, i64* %6, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %6, align 8
  %72 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %5, align 8
  %73 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %72, i32 1
  store %struct.cxgbit_lro_pdu_cb* %73, %struct.cxgbit_lro_pdu_cb** %5, align 8
  br label %43

74:                                               ; preds = %43
  store i64 0, i64* %6, align 8
  br label %75

75:                                               ; preds = %97, %74
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.skb_shared_info*, %struct.skb_shared_info** %3, align 8
  %78 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %75
  %82 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.skb_shared_info*, %struct.skb_shared_info** %3, align 8
  %85 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = call i64 @skb_frag_off(i32* %88)
  %90 = load %struct.skb_shared_info*, %struct.skb_shared_info** %3, align 8
  %91 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = call i32 @skb_frag_size(i32* %94)
  %96 = call i32 (i8*, %struct.sk_buff*, i64, i64, i32, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), %struct.sk_buff* %82, i64 %83, i64 %89, i32 %95)
  br label %97

97:                                               ; preds = %81
  %98 = load i64, i64* %6, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %6, align 8
  br label %75

100:                                              ; preds = %75
  ret void
}

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.cxgbit_lro_cb* @cxgbit_skb_lro_cb(%struct.sk_buff*) #1

declare dso_local %struct.cxgbit_lro_pdu_cb* @cxgbit_skb_lro_pdu_cb(%struct.sk_buff*, i32) #1

declare dso_local i32 @pr_info(i8*, %struct.sk_buff*, i64, i64, i32, ...) #1

declare dso_local i64 @skb_frag_off(i32*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
