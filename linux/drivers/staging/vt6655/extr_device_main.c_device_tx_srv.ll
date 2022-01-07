; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_tx_srv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_tx_srv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i64*, %struct.vnt_tx_desc** }
%struct.vnt_tx_desc = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__, %struct.vnt_tx_desc* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i8, i8 }

@OWNED_BY_NIC = common dso_local global i64 0, align 8
@TCR_STP = common dso_local global i32 0, align 4
@TD_FLAGS_NETIF_SKB = common dso_local global i32 0, align 4
@TSR1_TERR = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [49 x i8] c" Tx[%d] OK but has error. tsr1[%02X] tsr0[%02X]\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c" Tx[%d] dropped & tsr1[%02X] tsr0[%02X]\0A\00", align 1
@TD_FLAGS_PRIV_SKB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c" Tx[%d] fail has error. tsr1[%02X] tsr0[%02X]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_private*, i32)* @device_tx_srv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_tx_srv(%struct.vnt_private* %0, i32 %1) #0 {
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnt_tx_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %10 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %9, i32 0, i32 1
  %11 = load %struct.vnt_tx_desc**, %struct.vnt_tx_desc*** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %11, i64 %13
  %15 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %14, align 8
  store %struct.vnt_tx_desc* %15, %struct.vnt_tx_desc** %5, align 8
  br label %16

16:                                               ; preds = %128, %2
  %17 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %18 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %132

25:                                               ; preds = %16
  %26 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %5, align 8
  %27 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @OWNED_BY_NIC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %132

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = icmp sgt i32 %34, 15
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %132

38:                                               ; preds = %33
  %39 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %5, align 8
  %40 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i8, i8* %41, align 8
  store i8 %42, i8* %7, align 1
  %43 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %5, align 8
  %44 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %8, align 1
  %47 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %5, align 8
  %48 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @TCR_STP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %127

54:                                               ; preds = %38
  %55 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %5, align 8
  %56 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TD_FLAGS_NETIF_SKB, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %54
  %64 = load i8, i8* %8, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @TSR1_TERR, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %63
  %71 = load i8, i8* %7, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  %76 = load i8, i8* %8, align 1
  %77 = load i8, i8* %7, align 1
  %78 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %75, i8 zeroext %76, i8 zeroext %77)
  br label %79

79:                                               ; preds = %74, %70
  br label %85

80:                                               ; preds = %63
  %81 = load i32, i32* %4, align 4
  %82 = load i8, i8* %8, align 1
  %83 = load i8, i8* %7, align 1
  %84 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %81, i8 zeroext %82, i8 zeroext %83)
  br label %85

85:                                               ; preds = %80, %79
  br label %86

86:                                               ; preds = %85, %54
  %87 = load i8, i8* %8, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* @TSR1_TERR, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %86
  %94 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %5, align 8
  %95 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @TD_FLAGS_PRIV_SKB, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %93
  %103 = load i32, i32* %4, align 4
  %104 = load i8, i8* %8, align 1
  %105 = load i8, i8* %7, align 1
  %106 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %103, i8 zeroext %104, i8 zeroext %105)
  br label %107

107:                                              ; preds = %102, %93
  br label %108

108:                                              ; preds = %107, %86
  %109 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %110 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %5, align 8
  %111 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i8, i8* %7, align 1
  %114 = load i8, i8* %8, align 1
  %115 = call i32 @vnt_int_report_rate(%struct.vnt_private* %109, %struct.TYPE_6__* %112, i8 zeroext %113, i8 zeroext %114)
  %116 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %117 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %5, align 8
  %118 = call i32 @device_free_tx_buf(%struct.vnt_private* %116, %struct.vnt_tx_desc* %117)
  %119 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %120 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, -1
  store i64 %126, i64* %124, align 8
  br label %127

127:                                              ; preds = %108, %38
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %5, align 8
  %130 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %129, i32 0, i32 3
  %131 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %130, align 8
  store %struct.vnt_tx_desc* %131, %struct.vnt_tx_desc** %5, align 8
  br label %16

132:                                              ; preds = %37, %32, %16
  %133 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %5, align 8
  %134 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %135 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %134, i32 0, i32 1
  %136 = load %struct.vnt_tx_desc**, %struct.vnt_tx_desc*** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %136, i64 %138
  store %struct.vnt_tx_desc* %133, %struct.vnt_tx_desc** %139, align 8
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local i32 @pr_debug(i8*, i32, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @vnt_int_report_rate(%struct.vnt_private*, %struct.TYPE_6__*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @device_free_tx_buf(%struct.vnt_private*, %struct.vnt_tx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
