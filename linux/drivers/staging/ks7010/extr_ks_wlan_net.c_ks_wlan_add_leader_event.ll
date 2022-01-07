; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_add_leader_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_add_leader_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsn_ie = type { i32, i32, i32* }
%struct.iw_event = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iw_request_info = type { i32 }

@RSN_IE_BODY_MAX = common dso_local global i32 0, align 4
@IWEVCUSTOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, %struct.rsn_ie*, %struct.iw_event*, %struct.iw_request_info*)* @ks_wlan_add_leader_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ks_wlan_add_leader_event(i8* %0, i8* %1, i8* %2, %struct.rsn_ie* %3, %struct.iw_event* %4, %struct.iw_request_info* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rsn_ie*, align 8
  %11 = alloca %struct.iw_event*, align 8
  %12 = alloca %struct.iw_request_info*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.rsn_ie* %3, %struct.rsn_ie** %10, align 8
  store %struct.iw_event* %4, %struct.iw_event** %11, align 8
  store %struct.iw_request_info* %5, %struct.iw_request_info** %12, align 8
  %17 = load i32, i32* @RSN_IE_BODY_MAX, align 4
  %18 = mul nsw i32 %17, 2
  %19 = add nsw i32 %18, 30
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8* %23, i8** %15, align 8
  %24 = load %struct.iw_event*, %struct.iw_event** %11, align 8
  %25 = call i32 @memset(%struct.iw_event* %24, i32 0, i32 8)
  %26 = load i32, i32* @IWEVCUSTOM, align 4
  %27 = load %struct.iw_event*, %struct.iw_event** %11, align 8
  %28 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @memcpy(i8* %22, i8* %29, i32 7)
  %31 = load %struct.iw_event*, %struct.iw_event** %11, align 8
  %32 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %36, 7
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  %39 = load i8*, i8** %15, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 7
  store i8* %40, i8** %15, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = load %struct.rsn_ie*, %struct.rsn_ie** %10, align 8
  %43 = getelementptr inbounds %struct.rsn_ie, %struct.rsn_ie* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i8*, i8** %15, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %15, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = load %struct.rsn_ie*, %struct.rsn_ie** %10, align 8
  %51 = getelementptr inbounds %struct.rsn_ie, %struct.rsn_ie* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i8*, i8** %15, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %15, align 8
  %57 = load %struct.iw_event*, %struct.iw_event** %11, align 8
  %58 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 4
  store i32 %62, i32* %60, align 4
  store i32 0, i32* %16, align 4
  br label %63

63:                                               ; preds = %82, %6
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.rsn_ie*, %struct.rsn_ie** %10, align 8
  %66 = getelementptr inbounds %struct.rsn_ie, %struct.rsn_ie* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load i8*, i8** %15, align 8
  %71 = load %struct.rsn_ie*, %struct.rsn_ie** %10, align 8
  %72 = getelementptr inbounds %struct.rsn_ie, %struct.rsn_ie* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @sprintf(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i8*, i8** %15, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %15, align 8
  br label %82

82:                                               ; preds = %69
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %16, align 4
  br label %63

85:                                               ; preds = %63
  %86 = load %struct.rsn_ie*, %struct.rsn_ie** %10, align 8
  %87 = getelementptr inbounds %struct.rsn_ie, %struct.rsn_ie* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %88, 2
  %90 = load %struct.iw_event*, %struct.iw_event** %11, align 8
  %91 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %89
  store i32 %95, i32* %93, align 4
  %96 = load %struct.iw_request_info*, %struct.iw_request_info** %12, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.iw_event*, %struct.iw_event** %11, align 8
  %100 = getelementptr inbounds i8, i8* %22, i64 0
  %101 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %96, i8* %97, i8* %98, %struct.iw_event* %99, i8* %100)
  %102 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %102)
  ret i8* %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.iw_event*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i8* @iwe_stream_add_point(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
