; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_process_lro_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_process_lro_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.cxgbit_lro_cb = type { i32, i32 }
%struct.cxgbit_lro_pdu_cb = type { i32, i32 }

@PDUCBF_RX_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_sock*, %struct.sk_buff*)* @cxgbit_process_lro_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_process_lro_skb(%struct.cxgbit_sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cxgbit_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cxgbit_lro_cb*, align 8
  %6 = alloca %struct.cxgbit_lro_pdu_cb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.cxgbit_lro_cb* @cxgbit_skb_lro_cb(%struct.sk_buff* %11)
  store %struct.cxgbit_lro_cb* %12, %struct.cxgbit_lro_cb** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.cxgbit_lro_pdu_cb* @cxgbit_skb_lro_pdu_cb(%struct.sk_buff* %13, i32 0)
  store %struct.cxgbit_lro_pdu_cb* %14, %struct.cxgbit_lro_pdu_cb** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %6, align 8
  %16 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %2
  %20 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @cxgbit_lro_skb_merge(%struct.cxgbit_sock* %20, %struct.sk_buff* %21, i32 0)
  %23 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %6, align 8
  %24 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PDUCBF_RX_STATUS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %19
  %30 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %31 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %30, i32 0, i32 0
  %32 = load %struct.sk_buff*, %struct.sk_buff** %31, align 8
  store %struct.sk_buff* %32, %struct.sk_buff** %10, align 8
  %33 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %35 = call i32 @cxgbit_process_iscsi_pdu(%struct.cxgbit_sock* %33, %struct.sk_buff* %34, i32 0)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %37 = call i32 @cxgbit_lro_hskb_reset(%struct.cxgbit_sock* %36)
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %88

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %19
  store i32 1, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.cxgbit_lro_cb*, %struct.cxgbit_lro_cb** %5, align 8
  %45 = getelementptr inbounds %struct.cxgbit_lro_cb, %struct.cxgbit_lro_cb* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.cxgbit_lro_cb*, %struct.cxgbit_lro_cb** %5, align 8
  %50 = getelementptr inbounds %struct.cxgbit_lro_cb, %struct.cxgbit_lro_cb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %67, %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @cxgbit_process_iscsi_pdu(%struct.cxgbit_sock* %59, %struct.sk_buff* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %88

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %54

70:                                               ; preds = %54
  %71 = load %struct.cxgbit_lro_cb*, %struct.cxgbit_lro_cb** %5, align 8
  %72 = getelementptr inbounds %struct.cxgbit_lro_cb, %struct.cxgbit_lro_cb* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %70
  %76 = load %struct.cxgbit_lro_cb*, %struct.cxgbit_lro_cb** %5, align 8
  %77 = getelementptr inbounds %struct.cxgbit_lro_cb, %struct.cxgbit_lro_cb* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = load %struct.cxgbit_lro_cb*, %struct.cxgbit_lro_cb** %5, align 8
  %84 = getelementptr inbounds %struct.cxgbit_lro_cb, %struct.cxgbit_lro_cb* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @cxgbit_lro_skb_merge(%struct.cxgbit_sock* %81, %struct.sk_buff* %82, i32 %85)
  br label %87

87:                                               ; preds = %80, %75, %70
  br label %88

88:                                               ; preds = %87, %65, %40
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

declare dso_local %struct.cxgbit_lro_cb* @cxgbit_skb_lro_cb(%struct.sk_buff*) #1

declare dso_local %struct.cxgbit_lro_pdu_cb* @cxgbit_skb_lro_pdu_cb(%struct.sk_buff*, i32) #1

declare dso_local i32 @cxgbit_lro_skb_merge(%struct.cxgbit_sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @cxgbit_process_iscsi_pdu(%struct.cxgbit_sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @cxgbit_lro_hskb_reset(%struct.cxgbit_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
