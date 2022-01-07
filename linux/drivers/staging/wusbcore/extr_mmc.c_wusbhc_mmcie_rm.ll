; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_mmc.c_wusbhc_mmcie_rm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_mmc.c_wusbhc_mmcie_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32, i32 (%struct.wusbhc*, i32)*, i32, %struct.wuie_hdr** }
%struct.wuie_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wusbhc_mmcie_rm(%struct.wusbhc* %0, %struct.wuie_hdr* %1) #0 {
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca %struct.wuie_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  store %struct.wuie_hdr* %1, %struct.wuie_hdr** %4, align 8
  %8 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %9 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %8, i32 0, i32 2
  %10 = call i32 @mutex_lock(i32* %9)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %30, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %14 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %19 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %18, i32 0, i32 3
  %20 = load %struct.wuie_hdr**, %struct.wuie_hdr*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.wuie_hdr*, %struct.wuie_hdr** %20, i64 %22
  %24 = load %struct.wuie_hdr*, %struct.wuie_hdr** %23, align 8
  %25 = load %struct.wuie_hdr*, %struct.wuie_hdr** %4, align 8
  %26 = icmp eq %struct.wuie_hdr* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %6, align 4
  br label %37

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %11

33:                                               ; preds = %11
  %34 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %35 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %34, i32 0, i32 2
  %36 = call i32 @mutex_unlock(i32* %35)
  br label %57

37:                                               ; preds = %27
  %38 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %39 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %38, i32 0, i32 1
  %40 = load i32 (%struct.wusbhc*, i32)*, i32 (%struct.wusbhc*, i32)** %39, align 8
  %41 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 %40(%struct.wusbhc* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %48 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %47, i32 0, i32 3
  %49 = load %struct.wuie_hdr**, %struct.wuie_hdr*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.wuie_hdr*, %struct.wuie_hdr** %49, i64 %51
  store %struct.wuie_hdr* null, %struct.wuie_hdr** %52, align 8
  br label %53

53:                                               ; preds = %46, %37
  %54 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %55 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %54, i32 0, i32 2
  %56 = call i32 @mutex_unlock(i32* %55)
  br label %57

57:                                               ; preds = %53, %33
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
