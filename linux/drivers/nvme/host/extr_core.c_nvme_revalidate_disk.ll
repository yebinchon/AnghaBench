; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_revalidate_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_revalidate_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.nvme_ns* }
%struct.nvme_ns = type { %struct.TYPE_2__*, i32, %struct.nvme_ctrl* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nvme_ctrl = type { i32 }
%struct.nvme_id_ns = type { i64 }
%struct.nvme_ns_ids = type { i32 }

@NVME_NS_DEAD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"identifiers changed for nsid %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NVME_SC_DNR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*)* @nvme_revalidate_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_revalidate_disk(%struct.gendisk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.nvme_ctrl*, align 8
  %6 = alloca %struct.nvme_id_ns*, align 8
  %7 = alloca %struct.nvme_ns_ids, align 4
  %8 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  %9 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %10 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %9, i32 0, i32 0
  %11 = load %struct.nvme_ns*, %struct.nvme_ns** %10, align 8
  store %struct.nvme_ns* %11, %struct.nvme_ns** %4, align 8
  %12 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %13 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %12, i32 0, i32 2
  %14 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %13, align 8
  store %struct.nvme_ctrl* %14, %struct.nvme_ctrl** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @NVME_NS_DEAD, align 4
  %16 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %17 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %16, i32 0, i32 1
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %22 = call i32 @set_capacity(%struct.gendisk* %21, i32 0)
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %106

25:                                               ; preds = %1
  %26 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %27 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %28 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nvme_identify_ns(%struct.nvme_ctrl* %26, i32 %31, %struct.nvme_id_ns** %6)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %82

36:                                               ; preds = %25
  %37 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %6, align 8
  %38 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %79

44:                                               ; preds = %36
  %45 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %46 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %6, align 8
  %47 = call i32 @__nvme_revalidate_disk(%struct.gendisk* %45, %struct.nvme_id_ns* %46)
  %48 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %49 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %50 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %6, align 8
  %55 = call i32 @nvme_report_ns_ids(%struct.nvme_ctrl* %48, i32 %53, %struct.nvme_id_ns* %54, %struct.nvme_ns_ids* %7)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %79

59:                                               ; preds = %44
  %60 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %61 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = call i32 @nvme_ns_ids_equal(i32* %63, %struct.nvme_ns_ids* %7)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %59
  %67 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %68 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %71 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %66, %59
  br label %79

79:                                               ; preds = %78, %58, %41
  %80 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %6, align 8
  %81 = call i32 @kfree(%struct.nvme_id_ns* %80)
  br label %82

82:                                               ; preds = %79, %35
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %8, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @NVME_SC_DNR, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90, %82
  store i32 0, i32* %8, align 4
  br label %104

96:                                               ; preds = %90, %87
  %97 = load i32, i32* %8, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @nvme_error_status(i32 %100)
  %102 = call i32 @blk_status_to_errno(i32 %101)
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %99, %96
  br label %104

104:                                              ; preds = %103, %95
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %20
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @nvme_identify_ns(%struct.nvme_ctrl*, i32, %struct.nvme_id_ns**) #1

declare dso_local i32 @__nvme_revalidate_disk(%struct.gendisk*, %struct.nvme_id_ns*) #1

declare dso_local i32 @nvme_report_ns_ids(%struct.nvme_ctrl*, i32, %struct.nvme_id_ns*, %struct.nvme_ns_ids*) #1

declare dso_local i32 @nvme_ns_ids_equal(i32*, %struct.nvme_ns_ids*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.nvme_id_ns*) #1

declare dso_local i32 @blk_status_to_errno(i32) #1

declare dso_local i32 @nvme_error_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
