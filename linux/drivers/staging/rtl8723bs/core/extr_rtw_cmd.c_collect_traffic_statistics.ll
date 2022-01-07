; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_collect_traffic_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_collect_traffic_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.dvobj_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @collect_traffic_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_traffic_statistics(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.dvobj_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = call %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter* %4)
  store %struct.dvobj_priv* %5, %struct.dvobj_priv** %3, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %11 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %18 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 11
  store i32 %16, i32* %19, align 4
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %25 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 10
  store i32 %23, i32* %26, align 8
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %32 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %39 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 9
  store i32 %37, i32* %40, align 4
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %46 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 8
  store i32 %44, i32* %47, align 8
  %48 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %49 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %53 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %51, %55
  %57 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %58 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %61 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %65 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %63, %67
  %69 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %70 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  store i32 %68, i32* %71, align 8
  %72 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %73 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %77 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  store i32 %75, i32* %78, align 4
  %79 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %80 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %84 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 5
  store i32 %82, i32* %85, align 4
  %86 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %87 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %89, 8
  %91 = sdiv i32 %90, 2
  %92 = sdiv i32 %91, 1024
  %93 = sdiv i32 %92, 1024
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %97 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 7
  store i8* %95, i8** %98, align 8
  %99 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %100 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = mul nsw i32 %102, 8
  %104 = sdiv i32 %103, 2
  %105 = sdiv i32 %104, 1024
  %106 = sdiv i32 %105, 1024
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %110 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 6
  store i8* %108, i8** %111, align 8
  ret void
}

declare dso_local %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
