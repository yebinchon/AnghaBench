; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.fip_header = type { i32 }
%struct.fcoe_rport = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"vn_recv drop frame sub %x vlan %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"vn_recv vn_parse error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"vn_recv unknown subcode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fcoe_ctlr*, %struct.sk_buff*)* @fcoe_ctlr_vn_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcoe_ctlr_vn_recv(%struct.fcoe_ctlr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.fip_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fcoe_rport, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = bitcast %struct.fcoe_rport* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  store i32 0, i32* %9, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.fip_header*
  store %struct.fip_header* %14, %struct.fip_header** %5, align 8
  %15 = load %struct.fip_header*, %struct.fip_header** %5, align 8
  %16 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %19 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @skb_vlan_tag_get_id(%struct.sk_buff* %25)
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %33 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %31, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (%struct.fcoe_ctlr*, i8*, i32, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %83

45:                                               ; preds = %30, %27
  %46 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @fcoe_ctlr_vn_parse(%struct.fcoe_ctlr* %46, %struct.sk_buff* %47, %struct.fcoe_rport* %7)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (%struct.fcoe_ctlr*, i8*, i32, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %83

55:                                               ; preds = %45
  %56 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %57 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %56, i32 0, i32 0
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load i32, i32* %6, align 4
  switch i32 %59, label %75 [
    i32 128, label %60
    i32 129, label %63
    i32 131, label %66
    i32 130, label %69
    i32 132, label %72
  ]

60:                                               ; preds = %55
  %61 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %62 = call i32 @fcoe_ctlr_vn_probe_req(%struct.fcoe_ctlr* %61, %struct.fcoe_rport* %7)
  br label %79

63:                                               ; preds = %55
  %64 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %65 = call i32 @fcoe_ctlr_vn_probe_reply(%struct.fcoe_ctlr* %64, %struct.fcoe_rport* %7)
  br label %79

66:                                               ; preds = %55
  %67 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %68 = call i32 @fcoe_ctlr_vn_claim_notify(%struct.fcoe_ctlr* %67, %struct.fcoe_rport* %7)
  br label %79

69:                                               ; preds = %55
  %70 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %71 = call i32 @fcoe_ctlr_vn_claim_resp(%struct.fcoe_ctlr* %70, %struct.fcoe_rport* %7)
  br label %79

72:                                               ; preds = %55
  %73 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %74 = call i32 @fcoe_ctlr_vn_beacon(%struct.fcoe_ctlr* %73, %struct.fcoe_rport* %7)
  br label %79

75:                                               ; preds = %55
  %76 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (%struct.fcoe_ctlr*, i8*, i32, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  store i32 -1, i32* %8, align 4
  br label %79

79:                                               ; preds = %75, %72, %69, %66, %63, %60
  %80 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %81 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  br label %83

83:                                               ; preds = %79, %51, %38
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = call i32 @kfree_skb(%struct.sk_buff* %84)
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @skb_vlan_tag_get_id(%struct.sk_buff*) #2

declare dso_local i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr*, i8*, i32, ...) #2

declare dso_local i32 @fcoe_ctlr_vn_parse(%struct.fcoe_ctlr*, %struct.sk_buff*, %struct.fcoe_rport*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @fcoe_ctlr_vn_probe_req(%struct.fcoe_ctlr*, %struct.fcoe_rport*) #2

declare dso_local i32 @fcoe_ctlr_vn_probe_reply(%struct.fcoe_ctlr*, %struct.fcoe_rport*) #2

declare dso_local i32 @fcoe_ctlr_vn_claim_notify(%struct.fcoe_ctlr*, %struct.fcoe_rport*) #2

declare dso_local i32 @fcoe_ctlr_vn_claim_resp(%struct.fcoe_ctlr*, %struct.fcoe_rport*) #2

declare dso_local i32 @fcoe_ctlr_vn_beacon(%struct.fcoe_ctlr*, %struct.fcoe_rport*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
