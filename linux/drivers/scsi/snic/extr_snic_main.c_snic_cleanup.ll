; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_main.c_snic_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_main.c_snic_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32 }

@snic_free_wq_buf = common dso_local global i32 0, align 4
@SNIC_REQ_MAX_CACHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snic*)* @snic_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snic_cleanup(%struct.snic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snic* %0, %struct.snic** %3, align 8
  %6 = load %struct.snic*, %struct.snic** %3, align 8
  %7 = getelementptr inbounds %struct.snic, %struct.snic* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @svnic_dev_disable(i32 %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.snic*, %struct.snic** %3, align 8
  %13 = getelementptr inbounds %struct.snic, %struct.snic* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.snic*, %struct.snic** %3, align 8
  %18 = getelementptr inbounds %struct.snic, %struct.snic* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @svnic_intr_mask(i32* %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %10

27:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.snic*, %struct.snic** %3, align 8
  %31 = getelementptr inbounds %struct.snic, %struct.snic* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load %struct.snic*, %struct.snic** %3, align 8
  %36 = getelementptr inbounds %struct.snic, %struct.snic* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @svnic_wq_disable(i32* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %131

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %28

50:                                               ; preds = %28
  %51 = load %struct.snic*, %struct.snic** %3, align 8
  %52 = call i32 @snic_fwcq_cmpl_handler(%struct.snic* %51, i32 -1)
  %53 = load %struct.snic*, %struct.snic** %3, align 8
  %54 = call i32 @snic_wq_cmpl_handler(%struct.snic* %53, i32 -1)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %70, %50
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.snic*, %struct.snic** %3, align 8
  %58 = getelementptr inbounds %struct.snic, %struct.snic* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load %struct.snic*, %struct.snic** %3, align 8
  %63 = getelementptr inbounds %struct.snic, %struct.snic* %62, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* @snic_free_wq_buf, align 4
  %69 = call i32 @svnic_wq_clean(i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %4, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %55

73:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %88, %73
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.snic*, %struct.snic** %3, align 8
  %77 = getelementptr inbounds %struct.snic, %struct.snic* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ult i32 %75, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load %struct.snic*, %struct.snic** %3, align 8
  %82 = getelementptr inbounds %struct.snic, %struct.snic* %81, i32 0, i32 5
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i32 @svnic_cq_clean(i32* %86)
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %4, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %74

91:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %106, %91
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.snic*, %struct.snic** %3, align 8
  %95 = getelementptr inbounds %struct.snic, %struct.snic* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ult i32 %93, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = load %struct.snic*, %struct.snic** %3, align 8
  %100 = getelementptr inbounds %struct.snic, %struct.snic* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = call i32 @svnic_intr_clean(i32* %104)
  br label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %4, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %92

109:                                              ; preds = %92
  %110 = load %struct.snic*, %struct.snic** %3, align 8
  %111 = call i32 @snic_free_all_untagged_reqs(%struct.snic* %110)
  %112 = load %struct.snic*, %struct.snic** %3, align 8
  %113 = call i32 @snic_shutdown_scsi_cleanup(%struct.snic* %112)
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %127, %109
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @SNIC_REQ_MAX_CACHES, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = load %struct.snic*, %struct.snic** %3, align 8
  %120 = getelementptr inbounds %struct.snic, %struct.snic* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @mempool_destroy(i32 %125)
  br label %127

127:                                              ; preds = %118
  %128 = load i32, i32* %4, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %114

130:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %44
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @svnic_dev_disable(i32) #1

declare dso_local i32 @svnic_intr_mask(i32*) #1

declare dso_local i32 @svnic_wq_disable(i32*) #1

declare dso_local i32 @snic_fwcq_cmpl_handler(%struct.snic*, i32) #1

declare dso_local i32 @snic_wq_cmpl_handler(%struct.snic*, i32) #1

declare dso_local i32 @svnic_wq_clean(i32*, i32) #1

declare dso_local i32 @svnic_cq_clean(i32*) #1

declare dso_local i32 @svnic_intr_clean(i32*) #1

declare dso_local i32 @snic_free_all_untagged_reqs(%struct.snic*) #1

declare dso_local i32 @snic_shutdown_scsi_cleanup(%struct.snic*) #1

declare dso_local i32 @mempool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
