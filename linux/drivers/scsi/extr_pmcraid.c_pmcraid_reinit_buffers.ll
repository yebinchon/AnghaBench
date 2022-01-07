; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_reinit_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_reinit_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { i32, i32*, i64*, i64*, i64* }

@HRRQ_ENTRY_SIZE = common dso_local global i32 0, align 4
@PMCRAID_MAX_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_instance*)* @pmcraid_reinit_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_reinit_buffers(%struct.pmcraid_instance* %0) #0 {
  %2 = alloca %struct.pmcraid_instance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %2, align 8
  %5 = load i32, i32* @HRRQ_ENTRY_SIZE, align 4
  %6 = load i32, i32* @PMCRAID_MAX_CMD, align 4
  %7 = mul nsw i32 %5, %6
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %60, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %11 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %63

14:                                               ; preds = %8
  %15 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %16 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @memset(i64 %21, i32 0, i32 %22)
  %24 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %25 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %24, i32 0, i32 2
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %32 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %31, i32 0, i32 4
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 %30, i64* %36, align 8
  %37 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %38 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @PMCRAID_MAX_CMD, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = sub nsw i64 %46, 1
  %48 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %49 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %48, i32 0, i32 3
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 %47, i64* %53, align 8
  %54 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %55 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %14
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %8

63:                                               ; preds = %8
  ret void
}

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
