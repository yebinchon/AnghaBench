; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_fcoe_handle_fip_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_fcoe_handle_fip_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.fip_header = type { i64, i32, i32, i32, i32 }

@FIP_VER = common dso_local global i64 0, align 8
@FIP_BPW = common dso_local global i32 0, align 4
@FIP_OP_DISC = common dso_local global i64 0, align 8
@FIP_SC_ADV = common dso_local global i64 0, align 8
@FIP_OP_VLAN = common dso_local global i64 0, align 8
@FIP_SC_VL_NOTE = common dso_local global i64 0, align 8
@FIP_OP_CTRL = common dso_local global i64 0, align 8
@FIP_SC_CLR_VLINK = common dso_local global i64 0, align 8
@FNIC_EVT_START_VLAN_DISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fnic*, %struct.sk_buff*)* @fnic_fcoe_handle_fip_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_fcoe_handle_fip_frame(%struct.fnic* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fnic*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.fip_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.fnic* %0, %struct.fnic** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 1, i32* %7, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  store i32 -1, i32* %3, align 4
  br label %105

18:                                               ; preds = %12
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i64 @skb_linearize(%struct.sk_buff* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %103

23:                                               ; preds = %18
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.fip_header*
  store %struct.fip_header* %27, %struct.fip_header** %6, align 8
  %28 = load %struct.fip_header*, %struct.fip_header** %6, align 8
  %29 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ntohs(i32 %30)
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %8, align 8
  %33 = load %struct.fip_header*, %struct.fip_header** %6, align 8
  %34 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load %struct.fip_header*, %struct.fip_header** %6, align 8
  %37 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @FIP_VER_DECAPS(i32 %38)
  %40 = load i64, i64* @FIP_VER, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %23
  br label %103

43:                                               ; preds = %23
  %44 = load %struct.fip_header*, %struct.fip_header** %6, align 8
  %45 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ntohs(i32 %46)
  %48 = load i32, i32* @FIP_BPW, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 24
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = icmp ugt i64 %51, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  br label %103

58:                                               ; preds = %43
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @FIP_OP_DISC, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @FIP_SC_ADV, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load %struct.fnic*, %struct.fnic** %4, align 8
  %68 = load %struct.fip_header*, %struct.fip_header** %6, align 8
  %69 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ntohs(i32 %70)
  %72 = call i64 @fnic_fcoe_vlan_check(%struct.fnic* %67, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %103

75:                                               ; preds = %66
  store i32 1, i32* %7, align 4
  br label %102

76:                                               ; preds = %62, %58
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @FIP_OP_VLAN, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @FIP_SC_VL_NOTE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.fnic*, %struct.fnic** %4, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = call i32 @fnic_fcoe_process_vlan_resp(%struct.fnic* %85, %struct.sk_buff* %86)
  store i32 0, i32* %7, align 4
  br label %101

88:                                               ; preds = %80, %76
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* @FIP_OP_CTRL, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* @FIP_SC_CLR_VLINK, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load %struct.fnic*, %struct.fnic** %4, align 8
  %98 = load i32, i32* @FNIC_EVT_START_VLAN_DISC, align 4
  %99 = call i32 @fnic_event_enq(%struct.fnic* %97, i32 %98)
  store i32 1, i32* %7, align 4
  br label %100

100:                                              ; preds = %96, %92, %88
  br label %101

101:                                              ; preds = %100, %84
  br label %102

102:                                              ; preds = %101, %75
  br label %103

103:                                              ; preds = %102, %74, %57, %42, %22
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %17
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @FIP_VER_DECAPS(i32) #1

declare dso_local i64 @fnic_fcoe_vlan_check(%struct.fnic*, i32) #1

declare dso_local i32 @fnic_fcoe_process_vlan_resp(%struct.fnic*, %struct.sk_buff*) #1

declare dso_local i32 @fnic_event_enq(%struct.fnic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
