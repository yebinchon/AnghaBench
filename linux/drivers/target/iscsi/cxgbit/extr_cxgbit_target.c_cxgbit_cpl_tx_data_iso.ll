; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_cpl_tx_data_iso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_cpl_tx_data_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cxgbit_iso_info = type { i32, i32, i32, i32 }
%struct.cpl_tx_data_iso = type { i64, i8*, i8*, i8*, i8*, i8*, i32, i64, i8* }

@CXGBIT_ISO_FSLICE = common dso_local global i32 0, align 4
@CXGBIT_ISO_LSLICE = common dso_local global i32 0, align 4
@CPL_TX_DATA_ISO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.cxgbit_iso_info*)* @cxgbit_cpl_tx_data_iso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgbit_cpl_tx_data_iso(%struct.sk_buff* %0, %struct.cxgbit_iso_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.cxgbit_iso_info*, align 8
  %5 = alloca %struct.cpl_tx_data_iso*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.cxgbit_iso_info* %1, %struct.cxgbit_iso_info** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call i32 @cxgbit_skcb_submode(%struct.sk_buff* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.cxgbit_iso_info*, %struct.cxgbit_iso_info** %4, align 8
  %12 = getelementptr inbounds %struct.cxgbit_iso_info, %struct.cxgbit_iso_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CXGBIT_ISO_FSLICE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load %struct.cxgbit_iso_info*, %struct.cxgbit_iso_info** %4, align 8
  %21 = getelementptr inbounds %struct.cxgbit_iso_info, %struct.cxgbit_iso_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CXGBIT_ISO_LSLICE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = call %struct.cpl_tx_data_iso* @__skb_push(%struct.sk_buff* %29, i32 72)
  store %struct.cpl_tx_data_iso* %30, %struct.cpl_tx_data_iso** %5, align 8
  %31 = load i32, i32* @CPL_TX_DATA_ISO, align 4
  %32 = call i32 @CPL_TX_DATA_ISO_OP_V(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @CPL_TX_DATA_ISO_FIRST_V(i32 %33)
  %35 = or i32 %32, %34
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @CPL_TX_DATA_ISO_LAST_V(i32 %36)
  %38 = or i32 %35, %37
  %39 = call i32 @CPL_TX_DATA_ISO_CPLHDRLEN_V(i32 0)
  %40 = or i32 %38, %39
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 1
  %43 = call i32 @CPL_TX_DATA_ISO_HDRCRC_V(i32 %42)
  %44 = or i32 %40, %43
  %45 = load i32, i32* %6, align 4
  %46 = lshr i32 %45, 1
  %47 = and i32 %46, 1
  %48 = call i32 @CPL_TX_DATA_ISO_PLDCRC_V(i32 %47)
  %49 = or i32 %44, %48
  %50 = call i32 @CPL_TX_DATA_ISO_IMMEDIATE_V(i32 0)
  %51 = or i32 %49, %50
  %52 = call i32 @CPL_TX_DATA_ISO_SCSI_V(i32 2)
  %53 = or i32 %51, %52
  %54 = call i8* @htonl(i32 %53)
  %55 = load %struct.cpl_tx_data_iso*, %struct.cpl_tx_data_iso** %5, align 8
  %56 = getelementptr inbounds %struct.cpl_tx_data_iso, %struct.cpl_tx_data_iso* %55, i32 0, i32 8
  store i8* %54, i8** %56, align 8
  %57 = load %struct.cpl_tx_data_iso*, %struct.cpl_tx_data_iso** %5, align 8
  %58 = getelementptr inbounds %struct.cpl_tx_data_iso, %struct.cpl_tx_data_iso* %57, i32 0, i32 7
  store i64 0, i64* %58, align 8
  %59 = load %struct.cxgbit_iso_info*, %struct.cxgbit_iso_info** %4, align 8
  %60 = getelementptr inbounds %struct.cxgbit_iso_info, %struct.cxgbit_iso_info* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @DIV_ROUND_UP(i32 %61, i32 4)
  %63 = call i32 @htons(i32 %62)
  %64 = load %struct.cpl_tx_data_iso*, %struct.cpl_tx_data_iso** %5, align 8
  %65 = getelementptr inbounds %struct.cpl_tx_data_iso, %struct.cpl_tx_data_iso* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load %struct.cxgbit_iso_info*, %struct.cxgbit_iso_info** %4, align 8
  %67 = getelementptr inbounds %struct.cxgbit_iso_info, %struct.cxgbit_iso_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @DIV_ROUND_UP(i32 %68, i32 4)
  %70 = call i8* @htonl(i32 %69)
  %71 = load %struct.cpl_tx_data_iso*, %struct.cpl_tx_data_iso** %5, align 8
  %72 = getelementptr inbounds %struct.cpl_tx_data_iso, %struct.cpl_tx_data_iso* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load %struct.cxgbit_iso_info*, %struct.cxgbit_iso_info** %4, align 8
  %74 = getelementptr inbounds %struct.cxgbit_iso_info, %struct.cxgbit_iso_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @htonl(i32 %75)
  %77 = load %struct.cpl_tx_data_iso*, %struct.cpl_tx_data_iso** %5, align 8
  %78 = getelementptr inbounds %struct.cpl_tx_data_iso, %struct.cpl_tx_data_iso* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = call i8* @htonl(i32 0)
  %80 = load %struct.cpl_tx_data_iso*, %struct.cpl_tx_data_iso** %5, align 8
  %81 = getelementptr inbounds %struct.cpl_tx_data_iso, %struct.cpl_tx_data_iso* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = call i8* @htonl(i32 0)
  %83 = load %struct.cpl_tx_data_iso*, %struct.cpl_tx_data_iso** %5, align 8
  %84 = getelementptr inbounds %struct.cpl_tx_data_iso, %struct.cpl_tx_data_iso* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = call i8* @htonl(i32 0)
  %86 = load %struct.cpl_tx_data_iso*, %struct.cpl_tx_data_iso** %5, align 8
  %87 = getelementptr inbounds %struct.cpl_tx_data_iso, %struct.cpl_tx_data_iso* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.cpl_tx_data_iso*, %struct.cpl_tx_data_iso** %5, align 8
  %89 = getelementptr inbounds %struct.cpl_tx_data_iso, %struct.cpl_tx_data_iso* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %91 = call i32 @__skb_pull(%struct.sk_buff* %90, i32 72)
  ret void
}

declare dso_local i32 @cxgbit_skcb_submode(%struct.sk_buff*) #1

declare dso_local %struct.cpl_tx_data_iso* @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @CPL_TX_DATA_ISO_OP_V(i32) #1

declare dso_local i32 @CPL_TX_DATA_ISO_FIRST_V(i32) #1

declare dso_local i32 @CPL_TX_DATA_ISO_LAST_V(i32) #1

declare dso_local i32 @CPL_TX_DATA_ISO_CPLHDRLEN_V(i32) #1

declare dso_local i32 @CPL_TX_DATA_ISO_HDRCRC_V(i32) #1

declare dso_local i32 @CPL_TX_DATA_ISO_PLDCRC_V(i32) #1

declare dso_local i32 @CPL_TX_DATA_ISO_IMMEDIATE_V(i32) #1

declare dso_local i32 @CPL_TX_DATA_ISO_SCSI_V(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
