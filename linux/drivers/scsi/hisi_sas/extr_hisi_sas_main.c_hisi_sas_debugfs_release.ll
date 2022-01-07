; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@DEBUGFS_REGS_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*)* @hisi_sas_debugfs_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_debugfs_release(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %5 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %6 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %5, i32 0, i32 9
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %10 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @devm_kfree(%struct.device* %8, i32 %11)
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %15 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @devm_kfree(%struct.device* %13, i32 %16)
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %20 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @devm_kfree(%struct.device* %18, i32 %21)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %39, %1
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %26 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %32 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @devm_kfree(%struct.device* %30, i32 %37)
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %23

42:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %59, %42
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %46 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load %struct.device*, %struct.device** %3, align 8
  %51 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %52 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @devm_kfree(%struct.device* %50, i32 %57)
  br label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %43

62:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %77, %62
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @DEBUGFS_REGS_NUM, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %70 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @devm_kfree(%struct.device* %68, i32 %75)
  br label %77

77:                                               ; preds = %67
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %63

80:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %97, %80
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %84 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %81
  %88 = load %struct.device*, %struct.device** %3, align 8
  %89 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %90 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @devm_kfree(%struct.device* %88, i32 %95)
  br label %97

97:                                               ; preds = %87
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %81

100:                                              ; preds = %81
  ret void
}

declare dso_local i32 @devm_kfree(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
