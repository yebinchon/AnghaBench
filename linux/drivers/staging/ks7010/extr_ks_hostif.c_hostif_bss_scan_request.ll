; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_bss_scan_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_bss_scan_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i64, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.hostif_bss_scan_request = type { i64, %struct.TYPE_7__, %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32*, i32 }

@HIF_SCAN_REQ = common dso_local global i32 0, align 4
@D_11G_ONLY_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*, i64, i32*, i32)* @hostif_bss_scan_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_bss_scan_request(%struct.ks_wlan_private* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ks_wlan_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hostif_bss_scan_request*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @HIF_SCAN_REQ, align 4
  %11 = call %struct.hostif_bss_scan_request* @hostif_generic_request(i32 56, i32 %10)
  store %struct.hostif_bss_scan_request* %11, %struct.hostif_bss_scan_request** %9, align 8
  %12 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %13 = icmp ne %struct.hostif_bss_scan_request* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %141

15:                                               ; preds = %4
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %18 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = call i8* @cpu_to_le32(i32 110)
  %20 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %21 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = call i8* @cpu_to_le32(i32 130)
  %23 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %24 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %26 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %31 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 8, i32* %34, align 4
  %35 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %36 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 2, i32* %39, align 4
  %40 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %41 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 9, i32* %44, align 4
  %45 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %46 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32 3, i32* %49, align 4
  %50 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %51 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  store i32 10, i32* %54, align 4
  %55 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %56 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 6
  store i32 4, i32* %59, align 4
  %60 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %61 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 7
  store i32 11, i32* %64, align 4
  %65 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %66 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 8
  store i32 5, i32* %69, align 4
  %70 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %71 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 9
  store i32 12, i32* %74, align 4
  %75 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %76 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 10
  store i32 6, i32* %79, align 4
  %80 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %81 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 11
  store i32 13, i32* %84, align 4
  %85 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %86 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 12
  store i32 7, i32* %89, align 4
  %90 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %91 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @D_11G_ONLY_MODE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %15
  %97 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %98 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i32 13, i32* %99, align 8
  br label %109

100:                                              ; preds = %15
  %101 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %102 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 13
  store i32 14, i32* %105, align 4
  %106 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %107 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i32 14, i32* %108, align 8
  br label %109

109:                                              ; preds = %100, %96
  %110 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %111 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  %113 = load i32, i32* %8, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %109
  %116 = load i32, i32* %8, align 4
  %117 = icmp sle i32 %116, 32
  br i1 %117, label %118, label %131

118:                                              ; preds = %115
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %121 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %124 = getelementptr inbounds %struct.hostif_bss_scan_request, %struct.hostif_bss_scan_request* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @memcpy(i32* %127, i32* %128, i32 %129)
  br label %131

131:                                              ; preds = %118, %115, %109
  %132 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %133 = load %struct.hostif_bss_scan_request*, %struct.hostif_bss_scan_request** %9, align 8
  %134 = call i32 @hif_align_size(i32 56)
  %135 = call i32 @send_request_to_device(%struct.ks_wlan_private* %132, %struct.hostif_bss_scan_request* %133, i32 %134)
  %136 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %137 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i64 0, i64* %138, align 8
  %139 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %140 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %139, i32 0, i32 0
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %131, %14
  ret void
}

declare dso_local %struct.hostif_bss_scan_request* @hostif_generic_request(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @send_request_to_device(%struct.ks_wlan_private*, %struct.hostif_bss_scan_request*, i32) #1

declare dso_local i32 @hif_align_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
