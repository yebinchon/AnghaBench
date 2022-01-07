; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_check_ob_list_9143.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_check_ob_list_9143.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i32, i64, %struct.mvumi_hw_regs*, i32 }
%struct.mvumi_hw_regs = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvumi_hba*, i32*, i32*)* @mvumi_check_ob_list_9143 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_check_ob_list_9143(%struct.mvumi_hba* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.mvumi_hba*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mvumi_hw_regs*, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %11 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %10, i32 0, i32 2
  %12 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %11, align 8
  store %struct.mvumi_hw_regs* %12, %struct.mvumi_hw_regs** %9, align 8
  br label %13

13:                                               ; preds = %22, %3
  %14 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %9, align 8
  %15 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ioread32(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %19 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ioread32(i32 %20)
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %9, align 8
  %25 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %23, %26
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %13, label %30

30:                                               ; preds = %22
  %31 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %32 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %35 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %34, i32 0, i32 2
  %36 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %35, align 8
  %37 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %33, %38
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %43 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %42, i32 0, i32 2
  %44 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %43, align 8
  %45 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %41, %46
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %9, align 8
  %51 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %49, %52
  %54 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %55 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %9, align 8
  %58 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %53, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %30
  %63 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %64 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  %68 = zext i32 %67 to i64
  %69 = add nsw i64 %68, %65
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 4
  br label %71

71:                                               ; preds = %62, %30
  ret i32 0
}

declare dso_local i32 @ioread32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
