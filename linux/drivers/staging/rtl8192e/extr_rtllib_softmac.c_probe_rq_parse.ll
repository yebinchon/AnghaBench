; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_probe_rq_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_probe_rq_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32, i64* }
%struct.rtllib_hdr_3addr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.rtllib_device*, %struct.sk_buff*, i64*)* @probe_rq_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @probe_rq_parse(%struct.rtllib_device* %0, %struct.sk_buff* %1, i64* %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.rtllib_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rtllib_hdr_3addr*, align 8
  %13 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* null, i64** %10, align 8
  store i64 0, i64* %11, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = bitcast i64* %16 to %struct.rtllib_hdr_3addr*
  store %struct.rtllib_hdr_3addr* %17, %struct.rtllib_hdr_3addr** %12, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 8
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i16 -1, i16* %4, align 2
  br label %109

24:                                               ; preds = %3
  %25 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %12, align 8
  %26 = getelementptr inbounds %struct.rtllib_hdr_3addr, %struct.rtllib_hdr_3addr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %29 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ether_addr_equal(i32 %27, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %24
  %35 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %12, align 8
  %36 = getelementptr inbounds %struct.rtllib_hdr_3addr, %struct.rtllib_hdr_3addr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @is_broadcast_ether_addr(i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %34, %24
  %42 = phi i1 [ false, %24 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i16 -1, i16* %4, align 2
  br label %109

47:                                               ; preds = %41
  %48 = load i64*, i64** %7, align 8
  %49 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %12, align 8
  %50 = getelementptr inbounds %struct.rtllib_hdr_3addr, %struct.rtllib_hdr_3addr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ether_addr_copy(i64* %48, i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %55, i64 %59
  store i64* %60, i64** %9, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 8
  store i64* %64, i64** %8, align 8
  br label %65

65:                                               ; preds = %80, %47
  %66 = load i64*, i64** %8, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 1
  %68 = load i64*, i64** %9, align 8
  %69 = icmp ult i64* %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %65
  %71 = load i64*, i64** %8, align 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i64*, i64** %8, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 2
  store i64* %76, i64** %10, align 8
  %77 = load i64*, i64** %8, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %11, align 8
  br label %89

80:                                               ; preds = %70
  %81 = load i64*, i64** %8, align 8
  %82 = getelementptr inbounds i64, i64* %81, i32 1
  store i64* %82, i64** %8, align 8
  %83 = load i64*, i64** %8, align 8
  %84 = load i64*, i64** %8, align 8
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  store i64* %86, i64** %8, align 8
  %87 = load i64*, i64** %8, align 8
  %88 = getelementptr inbounds i64, i64* %87, i32 1
  store i64* %88, i64** %8, align 8
  br label %65

89:                                               ; preds = %74, %65
  %90 = load i64, i64* %11, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i16 1, i16* %4, align 2
  br label %109

93:                                               ; preds = %89
  %94 = load i64*, i64** %10, align 8
  %95 = icmp ne i64* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  store i16 1, i16* %4, align 2
  br label %109

97:                                               ; preds = %93
  %98 = load i64*, i64** %10, align 8
  %99 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %100 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @strncmp(i64* %98, i32 %102, i64 %103)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = trunc i32 %107 to i16
  store i16 %108, i16* %4, align 2
  br label %109

109:                                              ; preds = %97, %96, %92, %46, %23
  %110 = load i16, i16* %4, align 2
  ret i16 %110
}

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @is_broadcast_ether_addr(i32) #1

declare dso_local i32 @ether_addr_copy(i64*, i32) #1

declare dso_local i32 @strncmp(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
