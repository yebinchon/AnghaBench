; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_debug.c_whc_dbg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_debug.c_whc_dbg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"di\00", align 1
@di_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"asl\00", align 1
@asl_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"pzl\00", align 1
@pzl_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @whc_dbg_init(%struct.whc* %0) #0 {
  %2 = alloca %struct.whc*, align 8
  store %struct.whc* %0, %struct.whc** %2, align 8
  %3 = load %struct.whc*, %struct.whc** %2, align 8
  %4 = getelementptr inbounds %struct.whc, %struct.whc* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %54

10:                                               ; preds = %1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.TYPE_6__* @kzalloc(i32 4, i32 %11)
  %13 = load %struct.whc*, %struct.whc** %2, align 8
  %14 = getelementptr inbounds %struct.whc, %struct.whc* %13, i32 0, i32 1
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %14, align 8
  %15 = load %struct.whc*, %struct.whc** %2, align 8
  %16 = getelementptr inbounds %struct.whc, %struct.whc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %54

20:                                               ; preds = %10
  %21 = load %struct.whc*, %struct.whc** %2, align 8
  %22 = getelementptr inbounds %struct.whc, %struct.whc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.whc*, %struct.whc** %2, align 8
  %27 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 292, i32* %25, %struct.whc* %26, i32* @di_fops)
  %28 = load %struct.whc*, %struct.whc** %2, align 8
  %29 = getelementptr inbounds %struct.whc, %struct.whc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i8* %27, i8** %31, align 8
  %32 = load %struct.whc*, %struct.whc** %2, align 8
  %33 = getelementptr inbounds %struct.whc, %struct.whc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.whc*, %struct.whc** %2, align 8
  %38 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 292, i32* %36, %struct.whc* %37, i32* @asl_fops)
  %39 = load %struct.whc*, %struct.whc** %2, align 8
  %40 = getelementptr inbounds %struct.whc, %struct.whc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i8* %38, i8** %42, align 8
  %43 = load %struct.whc*, %struct.whc** %2, align 8
  %44 = getelementptr inbounds %struct.whc, %struct.whc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.whc*, %struct.whc** %2, align 8
  %49 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 292, i32* %47, %struct.whc* %48, i32* @pzl_fops)
  %50 = load %struct.whc*, %struct.whc** %2, align 8
  %51 = getelementptr inbounds %struct.whc, %struct.whc* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i8* %49, i8** %53, align 8
  br label %54

54:                                               ; preds = %20, %19, %9
  ret void
}

declare dso_local %struct.TYPE_6__* @kzalloc(i32, i32) #1

declare dso_local i8* @debugfs_create_file(i8*, i32, i32*, %struct.whc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
