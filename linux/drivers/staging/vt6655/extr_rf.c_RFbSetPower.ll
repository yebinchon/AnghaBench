; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rf.c_RFbSetPower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rf.c_RFbSetPower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i64, i8*, i8*, i8, i8, i32 }

@CB_MAX_CHANNEL = common dso_local global i32 0, align 4
@CB_MAX_CHANNEL_24G = common dso_local global i32 0, align 4
@RF_UW2452 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RFbSetPower(%struct.vnt_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnt_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.vnt_private* %0, %struct.vnt_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i8 0, i8* %9, align 1
  store i8 0, i8* %10, align 1
  %11 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %12 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %109

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @CB_MAX_CHANNEL, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %16
  store i32 0, i32* %4, align 4
  br label %109

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %87 [
    i32 136, label %26
    i32 134, label %26
    i32 130, label %26
    i32 139, label %26
    i32 129, label %39
    i32 128, label %39
    i32 138, label %39
    i32 137, label %39
    i32 135, label %79
    i32 133, label %79
    i32 132, label %79
    i32 131, label %79
  ]

26:                                               ; preds = %24, %24, %24, %24
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @CB_MAX_CHANNEL_24G, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %109

31:                                               ; preds = %26
  %32 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %33 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %9, align 1
  br label %87

39:                                               ; preds = %24, %24, %24, %24
  %40 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %41 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %9, align 1
  %47 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %48 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RF_UW2452, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %39
  %53 = load i8, i8* %9, align 1
  %54 = zext i8 %53 to i32
  %55 = add nsw i32 %54, 14
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %10, align 1
  br label %62

57:                                               ; preds = %39
  %58 = load i8, i8* %9, align 1
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %59, 10
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %10, align 1
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i8, i8* %10, align 1
  %64 = zext i8 %63 to i32
  %65 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %66 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %65, i32 0, i32 3
  %67 = load i8, i8* %66, align 8
  %68 = zext i8 %67 to i32
  %69 = icmp sge i32 %64, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %72 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %71, i32 0, i32 3
  %73 = load i8, i8* %72, align 8
  %74 = zext i8 %73 to i32
  %75 = sub nsw i32 %74, 1
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %10, align 1
  br label %77

77:                                               ; preds = %70, %62
  %78 = load i8, i8* %10, align 1
  store i8 %78, i8* %9, align 1
  br label %87

79:                                               ; preds = %24, %24, %24, %24
  %80 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %81 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  store i8 %86, i8* %9, align 1
  br label %87

87:                                               ; preds = %24, %79, %77, %31
  %88 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %89 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %88, i32 0, i32 4
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* %9, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  store i32 1, i32* %4, align 4
  br label %109

96:                                               ; preds = %87
  %97 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %98 = load i8, i8* %9, align 1
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @RFbRawSetPower(%struct.vnt_private* %97, i8 zeroext %98, i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i8, i8* %9, align 1
  %105 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %106 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %105, i32 0, i32 4
  store i8 %104, i8* %106, align 1
  br label %107

107:                                              ; preds = %103, %96
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %95, %30, %23, %15
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @RFbRawSetPower(%struct.vnt_private*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
