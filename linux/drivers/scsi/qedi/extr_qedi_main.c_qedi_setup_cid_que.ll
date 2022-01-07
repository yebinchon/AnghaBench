; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_setup_cid_que.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_setup_cid_que.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32, i32**, i64, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*)* @qedi_setup_cid_que to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_setup_cid_que(%struct.qedi_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedi_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %3, align 8
  %5 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kmalloc_array(i32 %7, i32 4, i32 %8)
  %10 = bitcast i8* %9 to i32*
  %11 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 6
  store i32* %10, i32** %13, align 8
  %14 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 6
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %100

22:                                               ; preds = %1
  %23 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kmalloc_array(i32 %25, i32 8, i32 %26)
  %28 = bitcast i8* %27 to i32**
  %29 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i32** %28, i32*** %31, align 8
  %32 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32**, i32*** %34, align 8
  %36 = icmp ne i32** %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %22
  %38 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 6
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @kfree(i32* %41)
  %43 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 6
  store i32* null, i32** %45, align 8
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %100

48:                                               ; preds = %22
  %49 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 6
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32* %52, i32** %55, align 8
  %56 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 8
  %68 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %72 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 4
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %96, %48
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %74
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %83 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %81, i32* %88, align 4
  %89 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %90 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %80
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %74

99:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %37, %19
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
