; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_check_ob_list_9580.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_check_ob_list_9580.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i32, i64, %struct.mvumi_hw_regs* }
%struct.mvumi_hw_regs = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvumi_hba*, i32*, i32*)* @mvumi_check_ob_list_9580 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_check_ob_list_9580(%struct.mvumi_hba* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvumi_hba*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mvumi_hw_regs*, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %11 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %10, i32 0, i32 2
  %12 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %11, align 8
  store %struct.mvumi_hw_regs* %12, %struct.mvumi_hw_regs** %9, align 8
  %13 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %9, align 8
  %14 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ioread32(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %9, align 8
  %18 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ioread32(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %22 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %25 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %24, i32 0, i32 2
  %26 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %25, align 8
  %27 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %23, %28
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %33 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %32, i32 0, i32 2
  %34 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %33, align 8
  %35 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %31, %36
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %3
  %45 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %46 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %50, %47
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  br label %61

53:                                               ; preds = %3
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 -1, i32* %4, align 4
  br label %62

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %44
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %59
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @ioread32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
