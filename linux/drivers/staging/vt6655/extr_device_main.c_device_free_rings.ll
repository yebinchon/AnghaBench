; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_free_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_free_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.TYPE_3__ = type { i32 }

@PKT_BUF_SZ = common dso_local global i32 0, align 4
@CB_BEACON_BUF_SIZE = common dso_local global i32 0, align 4
@CB_MAX_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnt_private*)* @device_free_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_free_rings(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  %3 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %4 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %3, i32 0, i32 3
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %8 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %14 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = add i64 %12, %18
  %20 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %21 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = add i64 %19, %27
  %29 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %30 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = add i64 %28, %36
  %38 = trunc i64 %37 to i32
  %39 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %40 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %43 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dma_free_coherent(i32* %6, i32 %38, i64 %41, i32 %44)
  %46 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %47 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %1
  %51 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %52 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %51, i32 0, i32 3
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %56 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PKT_BUF_SZ, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %64 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PKT_BUF_SZ, align 4
  %70 = mul nsw i32 %68, %69
  %71 = add nsw i32 %62, %70
  %72 = load i32, i32* @CB_BEACON_BUF_SIZE, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* @CB_MAX_BUF_SIZE, align 4
  %75 = add nsw i32 %73, %74
  %76 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %77 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %80 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dma_free_coherent(i32* %54, i32 %75, i64 %78, i32 %81)
  br label %83

83:                                               ; preds = %50, %1
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
