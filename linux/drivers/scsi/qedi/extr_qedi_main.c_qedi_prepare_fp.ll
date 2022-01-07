; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_prepare_fp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_prepare_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, %struct.qedi_fastpath* }
%struct.qedi_fastpath = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"SB allocation and initialization failed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*)* @qedi_prepare_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_prepare_fp(%struct.qedi_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedi_ctx*, align 8
  %4 = alloca %struct.qedi_fastpath*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %8 = call i32 @qedi_alloc_fp(%struct.qedi_ctx* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %53

12:                                               ; preds = %1
  %13 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %14 = call i32 @qedi_int_fp(%struct.qedi_ctx* %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %44, %12
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %18 = call i32 @MIN_NUM_CPUS_MSIX(%struct.qedi_ctx* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %15
  %21 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %21, i32 0, i32 1
  %23 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %23, i64 %25
  store %struct.qedi_fastpath* %26, %struct.qedi_fastpath** %4, align 8
  %27 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %28 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %4, align 8
  %29 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %4, align 8
  %32 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @qedi_alloc_and_init_sb(%struct.qedi_ctx* %27, i32 %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %20
  %38 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %38, i32 0, i32 0
  %40 = call i32 @QEDI_ERR(i32* %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %48

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %15

47:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %55

48:                                               ; preds = %37
  %49 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %50 = call i32 @qedi_free_sb(%struct.qedi_ctx* %49)
  %51 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %52 = call i32 @qedi_free_fp(%struct.qedi_ctx* %51)
  br label %53

53:                                               ; preds = %48, %11
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %47
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @qedi_alloc_fp(%struct.qedi_ctx*) #1

declare dso_local i32 @qedi_int_fp(%struct.qedi_ctx*) #1

declare dso_local i32 @MIN_NUM_CPUS_MSIX(%struct.qedi_ctx*) #1

declare dso_local i32 @qedi_alloc_and_init_sb(%struct.qedi_ctx*, i32, i32) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*) #1

declare dso_local i32 @qedi_free_sb(%struct.qedi_ctx*) #1

declare dso_local i32 @qedi_free_fp(%struct.qedi_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
