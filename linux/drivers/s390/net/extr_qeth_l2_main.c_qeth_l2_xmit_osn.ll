; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_xmit_osn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_xmit_osn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.qeth_qdio_out_q = type { i32 }
%struct.qeth_hdr = type { i32 }

@ETH_P_IPV6 = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@qeth_core_header_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.sk_buff*, %struct.qeth_qdio_out_q*)* @qeth_l2_xmit_osn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_xmit_osn(%struct.qeth_card* %0, %struct.sk_buff* %1, %struct.qeth_qdio_out_q* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.qeth_qdio_out_q*, align 8
  %8 = alloca %struct.qeth_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.qeth_qdio_out_q* %2, %struct.qeth_qdio_out_q** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.qeth_hdr*
  store %struct.qeth_hdr* %17, %struct.qeth_hdr** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @ETH_P_IPV6, align 4
  %31 = call i64 @htons(i32 %30)
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EPROTONOSUPPORT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %95

36:                                               ; preds = %3
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @qeth_get_elements_for_range(i32 %37, i32 %38)
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load i32, i32* @qeth_core_header_cache, align 4
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call %struct.qeth_hdr* @kmem_cache_alloc(i32 %42, i32 %43)
  store %struct.qeth_hdr* %44, %struct.qeth_hdr** %8, align 8
  %45 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %46 = icmp ne %struct.qeth_hdr* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %95

50:                                               ; preds = %41
  store i32 4, i32* %12, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %53 = bitcast %struct.qeth_hdr* %52 to i8*
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %51, i8* %53, i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %50, %36
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i64 @qeth_count_elements(%struct.sk_buff* %59, i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %7, align 8
  %68 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ugt i32 %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %58
  %72 = load i32, i32* @E2BIG, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %13, align 4
  br label %83

74:                                               ; preds = %58
  %75 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %76 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %7, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @qeth_do_send_packet(%struct.qeth_card* %75, %struct.qeth_qdio_out_q* %76, %struct.sk_buff* %77, %struct.qeth_hdr* %78, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %74, %71
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* @qeth_core_header_cache, align 4
  %91 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %92 = call i32 @kmem_cache_free(i32 %90, %struct.qeth_hdr* %91)
  br label %93

93:                                               ; preds = %89, %86, %83
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %47, %33
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @qeth_get_elements_for_range(i32, i32) #1

declare dso_local %struct.qeth_hdr* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i64 @qeth_count_elements(%struct.sk_buff*, i32) #1

declare dso_local i32 @qeth_do_send_packet(%struct.qeth_card*, %struct.qeth_qdio_out_q*, %struct.sk_buff*, %struct.qeth_hdr*, i32, i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.qeth_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
