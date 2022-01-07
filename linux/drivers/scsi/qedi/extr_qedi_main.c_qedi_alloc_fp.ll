; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_alloc_fp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_alloc_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"fastpath fp array allocation failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"fastpath sb array allocation failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*)* @qedi_alloc_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_alloc_fp(%struct.qedi_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedi_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %6 = call i32 @MIN_NUM_CPUS_MSIX(%struct.qedi_ctx* %5)
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kcalloc(i32 %6, i32 4, i32 %7)
  %9 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %16, i32 0, i32 0
  %18 = call i32 @QEDI_ERR(i32* %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %1
  %22 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %23 = call i32 @MIN_NUM_CPUS_MSIX(%struct.qedi_ctx* %22)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kcalloc(i32 %23, i32 4, i32 %24)
  %26 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %21
  %33 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %33, i32 0, i32 0
  %35 = call i32 @QEDI_ERR(i32* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %40

38:                                               ; preds = %21
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %32
  %41 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %42 = call i32 @qedi_free_fp(%struct.qedi_ctx* %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %38, %15
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @MIN_NUM_CPUS_MSIX(%struct.qedi_ctx*) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*) #1

declare dso_local i32 @qedi_free_fp(%struct.qedi_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
