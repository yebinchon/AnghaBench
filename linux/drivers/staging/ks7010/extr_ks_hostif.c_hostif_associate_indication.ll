; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_associate_indication.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_associate_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32, i64 }
%struct.association_request = type { i32 }
%struct.association_response = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IW_CUSTOM_MAX = common dso_local global i32 0, align 4
@hostif_associate_indication.associnfo_leader0 = internal constant [18 x i8] c"ASSOCINFO(ReqIEs=\00", align 16
@hostif_associate_indication.associnfo_leader1 = internal constant [10 x i8] c" RespIEs=\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@IWEVCUSTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*)* @hostif_associate_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_associate_indication(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  %3 = alloca %struct.association_request*, align 8
  %4 = alloca %struct.association_response*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %union.iwreq_data, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  %11 = load i32, i32* @IW_CUSTOM_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8* %15, i8** %9, align 8
  %16 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %17 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.association_request*
  store %struct.association_request* %19, %struct.association_request** %3, align 8
  %20 = load %struct.association_request*, %struct.association_request** %3, align 8
  %21 = getelementptr inbounds %struct.association_request, %struct.association_request* %20, i64 1
  %22 = bitcast %struct.association_request* %21 to %struct.association_response*
  store %struct.association_response* %22, %struct.association_response** %4, align 8
  %23 = load %struct.association_response*, %struct.association_response** %4, align 8
  %24 = getelementptr inbounds %struct.association_response, %struct.association_response* %23, i64 1
  %25 = bitcast %struct.association_response* %24 to i8*
  store i8* %25, i8** %5, align 8
  %26 = call i32 @memset(%union.iwreq_data* %6, i32 0, i32 4)
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @memcpy(i8* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @hostif_associate_indication.associnfo_leader0, i64 0, i64 0), i32 17)
  %29 = bitcast %union.iwreq_data* %6 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, 17
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 17
  store i8* %36, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %56, %1
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.association_request*, %struct.association_request** %3, align 8
  %40 = getelementptr inbounds %struct.association_request, %struct.association_request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i8*, i8** %9, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %9, align 8
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %37

59:                                               ; preds = %37
  %60 = load %struct.association_request*, %struct.association_request** %3, align 8
  %61 = getelementptr inbounds %struct.association_request, %struct.association_request* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le16_to_cpu(i32 %62)
  %64 = mul nsw i32 %63, 2
  %65 = bitcast %union.iwreq_data* %6 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @memcpy(i8* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @hostif_associate_indication.associnfo_leader1, i64 0, i64 0), i32 9)
  %71 = bitcast %union.iwreq_data* %6 to %struct.TYPE_2__*
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %74, 9
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 4
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 9
  store i8* %78, i8** %9, align 8
  %79 = load %struct.association_request*, %struct.association_request** %3, align 8
  %80 = getelementptr inbounds %struct.association_request, %struct.association_request* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le16_to_cpu(i32 %81)
  %83 = load i8*, i8** %5, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %5, align 8
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %105, %59
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.association_response*, %struct.association_response** %4, align 8
  %89 = getelementptr inbounds %struct.association_response, %struct.association_response* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le16_to_cpu(i32 %90)
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %86
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = call i32 (i8*, i8*, ...) @sprintf(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i8*, i8** %9, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %9, align 8
  br label %105

105:                                              ; preds = %93
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %86

108:                                              ; preds = %86
  %109 = load %struct.association_response*, %struct.association_response** %4, align 8
  %110 = getelementptr inbounds %struct.association_response, %struct.association_response* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le16_to_cpu(i32 %111)
  %113 = mul nsw i32 %112, 2
  %114 = bitcast %union.iwreq_data* %6 to %struct.TYPE_2__*
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 (i8*, i8*, ...) @sprintf(i8* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i8*, i8** %9, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %9, align 8
  %123 = bitcast %union.iwreq_data* %6 to %struct.TYPE_2__*
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %128 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @IWEVCUSTOM, align 4
  %131 = call i32 @wireless_send_event(i32 %129, i32 %130, %union.iwreq_data* %6, i8* %14)
  %132 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %132)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%union.iwreq_data*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @wireless_send_event(i32, i32, %union.iwreq_data*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
