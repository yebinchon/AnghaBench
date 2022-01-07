; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_add_hw_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_add_hw_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.qeth_hdr = type { i32 }

@.str = private unnamed_addr constant [69 x i8] c"Dropped an oversized skb (Max Elements=%u / Actual=%u / Length=%u).\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@skbs_linearized_fail = common dso_local global i32 0, align 4
@skbs_linearized = common dso_local global i32 0, align 4
@QETH_HDR_CACHE_OBJ_SIZE = common dso_local global i32 0, align 4
@qeth_core_header_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_qdio_out_q*, %struct.sk_buff*, %struct.qeth_hdr**, i32, i32, i32*)* @qeth_add_hw_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_add_hw_header(%struct.qeth_qdio_out_q* %0, %struct.sk_buff* %1, %struct.qeth_hdr** %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qeth_qdio_out_q*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.qeth_hdr**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.qeth_hdr** %2, %struct.qeth_hdr*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* %12, align 4
  br label %26

25:                                               ; preds = %6
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 1, %25 ]
  store i32 %27, i32* %14, align 4
  %28 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %29 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %15, align 4
  br label %31

31:                                               ; preds = %107, %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = zext i32 %35 to i64
  %37 = sub nsw i64 %34, %36
  store i64 %37, i64* %17, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %18, align 8
  %41 = load i64, i64* %17, align 8
  %42 = load i64, i64* %18, align 8
  %43 = load i32, i32* %14, align 4
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = call i32 @qeth_get_elements_for_range(i64 %41, i64 %45)
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %61

48:                                               ; preds = %31
  store i32 1, i32* %19, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = call i64 @skb_is_gso(%struct.sk_buff* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @qeth_count_elements(%struct.sk_buff* %53, i32 %54)
  %56 = add nsw i32 1, %55
  store i32 %56, i32* %16, align 4
  br label %60

57:                                               ; preds = %48
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = call i32 @qeth_count_elements(%struct.sk_buff* %58, i32 0)
  store i32 %59, i32* %16, align 4
  br label %60

60:                                               ; preds = %57, %52
  br label %80

61:                                               ; preds = %31
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %61
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @PAGE_ALIGNED(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  store i32 1, i32* %19, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = call i32 @qeth_count_elements(%struct.sk_buff* %71, i32 0)
  %73 = add nsw i32 1, %72
  store i32 %73, i32* %16, align 4
  br label %79

74:                                               ; preds = %64, %61
  store i32 0, i32* %19, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @qeth_count_elements(%struct.sk_buff* %75, i32 %76)
  %78 = add nsw i32 1, %77
  store i32 %78, i32* %16, align 4
  br label %79

79:                                               ; preds = %74, %70
  br label %80

80:                                               ; preds = %79, %60
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp ugt i32 %81, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %80
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = call i32 @skb_is_nonlinear(%struct.sk_buff* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90, i32 %93)
  %95 = load i32, i32* @E2BIG, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %7, align 4
  br label %152

97:                                               ; preds = %84
  %98 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %99 = call i32 @skb_linearize(%struct.sk_buff* %98)
  store i32 %99, i32* %20, align 4
  %100 = load i32, i32* %20, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %104 = load i32, i32* @skbs_linearized_fail, align 4
  %105 = call i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q* %103, i32 %104)
  %106 = load i32, i32* %20, align 4
  store i32 %106, i32* %7, align 4
  br label %152

107:                                              ; preds = %97
  %108 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %109 = load i32, i32* @skbs_linearized, align 4
  %110 = call i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q* %108, i32 %109)
  br label %31

111:                                              ; preds = %80
  %112 = load i32, i32* %16, align 4
  %113 = load i32*, i32** %13, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* %19, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call %struct.qeth_hdr* @skb_push(%struct.sk_buff* %117, i32 %118)
  %120 = load %struct.qeth_hdr**, %struct.qeth_hdr*** %10, align 8
  store %struct.qeth_hdr* %119, %struct.qeth_hdr** %120, align 8
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %7, align 4
  br label %152

122:                                              ; preds = %111
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  %125 = add i32 %123, %124
  %126 = load i32, i32* @QETH_HDR_CACHE_OBJ_SIZE, align 4
  %127 = icmp ugt i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32, i32* @E2BIG, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %7, align 4
  br label %152

131:                                              ; preds = %122
  %132 = load i32, i32* @qeth_core_header_cache, align 4
  %133 = load i32, i32* @GFP_ATOMIC, align 4
  %134 = call %struct.qeth_hdr* @kmem_cache_alloc(i32 %132, i32 %133)
  %135 = load %struct.qeth_hdr**, %struct.qeth_hdr*** %10, align 8
  store %struct.qeth_hdr* %134, %struct.qeth_hdr** %135, align 8
  %136 = load %struct.qeth_hdr**, %struct.qeth_hdr*** %10, align 8
  %137 = load %struct.qeth_hdr*, %struct.qeth_hdr** %136, align 8
  %138 = icmp ne %struct.qeth_hdr* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %131
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %7, align 4
  br label %152

142:                                              ; preds = %131
  %143 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %144 = load %struct.qeth_hdr**, %struct.qeth_hdr*** %10, align 8
  %145 = load %struct.qeth_hdr*, %struct.qeth_hdr** %144, align 8
  %146 = bitcast %struct.qeth_hdr* %145 to i8*
  %147 = load i32, i32* %11, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %143, i8* %149, i32 %150)
  store i32 0, i32* %7, align 4
  br label %152

152:                                              ; preds = %142, %139, %128, %116, %102, %88
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @qeth_get_elements_for_range(i64, i64) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @qeth_count_elements(%struct.sk_buff*, i32) #1

declare dso_local i64 @PAGE_ALIGNED(i64) #1

declare dso_local i32 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q*, i32) #1

declare dso_local %struct.qeth_hdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.qeth_hdr* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
