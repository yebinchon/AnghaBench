; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_sync_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_sync_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TCF_SYNC_DONE = common dso_local global i32 0, align 4
@initio_rate_tbl = common dso_local global i32* null, align 8
@TSC_ALT_PERIOD = common dso_local global i32 0, align 4
@TUL_SConfig = common dso_local global i64 0, align 8
@TUL_SPeriod = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @initio_sync_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_sync_done(%struct.initio_host* %0) #0 {
  %2 = alloca %struct.initio_host*, align 8
  %3 = alloca i32, align 4
  store %struct.initio_host* %0, %struct.initio_host** %2, align 8
  %4 = load i32, i32* @TCF_SYNC_DONE, align 4
  %5 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %6 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %12 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %65

17:                                               ; preds = %1
  %18 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %19 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %24 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %22
  store i32 %28, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %46, %17
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load i32*, i32** @initio_rate_tbl, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %39 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %37, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %49

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %29

49:                                               ; preds = %44, %29
  %50 = load i32, i32* %3, align 4
  %51 = shl i32 %50, 4
  %52 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %53 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %51
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @TSC_ALT_PERIOD, align 4
  %59 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %60 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %58
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %49, %1
  %66 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %67 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %72 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TUL_SConfig, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @outb(i32 %70, i64 %75)
  %77 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %78 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %83 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TUL_SPeriod, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @outb(i32 %81, i64 %86)
  ret i32 -1
}

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
