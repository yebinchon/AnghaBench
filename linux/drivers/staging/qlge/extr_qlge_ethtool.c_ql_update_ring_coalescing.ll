; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_ethtool.c_ql_update_ring_coalescing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_ethtool.c_ql_update_ring_coalescing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i64, i64, i64, i32, i64, i64, i32, %struct.rx_ring* }
%struct.rx_ring = type { i32 }
%struct.cqicb = type { i8*, i8*, i8* }

@FLAGS_LI = common dso_local global i8* null, align 8
@CFG_LCQ = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to load CQICB.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_update_ring_coalescing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_update_ring_coalescing(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rx_ring*, align 8
  %7 = alloca %struct.cqicb*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @netif_running(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %178

15:                                               ; preds = %1
  %16 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %16, i32 0, i32 7
  %18 = load %struct.rx_ring*, %struct.rx_ring** %17, align 8
  %19 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %18, i64 %21
  %23 = bitcast %struct.rx_ring* %22 to %struct.cqicb*
  store %struct.cqicb* %23, %struct.cqicb** %7, align 8
  %24 = load %struct.cqicb*, %struct.cqicb** %7, align 8
  %25 = getelementptr inbounds %struct.cqicb, %struct.cqicb* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @le16_to_cpu(i8* %26)
  %28 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %15
  %33 = load %struct.cqicb*, %struct.cqicb** %7, align 8
  %34 = getelementptr inbounds %struct.cqicb, %struct.cqicb* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @le16_to_cpu(i8* %35)
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %97

41:                                               ; preds = %32, %15
  %42 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %93, %41
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %96

52:                                               ; preds = %46
  %53 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %53, i32 0, i32 7
  %55 = load %struct.rx_ring*, %struct.rx_ring** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %55, i64 %57
  store %struct.rx_ring* %58, %struct.rx_ring** %6, align 8
  %59 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %60 = bitcast %struct.rx_ring* %59 to %struct.cqicb*
  store %struct.cqicb* %60, %struct.cqicb** %7, align 8
  %61 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i8* @cpu_to_le16(i64 %63)
  %65 = load %struct.cqicb*, %struct.cqicb** %7, align 8
  %66 = getelementptr inbounds %struct.cqicb, %struct.cqicb* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call i8* @cpu_to_le16(i64 %69)
  %71 = load %struct.cqicb*, %struct.cqicb** %7, align 8
  %72 = getelementptr inbounds %struct.cqicb, %struct.cqicb* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** @FLAGS_LI, align 8
  %74 = load %struct.cqicb*, %struct.cqicb** %7, align 8
  %75 = getelementptr inbounds %struct.cqicb, %struct.cqicb* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %77 = load %struct.cqicb*, %struct.cqicb** %7, align 8
  %78 = load i32, i32* @CFG_LCQ, align 4
  %79 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %80 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ql_write_cfg(%struct.ql_adapter* %76, %struct.cqicb* %77, i32 24, i32 %78, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %52
  %86 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %87 = load i32, i32* @ifup, align 4
  %88 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @netif_err(%struct.ql_adapter* %86, i32 %87, i32 %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %176

92:                                               ; preds = %52
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %46

96:                                               ; preds = %46
  br label %97

97:                                               ; preds = %96, %32
  %98 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %98, i32 0, i32 7
  %100 = load %struct.rx_ring*, %struct.rx_ring** %99, align 8
  %101 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %100, i64 0
  %102 = bitcast %struct.rx_ring* %101 to %struct.cqicb*
  store %struct.cqicb* %102, %struct.cqicb** %7, align 8
  %103 = load %struct.cqicb*, %struct.cqicb** %7, align 8
  %104 = getelementptr inbounds %struct.cqicb, %struct.cqicb* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @le16_to_cpu(i8* %105)
  %107 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %108 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %106, %109
  br i1 %110, label %120, label %111

111:                                              ; preds = %97
  %112 = load %struct.cqicb*, %struct.cqicb** %7, align 8
  %113 = getelementptr inbounds %struct.cqicb, %struct.cqicb* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i64 @le16_to_cpu(i8* %114)
  %116 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %117 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %115, %118
  br i1 %119, label %120, label %175

120:                                              ; preds = %111, %97
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %169, %120
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ult i64 %123, %126
  br i1 %127, label %128, label %174

128:                                              ; preds = %121
  %129 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %130 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %129, i32 0, i32 7
  %131 = load %struct.rx_ring*, %struct.rx_ring** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %131, i64 %133
  store %struct.rx_ring* %134, %struct.rx_ring** %6, align 8
  %135 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %136 = bitcast %struct.rx_ring* %135 to %struct.cqicb*
  store %struct.cqicb* %136, %struct.cqicb** %7, align 8
  %137 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %138 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = call i8* @cpu_to_le16(i64 %139)
  %141 = load %struct.cqicb*, %struct.cqicb** %7, align 8
  %142 = getelementptr inbounds %struct.cqicb, %struct.cqicb* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  %143 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %144 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = call i8* @cpu_to_le16(i64 %145)
  %147 = load %struct.cqicb*, %struct.cqicb** %7, align 8
  %148 = getelementptr inbounds %struct.cqicb, %struct.cqicb* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  %149 = load i8*, i8** @FLAGS_LI, align 8
  %150 = load %struct.cqicb*, %struct.cqicb** %7, align 8
  %151 = getelementptr inbounds %struct.cqicb, %struct.cqicb* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  %152 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %153 = load %struct.cqicb*, %struct.cqicb** %7, align 8
  %154 = load i32, i32* @CFG_LCQ, align 4
  %155 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %156 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ql_write_cfg(%struct.ql_adapter* %152, %struct.cqicb* %153, i32 24, i32 %154, i32 %157)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %128
  %162 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %163 = load i32, i32* @ifup, align 4
  %164 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %165 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @netif_err(%struct.ql_adapter* %162, i32 %163, i32 %166, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %176

168:                                              ; preds = %128
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %4, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %4, align 4
  %172 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %173 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %172, i32 1
  store %struct.rx_ring* %173, %struct.rx_ring** %6, align 8
  br label %121

174:                                              ; preds = %121
  br label %175

175:                                              ; preds = %174, %111
  br label %176

176:                                              ; preds = %175, %161, %85
  %177 = load i32, i32* %5, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %176, %13
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @ql_write_cfg(%struct.ql_adapter*, %struct.cqicb*, i32, i32, i32) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
