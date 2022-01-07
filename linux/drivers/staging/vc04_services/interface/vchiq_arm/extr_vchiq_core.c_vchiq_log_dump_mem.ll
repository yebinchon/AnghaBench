; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_log_dump_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_log_dump_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@VCHIQ_LOG_TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%s: %08x: %s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%08x: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vchiq_log_dump_mem(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [100 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %9, align 8
  br label %15

15:                                               ; preds = %113, %4
  %16 = load i64, i64* %8, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %114

18:                                               ; preds = %15
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  store i8* %19, i8** %12, align 8
  store i64 0, i64* %10, align 8
  br label %20

20:                                               ; preds = %45, %18
  %21 = load i64, i64* %10, align 8
  %22 = icmp ult i64 %21, 16
  br i1 %22, label %23, label %48

23:                                               ; preds = %20
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i8*, i8** %12, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %28, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i8*, i8** %12, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %12, align 8
  br label %44

38:                                               ; preds = %23
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %39, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i8*, i8** %12, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %12, align 8
  br label %44

44:                                               ; preds = %38, %27
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %10, align 8
  br label %20

48:                                               ; preds = %20
  store i64 0, i64* %10, align 8
  br label %49

49:                                               ; preds = %74, %48
  %50 = load i64, i64* %10, align 8
  %51 = icmp ult i64 %50, 16
  br i1 %51, label %52, label %77

52:                                               ; preds = %49
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %13, align 1
  %61 = load i8, i8* %13, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp slt i32 %62, 32
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = load i8, i8* %13, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp sgt i32 %66, 126
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %56
  store i8 46, i8* %13, align 1
  br label %69

69:                                               ; preds = %68, %64
  %70 = load i8, i8* %13, align 1
  %71 = load i8*, i8** %12, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %12, align 8
  store i8 %70, i8* %71, align 1
  br label %73

73:                                               ; preds = %69, %52
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %10, align 8
  br label %49

77:                                               ; preds = %49
  %78 = load i8*, i8** %12, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %12, align 8
  store i8 0, i8* %78, align 1
  %80 = load i8*, i8** %5, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i32, i32* @VCHIQ_LOG_TRACE, align 4
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %94 = call i32 (i32, i8*, i8*, i8*, ...) @vchiq_log_trace(i32 %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %89, i8* %92, i8* %93)
  br label %102

95:                                               ; preds = %82, %77
  %96 = load i32, i32* @VCHIQ_LOG_TRACE, align 4
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %101 = call i32 (i32, i8*, i8*, i8*, ...) @vchiq_log_trace(i32 %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %99, i8* %100)
  br label %102

102:                                              ; preds = %95, %87
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 16
  store i32 %104, i32* %6, align 4
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 16
  store i8* %106, i8** %9, align 8
  %107 = load i64, i64* %8, align 8
  %108 = icmp ugt i64 %107, 16
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i64, i64* %8, align 8
  %111 = sub i64 %110, 16
  store i64 %111, i64* %8, align 8
  br label %113

112:                                              ; preds = %102
  store i64 0, i64* %8, align 8
  br label %113

113:                                              ; preds = %112, %109
  br label %15

114:                                              ; preds = %15
  ret void
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @vchiq_log_trace(i32, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
