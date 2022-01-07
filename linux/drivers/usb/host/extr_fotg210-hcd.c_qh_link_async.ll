; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_qh_link_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_qh_link_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { %struct.fotg210_qh* }
%struct.fotg210_qh = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.fotg210_qh* }

@QH_STATE_IDLE = common dso_local global i64 0, align 8
@QH_STATE_LINKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*, %struct.fotg210_qh*)* @qh_link_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qh_link_async(%struct.fotg210_hcd* %0, %struct.fotg210_qh* %1) #0 {
  %3 = alloca %struct.fotg210_hcd*, align 8
  %4 = alloca %struct.fotg210_qh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fotg210_qh*, align 8
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %3, align 8
  store %struct.fotg210_qh* %1, %struct.fotg210_qh** %4, align 8
  %7 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %8 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %9 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @QH_NEXT(%struct.fotg210_hcd* %7, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %13 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %64

18:                                               ; preds = %2
  %19 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %20 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @QH_STATE_IDLE, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %27 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %28 = call i32 @qh_refresh(%struct.fotg210_hcd* %26, %struct.fotg210_qh* %27)
  %29 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %30 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %29, i32 0, i32 0
  %31 = load %struct.fotg210_qh*, %struct.fotg210_qh** %30, align 8
  store %struct.fotg210_qh* %31, %struct.fotg210_qh** %6, align 8
  %32 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %33 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %32, i32 0, i32 3
  %34 = load %struct.fotg210_qh*, %struct.fotg210_qh** %6, align 8
  %35 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %34, i32 0, i32 3
  %36 = bitcast %struct.TYPE_3__* %33 to i8*
  %37 = bitcast %struct.TYPE_3__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 8, i1 false)
  %38 = load %struct.fotg210_qh*, %struct.fotg210_qh** %6, align 8
  %39 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %44 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  %47 = call i32 (...) @wmb()
  %48 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %49 = load %struct.fotg210_qh*, %struct.fotg210_qh** %6, align 8
  %50 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store %struct.fotg210_qh* %48, %struct.fotg210_qh** %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.fotg210_qh*, %struct.fotg210_qh** %6, align 8
  %54 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %58 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* @QH_STATE_LINKED, align 8
  %60 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %61 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %63 = call i32 @enable_async(%struct.fotg210_hcd* %62)
  br label %64

64:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @QH_NEXT(%struct.fotg210_hcd*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @qh_refresh(%struct.fotg210_hcd*, %struct.fotg210_qh*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @enable_async(%struct.fotg210_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
