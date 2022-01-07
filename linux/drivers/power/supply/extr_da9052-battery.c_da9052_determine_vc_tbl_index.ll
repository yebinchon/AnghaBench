; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9052-battery.c_da9052_determine_vc_tbl_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9052-battery.c_da9052_determine_vc_tbl_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vc_tbl_ref = common dso_local global i8* null, align 8
@DA9052_VC_TBL_REF_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8)* @da9052_determine_vc_tbl_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @da9052_determine_vc_tbl_index(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8*, i8** @vc_tbl_ref, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp sle i32 %6, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8 0, i8* %2, align 1
  br label %101

13:                                               ; preds = %1
  %14 = load i8, i8* %3, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8*, i8** @vc_tbl_ref, align 8
  %17 = load i32, i32* @DA9052_VC_TBL_REF_SZ, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sgt i32 %15, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load i32, i32* @DA9052_VC_TBL_REF_SZ, align 4
  %26 = sub nsw i32 %25, 1
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %2, align 1
  br label %101

28:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %96, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @DA9052_VC_TBL_REF_SZ, align 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %99

34:                                               ; preds = %29
  %35 = load i8, i8* %3, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8*, i8** @vc_tbl_ref, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sgt i32 %36, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %34
  %45 = load i8, i8* %3, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8*, i8** @vc_tbl_ref, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** @vc_tbl_ref, align 8
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = call zeroext i8 @DA9052_MEAN(i8 zeroext %51, i8 zeroext %57)
  %59 = zext i8 %58 to i32
  %60 = icmp sle i32 %46, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %44
  %62 = load i32, i32* %4, align 4
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %2, align 1
  br label %101

64:                                               ; preds = %44, %34
  %65 = load i8, i8* %3, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8*, i8** @vc_tbl_ref, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** @vc_tbl_ref, align 8
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = call zeroext i8 @DA9052_MEAN(i8 zeroext %71, i8 zeroext %77)
  %79 = zext i8 %78 to i32
  %80 = icmp sgt i32 %66, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %64
  %82 = load i8, i8* %3, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8*, i8** @vc_tbl_ref, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp sle i32 %83, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %81
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %2, align 1
  br label %101

95:                                               ; preds = %81, %64
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %29

99:                                               ; preds = %29
  %100 = call i32 @WARN_ON(i32 1)
  store i8 0, i8* %2, align 1
  br label %101

101:                                              ; preds = %99, %91, %61, %24, %12
  %102 = load i8, i8* %2, align 1
  ret i8 %102
}

declare dso_local zeroext i8 @DA9052_MEAN(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
