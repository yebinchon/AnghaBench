; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_qset.c_qset_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_qset.c_qset_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { i32 }
%struct.whc_qset = type { i32, %struct.TYPE_2__, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i64*, i64, i32 }

@QH_LINK_T = common dso_local global i32 0, align 4
@QH_STATUS_SEQ_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qset_clear(%struct.whc* %0, %struct.whc_qset* %1) #0 {
  %3 = alloca %struct.whc*, align 8
  %4 = alloca %struct.whc_qset*, align 8
  store %struct.whc* %0, %struct.whc** %3, align 8
  store %struct.whc_qset* %1, %struct.whc_qset** %4, align 8
  %5 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %6 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %8 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %10 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = call i32 @QH_LINK_NTDS(i32 8)
  %12 = load i32, i32* @QH_LINK_T, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @cpu_to_le64(i32 %13)
  %15 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %16 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  store i32 %14, i32* %17, align 8
  %18 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %19 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @QH_STATUS_SEQ_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %25 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %28 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %31 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %36 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %41 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %46 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = call i32 @memset(i32* %47, i32 0, i32 4)
  %49 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %50 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %49, i32 0, i32 0
  %51 = call i32 @init_completion(i32* %50)
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @QH_LINK_NTDS(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
