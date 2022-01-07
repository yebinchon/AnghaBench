; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmhpd.c_rpmhpd_update_level_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmhpd.c_rpmhpd_update_level_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmhpd = type { i32, i64*, i32 }

@RPMH_ARC_MAX_LEVELS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: ARC hlvl=%2d --> vlvl=%4u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmhpd*)* @rpmhpd_update_level_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmhpd_update_level_mapping(%struct.rpmhpd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpmhpd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  store %struct.rpmhpd* %0, %struct.rpmhpd** %3, align 8
  %6 = load %struct.rpmhpd*, %struct.rpmhpd** %3, align 8
  %7 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.rpmhpd*, %struct.rpmhpd** %3, align 8
  %10 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %9, i32 0, i32 0
  %11 = call i64* @cmd_db_read_aux_data(i32 %8, i32* %10)
  store i64* %11, i64** %5, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = call i64 @IS_ERR(i64* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i64*, i64** %5, align 8
  %17 = call i32 @PTR_ERR(i64* %16)
  store i32 %17, i32* %2, align 4
  br label %82

18:                                               ; preds = %1
  %19 = load %struct.rpmhpd*, %struct.rpmhpd** %3, align 8
  %20 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.rpmhpd*, %struct.rpmhpd** %3, align 8
  %24 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @RPMH_ARC_MAX_LEVELS, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %82

31:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %78, %31
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.rpmhpd*, %struct.rpmhpd** %3, align 8
  %35 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %32
  %39 = load i64*, i64** %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.rpmhpd*, %struct.rpmhpd** %3, align 8
  %45 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 %43, i64* %49, align 8
  %50 = load i32, i32* %4, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %38
  %53 = load %struct.rpmhpd*, %struct.rpmhpd** %3, align 8
  %54 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.rpmhpd*, %struct.rpmhpd** %3, align 8
  %64 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %81

65:                                               ; preds = %52, %38
  %66 = load %struct.rpmhpd*, %struct.rpmhpd** %3, align 8
  %67 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.rpmhpd*, %struct.rpmhpd** %3, align 8
  %71 = getelementptr inbounds %struct.rpmhpd, %struct.rpmhpd* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69, i64 %76)
  br label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %32

81:                                               ; preds = %61, %32
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %28, %15
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i64* @cmd_db_read_aux_data(i32, i32*) #1

declare dso_local i64 @IS_ERR(i64*) #1

declare dso_local i32 @PTR_ERR(i64*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
