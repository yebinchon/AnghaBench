; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_periodic_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_periodic_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32*, %union.ehci_shadow* }
%union.ehci_shadow = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxu_hcd*, i32, i8*)* @periodic_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @periodic_unlink(%struct.oxu_hcd* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.oxu_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %union.ehci_shadow*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %union.ehci_shadow, align 8
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %11 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %10, i32 0, i32 1
  %12 = load %union.ehci_shadow*, %union.ehci_shadow** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %union.ehci_shadow, %union.ehci_shadow* %12, i64 %14
  store %union.ehci_shadow* %15, %union.ehci_shadow** %7, align 8
  %16 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %17 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32* %21, i32** %8, align 8
  %22 = load %union.ehci_shadow*, %union.ehci_shadow** %7, align 8
  %23 = bitcast %union.ehci_shadow* %9 to i8*
  %24 = bitcast %union.ehci_shadow* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 8, i1 false)
  br label %25

25:                                               ; preds = %36, %3
  %26 = bitcast %union.ehci_shadow* %9 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = bitcast %union.ehci_shadow* %9 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %31, %32
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i1 [ false, %25 ], [ %33, %29 ]
  br i1 %35, label %36, label %47

36:                                               ; preds = %34
  %37 = load %union.ehci_shadow*, %union.ehci_shadow** %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @Q_NEXT_TYPE(i32 %39)
  %41 = call %union.ehci_shadow* @periodic_next_shadow(%union.ehci_shadow* %37, i32 %40)
  store %union.ehci_shadow* %41, %union.ehci_shadow** %7, align 8
  %42 = bitcast %union.ehci_shadow* %9 to i32**
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %8, align 8
  %44 = load %union.ehci_shadow*, %union.ehci_shadow** %7, align 8
  %45 = bitcast %union.ehci_shadow* %9 to i8*
  %46 = bitcast %union.ehci_shadow* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 8, i1 false)
  br label %25

47:                                               ; preds = %34
  %48 = bitcast %union.ehci_shadow* %9 to i8**
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %64

52:                                               ; preds = %47
  %53 = load %union.ehci_shadow*, %union.ehci_shadow** %7, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @Q_NEXT_TYPE(i32 %55)
  %57 = call %union.ehci_shadow* @periodic_next_shadow(%union.ehci_shadow* %9, i32 %56)
  %58 = bitcast %union.ehci_shadow* %53 to i8*
  %59 = bitcast %union.ehci_shadow* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 8, i1 false)
  %60 = bitcast %union.ehci_shadow* %9 to i32**
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %52, %51
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %union.ehci_shadow* @periodic_next_shadow(%union.ehci_shadow*, i32) #2

declare dso_local i32 @Q_NEXT_TYPE(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
