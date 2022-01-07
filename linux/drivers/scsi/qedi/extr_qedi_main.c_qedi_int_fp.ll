; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_int_fp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_int_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { %struct.qedi_fastpath*, %struct.qedi_fastpath* }
%struct.qedi_fastpath = type { i32, i32, %struct.qedi_ctx*, %struct.qedi_fastpath* }

@.str = private unnamed_addr constant [9 x i8] c"%s-fp-%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"qedi\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedi_ctx*)* @qedi_int_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_int_fp(%struct.qedi_ctx* %0) #0 {
  %2 = alloca %struct.qedi_ctx*, align 8
  %3 = alloca %struct.qedi_fastpath*, align 8
  %4 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %2, align 8
  %5 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %5, i32 0, i32 1
  %7 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %6, align 8
  %8 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %9 = call i32 @MIN_NUM_CPUS_MSIX(%struct.qedi_ctx* %8)
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 24
  %12 = trunc i64 %11 to i32
  %13 = call i32 @memset(%struct.qedi_fastpath* %7, i32 0, i32 %12)
  %14 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %14, i32 0, i32 0
  %16 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %15, align 8
  %17 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %18 = call i32 @MIN_NUM_CPUS_MSIX(%struct.qedi_ctx* %17)
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 24
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(%struct.qedi_fastpath* %16, i32 0, i32 %21)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %54, %1
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %26 = call i32 @MIN_NUM_CPUS_MSIX(%struct.qedi_ctx* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %23
  %29 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %30 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %29, i32 0, i32 1
  %31 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %31, i64 %33
  store %struct.qedi_fastpath* %34, %struct.qedi_fastpath** %3, align 8
  %35 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %35, i32 0, i32 0
  %37 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %37, i64 %39
  %41 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %3, align 8
  %42 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %41, i32 0, i32 3
  store %struct.qedi_fastpath* %40, %struct.qedi_fastpath** %42, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %3, align 8
  %45 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %47 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %3, align 8
  %48 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %47, i32 0, i32 2
  store %struct.qedi_ctx* %46, %struct.qedi_ctx** %48, align 8
  %49 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %3, align 8
  %50 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @snprintf(i32 %51, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %28
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %23

57:                                               ; preds = %23
  ret void
}

declare dso_local i32 @memset(%struct.qedi_fastpath*, i32, i32) #1

declare dso_local i32 @MIN_NUM_CPUS_MSIX(%struct.qedi_ctx*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
