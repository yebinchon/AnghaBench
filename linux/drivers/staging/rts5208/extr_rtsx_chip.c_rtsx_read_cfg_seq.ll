; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_read_cfg_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_read_cfg_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"dw_len = %d\0A\00", align 1
@STATUS_NOMEM = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_read_cfg_seq(%struct.rtsx_chip* %0, i64 %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtsx_chip*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = srem i32 %19, 4
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %13, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %13, align 4
  %26 = add nsw i32 %24, %25
  %27 = srem i32 %26, 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %5
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %30, %31
  %33 = sdiv i32 %32, 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %15, align 4
  br label %40

35:                                               ; preds = %5
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %36, %37
  %39 = sdiv i32 %38, 4
  store i32 %39, i32* %15, align 4
  br label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %42 = call i32 @rtsx_dev(%struct.rtsx_chip* %41)
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @array_size(i32 %45, i32 4)
  %47 = call i32* @vmalloc(i32 %46)
  store i32* %47, i32** %12, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* @STATUS_NOMEM, align 4
  store i32 %51, i32* %6, align 4
  br label %117

52:                                               ; preds = %40
  store i32 0, i32* %16, align 4
  br label %53

53:                                               ; preds = %77, %52
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %53
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %16, align 4
  %62 = mul nsw i32 %61, 4
  %63 = add nsw i32 %60, %62
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @rtsx_read_cfg_dw(%struct.rtsx_chip* %58, i64 %59, i32 %63, i32* %67)
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* @STATUS_SUCCESS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %57
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @vfree(i32* %73)
  %75 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %75, i32* %6, align 4
  br label %117

76:                                               ; preds = %57
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %16, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %16, align 4
  br label %53

80:                                               ; preds = %53
  %81 = load i64*, i64** %10, align 8
  %82 = icmp ne i64* %81, null
  br i1 %82, label %83, label %113

83:                                               ; preds = %80
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %84

84:                                               ; preds = %109, %83
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %112

88:                                               ; preds = %84
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %13, align 4
  %95 = mul nsw i32 %94, 8
  %96 = ashr i32 %93, %95
  %97 = sext i32 %96 to i64
  %98 = load i64*, i64** %10, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  store i64 %97, i64* %101, align 8
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  %104 = icmp eq i32 %103, 4
  br i1 %104, label %105, label %108

105:                                              ; preds = %88
  %106 = load i32, i32* %17, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %108

108:                                              ; preds = %105, %88
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  br label %84

112:                                              ; preds = %84
  br label %113

113:                                              ; preds = %112, %80
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @vfree(i32* %114)
  %116 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %113, %72, %50
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @rtsx_read_cfg_dw(%struct.rtsx_chip*, i64, i32, i32*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
