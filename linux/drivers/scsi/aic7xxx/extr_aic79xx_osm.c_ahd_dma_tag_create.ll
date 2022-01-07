; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_dma_tag_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_dma_tag_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.TYPE_5__ = type { i8*, i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_dma_tag_create(%struct.ahd_softc* %0, %struct.TYPE_5__* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32* %6, i8* %7, i8* %8, i32 %9, i8* %10, i32 %11, %struct.TYPE_5__** %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.ahd_softc*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_5__**, align 8
  %28 = alloca %struct.TYPE_5__*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %15, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %16, align 8
  store i8* %2, i8** %17, align 8
  store i8* %3, i8** %18, align 8
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32* %6, i32** %21, align 8
  store i8* %7, i8** %22, align 8
  store i8* %8, i8** %23, align 8
  store i32 %9, i32* %24, align 4
  store i8* %10, i8** %25, align 8
  store i32 %11, i32* %26, align 4
  store %struct.TYPE_5__** %12, %struct.TYPE_5__*** %27, align 8
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.TYPE_5__* @kmalloc(i32 24, i32 %29)
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %28, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %32 = icmp eq %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %13
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %14, align 4
  br label %47

35:                                               ; preds = %13
  %36 = load i8*, i8** %17, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %18, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %23, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %27, align 8
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %46, align 8
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %35, %33
  %48 = load i32, i32* %14, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_5__* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
