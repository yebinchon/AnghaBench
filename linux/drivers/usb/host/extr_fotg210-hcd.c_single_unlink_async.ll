; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_single_unlink_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_single_unlink_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { %struct.fotg210_qh*, %struct.fotg210_qh*, %struct.fotg210_qh*, %struct.fotg210_qh* }
%struct.fotg210_qh = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.fotg210_qh*, i32 }
%struct.TYPE_4__ = type { %struct.fotg210_qh* }
%struct.TYPE_3__ = type { i32 }

@QH_STATE_UNLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*, %struct.fotg210_qh*)* @single_unlink_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @single_unlink_async(%struct.fotg210_hcd* %0, %struct.fotg210_qh* %1) #0 {
  %3 = alloca %struct.fotg210_hcd*, align 8
  %4 = alloca %struct.fotg210_qh*, align 8
  %5 = alloca %struct.fotg210_qh*, align 8
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %3, align 8
  store %struct.fotg210_qh* %1, %struct.fotg210_qh** %4, align 8
  %6 = load i32, i32* @QH_STATE_UNLINK, align 4
  %7 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %8 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 8
  %9 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %10 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %9, i32 0, i32 3
  %11 = load %struct.fotg210_qh*, %struct.fotg210_qh** %10, align 8
  %12 = icmp ne %struct.fotg210_qh* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %15 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %16 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %15, i32 0, i32 2
  %17 = load %struct.fotg210_qh*, %struct.fotg210_qh** %16, align 8
  %18 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %17, i32 0, i32 2
  store %struct.fotg210_qh* %14, %struct.fotg210_qh** %18, align 8
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %21 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %22 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %21, i32 0, i32 3
  store %struct.fotg210_qh* %20, %struct.fotg210_qh** %22, align 8
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %25 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %26 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %25, i32 0, i32 2
  store %struct.fotg210_qh* %24, %struct.fotg210_qh** %26, align 8
  %27 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %28 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %27, i32 0, i32 1
  %29 = load %struct.fotg210_qh*, %struct.fotg210_qh** %28, align 8
  store %struct.fotg210_qh* %29, %struct.fotg210_qh** %5, align 8
  br label %30

30:                                               ; preds = %37, %23
  %31 = load %struct.fotg210_qh*, %struct.fotg210_qh** %5, align 8
  %32 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.fotg210_qh*, %struct.fotg210_qh** %33, align 8
  %35 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %36 = icmp ne %struct.fotg210_qh* %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.fotg210_qh*, %struct.fotg210_qh** %5, align 8
  %39 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.fotg210_qh*, %struct.fotg210_qh** %40, align 8
  store %struct.fotg210_qh* %41, %struct.fotg210_qh** %5, align 8
  br label %30

42:                                               ; preds = %30
  %43 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %44 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fotg210_qh*, %struct.fotg210_qh** %5, align 8
  %49 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  %52 = load %struct.fotg210_qh*, %struct.fotg210_qh** %5, align 8
  %53 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %52, i32 0, i32 0
  %54 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %55 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %54, i32 0, i32 0
  %56 = bitcast %struct.TYPE_4__* %53 to i8*
  %57 = bitcast %struct.TYPE_4__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  %58 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %59 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %58, i32 0, i32 0
  %60 = load %struct.fotg210_qh*, %struct.fotg210_qh** %59, align 8
  %61 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %62 = icmp eq %struct.fotg210_qh* %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %42
  %64 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %65 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.fotg210_qh*, %struct.fotg210_qh** %66, align 8
  %68 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %69 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %68, i32 0, i32 0
  store %struct.fotg210_qh* %67, %struct.fotg210_qh** %69, align 8
  br label %70

70:                                               ; preds = %63, %42
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
