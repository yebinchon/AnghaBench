; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_fip.c_qedf_fcoe_process_vlan_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_fip.c_qedf_fcoe_process_vlan_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i64, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.fip_header = type { i32 }
%struct.fip_desc = type { i64, i32 }
%struct.fip_vlan_desc = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@FIP_BPW = common dso_local global i64 0, align 8
@QEDF_LINK_DOWN = common dso_local global i64 0, align 8
@QEDF_LOG_DISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Dropping VLAN response as link is down.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"VLAN response, vid=0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedf_ctx*, %struct.sk_buff*)* @qedf_fcoe_process_vlan_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_fcoe_process_vlan_resp(%struct.qedf_ctx* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.qedf_ctx*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.fip_header*, align 8
  %6 = alloca %struct.fip_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = mul nsw i32 2, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr i8, i8* %13, i64 %16
  %18 = getelementptr i8, i8* %17, i64 2
  %19 = bitcast i8* %18 to %struct.fip_header*
  store %struct.fip_header* %19, %struct.fip_header** %5, align 8
  %20 = load %struct.fip_header*, %struct.fip_header** %5, align 8
  %21 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ntohs(i32 %22)
  %24 = mul nsw i32 %23, 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %8, align 8
  %26 = load %struct.fip_header*, %struct.fip_header** %5, align 8
  %27 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %26, i64 1
  %28 = bitcast %struct.fip_header* %27 to %struct.fip_desc*
  store %struct.fip_desc* %28, %struct.fip_desc** %6, align 8
  br label %29

29:                                               ; preds = %48, %2
  %30 = load i64, i64* %8, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  %33 = load %struct.fip_desc*, %struct.fip_desc** %6, align 8
  %34 = getelementptr inbounds %struct.fip_desc, %struct.fip_desc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FIP_BPW, align 8
  %37 = mul i64 %35, %36
  store i64 %37, i64* %9, align 8
  %38 = load %struct.fip_desc*, %struct.fip_desc** %6, align 8
  %39 = getelementptr inbounds %struct.fip_desc, %struct.fip_desc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %48 [
    i32 128, label %41
  ]

41:                                               ; preds = %32
  %42 = load %struct.fip_desc*, %struct.fip_desc** %6, align 8
  %43 = bitcast %struct.fip_desc* %42 to %struct.fip_vlan_desc*
  %44 = getelementptr inbounds %struct.fip_vlan_desc, %struct.fip_vlan_desc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ntohs(i32 %45)
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %32, %41
  %49 = load %struct.fip_desc*, %struct.fip_desc** %6, align 8
  %50 = bitcast %struct.fip_desc* %49 to i8*
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = bitcast i8* %52 to %struct.fip_desc*
  store %struct.fip_desc* %53, %struct.fip_desc** %6, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %8, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %8, align 8
  br label %29

57:                                               ; preds = %29
  %58 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %58, i32 0, i32 3
  %60 = call i64 @atomic_read(i32* %59)
  %61 = load i64, i64* @QEDF_LINK_DOWN, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %65 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %64, i32 0, i32 2
  %66 = load i32, i32* @QEDF_LOG_DISC, align 4
  %67 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %65, i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %95

68:                                               ; preds = %57
  %69 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %69, i32 0, i32 2
  %71 = load i32, i32* @QEDF_LOG_DISC, align 4
  %72 = load i64, i64* %7, align 8
  %73 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %70, i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  %74 = load i64, i64* %7, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %68
  %77 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %78 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %76
  %83 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @qedf_set_vlan_id(%struct.qedf_ctx* %83, i64 %84)
  %86 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %87 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %86, i32 0, i32 1
  %88 = call i32 @completion_done(i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %82
  %91 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %92 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %91, i32 0, i32 1
  %93 = call i32 @complete(i32* %92)
  br label %94

94:                                               ; preds = %90, %82
  br label %95

95:                                               ; preds = %63, %94, %76, %68
  ret void
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, ...) #1

declare dso_local i32 @qedf_set_vlan_id(%struct.qedf_ctx*, i64) #1

declare dso_local i32 @completion_done(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
