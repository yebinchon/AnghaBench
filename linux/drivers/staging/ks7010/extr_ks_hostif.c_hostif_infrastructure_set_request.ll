; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_infrastructure_set_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_infrastructure_set_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.hostif_infrastructure_set_request = type { %struct.TYPE_8__, i8*, i8*, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32*, i32 }

@D_11G_ONLY_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*, i32)* @hostif_infrastructure_set_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_infrastructure_set_request(%struct.ks_wlan_private* %0, i32 %1) #0 {
  %3 = alloca %struct.ks_wlan_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostif_infrastructure_set_request*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.hostif_infrastructure_set_request* @hostif_generic_request(i32 56, i32 %6)
  store %struct.hostif_infrastructure_set_request* %7, %struct.hostif_infrastructure_set_request** %5, align 8
  %8 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %9 = icmp ne %struct.hostif_infrastructure_set_request* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %144

11:                                               ; preds = %2
  %12 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %13 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %14 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %13, i32 0, i32 4
  %15 = call i32 @init_request(%struct.ks_wlan_private* %12, i32* %14)
  %16 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %17 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %22 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %25 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %30 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %36 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @memcpy(i32* %28, i32* %34, i32 %39)
  %41 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %42 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %47 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %49 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %54 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %56 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 1, i32* %59, align 4
  %60 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %61 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 8, i32* %64, align 4
  %65 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %66 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  store i32 2, i32* %69, align 4
  %70 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %71 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32 9, i32* %74, align 4
  %75 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %76 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  store i32 3, i32* %79, align 4
  %80 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %81 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 5
  store i32 10, i32* %84, align 4
  %85 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %86 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 6
  store i32 4, i32* %89, align 4
  %90 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %91 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 7
  store i32 11, i32* %94, align 4
  %95 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %96 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 8
  store i32 5, i32* %99, align 4
  %100 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %101 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 9
  store i32 12, i32* %104, align 4
  %105 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %106 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 10
  store i32 6, i32* %109, align 4
  %110 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %111 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 11
  store i32 13, i32* %114, align 4
  %115 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %116 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 12
  store i32 7, i32* %119, align 4
  %120 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %121 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @D_11G_ONLY_MODE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %11
  %127 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %128 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  store i32 13, i32* %129, align 8
  br label %139

130:                                              ; preds = %11
  %131 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %132 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 13
  store i32 14, i32* %135, align 4
  %136 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %137 = getelementptr inbounds %struct.hostif_infrastructure_set_request, %struct.hostif_infrastructure_set_request* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  store i32 14, i32* %138, align 8
  br label %139

139:                                              ; preds = %130, %126
  %140 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %141 = load %struct.hostif_infrastructure_set_request*, %struct.hostif_infrastructure_set_request** %5, align 8
  %142 = call i32 @hif_align_size(i32 56)
  %143 = call i32 @send_request_to_device(%struct.ks_wlan_private* %140, %struct.hostif_infrastructure_set_request* %141, i32 %142)
  br label %144

144:                                              ; preds = %139, %10
  ret void
}

declare dso_local %struct.hostif_infrastructure_set_request* @hostif_generic_request(i32, i32) #1

declare dso_local i32 @init_request(%struct.ks_wlan_private*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @send_request_to_device(%struct.ks_wlan_private*, %struct.hostif_infrastructure_set_request*, i32) #1

declare dso_local i32 @hif_align_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
