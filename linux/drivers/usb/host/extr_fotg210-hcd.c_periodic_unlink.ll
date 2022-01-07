; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_periodic_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_periodic_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32*, %union.fotg210_shadow* }
%union.fotg210_shadow = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*, i32, i8*)* @periodic_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @periodic_unlink(%struct.fotg210_hcd* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.fotg210_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %union.fotg210_shadow*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %union.fotg210_shadow, align 8
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %11 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %10, i32 0, i32 1
  %12 = load %union.fotg210_shadow*, %union.fotg210_shadow** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %union.fotg210_shadow, %union.fotg210_shadow* %12, i64 %14
  store %union.fotg210_shadow* %15, %union.fotg210_shadow** %7, align 8
  %16 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %17 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32* %21, i32** %8, align 8
  %22 = load %union.fotg210_shadow*, %union.fotg210_shadow** %7, align 8
  %23 = bitcast %union.fotg210_shadow* %9 to i8*
  %24 = bitcast %union.fotg210_shadow* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 8, i1 false)
  br label %25

25:                                               ; preds = %36, %3
  %26 = bitcast %union.fotg210_shadow* %9 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = bitcast %union.fotg210_shadow* %9 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %31, %32
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i1 [ false, %25 ], [ %33, %29 ]
  br i1 %35, label %36, label %53

36:                                               ; preds = %34
  %37 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %38 = load %union.fotg210_shadow*, %union.fotg210_shadow** %7, align 8
  %39 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @Q_NEXT_TYPE(%struct.fotg210_hcd* %39, i32 %41)
  %43 = call %union.fotg210_shadow* @periodic_next_shadow(%struct.fotg210_hcd* %37, %union.fotg210_shadow* %38, i32 %42)
  store %union.fotg210_shadow* %43, %union.fotg210_shadow** %7, align 8
  %44 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %45 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @Q_NEXT_TYPE(%struct.fotg210_hcd* %45, i32 %47)
  %49 = call i32* @shadow_next_periodic(%struct.fotg210_hcd* %44, %union.fotg210_shadow* %9, i32 %48)
  store i32* %49, i32** %8, align 8
  %50 = load %union.fotg210_shadow*, %union.fotg210_shadow** %7, align 8
  %51 = bitcast %union.fotg210_shadow* %9 to i8*
  %52 = bitcast %union.fotg210_shadow* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 8, i1 false)
  br label %25

53:                                               ; preds = %34
  %54 = bitcast %union.fotg210_shadow* %9 to i8**
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %76

58:                                               ; preds = %53
  %59 = load %union.fotg210_shadow*, %union.fotg210_shadow** %7, align 8
  %60 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %61 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @Q_NEXT_TYPE(%struct.fotg210_hcd* %61, i32 %63)
  %65 = call %union.fotg210_shadow* @periodic_next_shadow(%struct.fotg210_hcd* %60, %union.fotg210_shadow* %9, i32 %64)
  %66 = bitcast %union.fotg210_shadow* %59 to i8*
  %67 = bitcast %union.fotg210_shadow* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 8, i1 false)
  %68 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %69 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @Q_NEXT_TYPE(%struct.fotg210_hcd* %69, i32 %71)
  %73 = call i32* @shadow_next_periodic(%struct.fotg210_hcd* %68, %union.fotg210_shadow* %9, i32 %72)
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %58, %57
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %union.fotg210_shadow* @periodic_next_shadow(%struct.fotg210_hcd*, %union.fotg210_shadow*, i32) #2

declare dso_local i32 @Q_NEXT_TYPE(%struct.fotg210_hcd*, i32) #2

declare dso_local i32* @shadow_next_periodic(%struct.fotg210_hcd*, %union.fotg210_shadow*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
