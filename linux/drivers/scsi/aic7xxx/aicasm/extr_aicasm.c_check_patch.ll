; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/aicasm/extr_aicasm.c_check_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/aicasm/extr_aicasm.c_check_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32 }

@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__**, i32, i32*, i32*)* @check_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_patch(%struct.TYPE_5__** %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  br label %14

14:                                               ; preds = %63, %4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br label %23

23:                                               ; preds = %17, %14
  %24 = phi i1 [ false, %14 ], [ %22, %17 ]
  br i1 %24, label %25, label %64

25:                                               ; preds = %23
  %26 = load i32*, i32** %9, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %34, %37
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %55, %33
  %44 = load i32, i32* %11, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %48 = icmp ne %struct.TYPE_5__* %47, null
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i1 [ false, %43 ], [ %48, %46 ]
  br i1 %50, label %51, label %58

51:                                               ; preds = %49
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %53 = load i32, i32* @links, align 4
  %54 = call %struct.TYPE_5__* @STAILQ_NEXT(%struct.TYPE_5__* %52, i32 %53)
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %10, align 8
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %11, align 4
  br label %43

58:                                               ; preds = %49
  br label %63

59:                                               ; preds = %25
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %61 = load i32, i32* @links, align 4
  %62 = call %struct.TYPE_5__* @STAILQ_NEXT(%struct.TYPE_5__* %60, i32 %61)
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %10, align 8
  br label %63

63:                                               ; preds = %59, %58
  br label %14

64:                                               ; preds = %23
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %66 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %66, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %73

72:                                               ; preds = %64
  store i32 1, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_5__* @STAILQ_NEXT(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
