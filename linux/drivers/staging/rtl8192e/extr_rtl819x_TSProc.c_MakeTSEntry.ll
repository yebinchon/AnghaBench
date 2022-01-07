; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_TSProc.c_MakeTSEntry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_TSProc.c_MakeTSEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts_common_info = type { i64*, i64, i64, i32*, i32 }
%union.tspec_body = type { i32 }
%union.qos_tclas = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ts_common_info*, i64*, %union.tspec_body*, %union.qos_tclas*, i64, i64)* @MakeTSEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MakeTSEntry(%struct.ts_common_info* %0, i64* %1, %union.tspec_body* %2, %union.qos_tclas* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.ts_common_info*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %union.tspec_body*, align 8
  %10 = alloca %union.qos_tclas*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ts_common_info* %0, %struct.ts_common_info** %7, align 8
  store i64* %1, i64** %8, align 8
  store %union.tspec_body* %2, %union.tspec_body** %9, align 8
  store %union.qos_tclas* %3, %union.qos_tclas** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.ts_common_info*, %struct.ts_common_info** %7, align 8
  %15 = icmp eq %struct.ts_common_info* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  br label %57

17:                                               ; preds = %6
  %18 = load %struct.ts_common_info*, %struct.ts_common_info** %7, align 8
  %19 = getelementptr inbounds %struct.ts_common_info, %struct.ts_common_info* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = call i32 @memcpy(i64* %20, i64* %21, i32 6)
  %23 = load %union.tspec_body*, %union.tspec_body** %9, align 8
  %24 = icmp ne %union.tspec_body* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load %struct.ts_common_info*, %struct.ts_common_info** %7, align 8
  %27 = getelementptr inbounds %struct.ts_common_info, %struct.ts_common_info* %26, i32 0, i32 4
  %28 = bitcast i32* %27 to i64*
  %29 = load %union.tspec_body*, %union.tspec_body** %9, align 8
  %30 = bitcast %union.tspec_body* %29 to i64*
  %31 = call i32 @memcpy(i64* %28, i64* %30, i32 4)
  br label %32

32:                                               ; preds = %25, %17
  store i64 0, i64* %13, align 8
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.ts_common_info*, %struct.ts_common_info** %7, align 8
  %39 = getelementptr inbounds %struct.ts_common_info, %struct.ts_common_info* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = bitcast i32* %42 to i64*
  %44 = load %union.qos_tclas*, %union.qos_tclas** %10, align 8
  %45 = bitcast %union.qos_tclas* %44 to i64*
  %46 = call i32 @memcpy(i64* %43, i64* %45, i32 4)
  br label %47

47:                                               ; preds = %37
  %48 = load i64, i64* %13, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %13, align 8
  br label %33

50:                                               ; preds = %33
  %51 = load i64, i64* %12, align 8
  %52 = load %struct.ts_common_info*, %struct.ts_common_info** %7, align 8
  %53 = getelementptr inbounds %struct.ts_common_info, %struct.ts_common_info* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.ts_common_info*, %struct.ts_common_info** %7, align 8
  %56 = getelementptr inbounds %struct.ts_common_info, %struct.ts_common_info* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %50, %16
  ret void
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
