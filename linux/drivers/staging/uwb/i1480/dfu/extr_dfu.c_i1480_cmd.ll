; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_dfu.c_i1480_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_dfu.c_i1480_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480 = type { i64 (%struct.i1480*, i8*, i64)*, i64 (%struct.i1480*)*, %struct.uwb_rceb*, i32, i32, i32, %struct.uwb_rccb* }
%struct.uwb_rceb = type { i32, i32 }
%struct.uwb_rccb = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: command reply reception failed: %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%s returned only %zu bytes, %zu expected\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i1480_cmd(%struct.i1480* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.i1480*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.uwb_rceb*, align 8
  %11 = alloca %struct.uwb_rccb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i1480* %0, %struct.i1480** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.i1480*, %struct.i1480** %5, align 8
  %16 = getelementptr inbounds %struct.i1480, %struct.i1480* %15, i32 0, i32 2
  %17 = load %struct.uwb_rceb*, %struct.uwb_rceb** %16, align 8
  store %struct.uwb_rceb* %17, %struct.uwb_rceb** %10, align 8
  %18 = load %struct.i1480*, %struct.i1480** %5, align 8
  %19 = getelementptr inbounds %struct.i1480, %struct.i1480* %18, i32 0, i32 6
  %20 = load %struct.uwb_rccb*, %struct.uwb_rccb** %19, align 8
  store %struct.uwb_rccb* %20, %struct.uwb_rccb** %11, align 8
  %21 = load %struct.uwb_rceb*, %struct.uwb_rceb** %10, align 8
  %22 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.uwb_rceb*, %struct.uwb_rceb** %10, align 8
  %25 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.i1480*, %struct.i1480** %5, align 8
  %28 = getelementptr inbounds %struct.i1480, %struct.i1480* %27, i32 0, i32 5
  %29 = call i32 @init_completion(i32* %28)
  %30 = load i32, i32* @EINPROGRESS, align 4
  %31 = sub nsw i32 0, %30
  %32 = load %struct.i1480*, %struct.i1480** %5, align 8
  %33 = getelementptr inbounds %struct.i1480, %struct.i1480* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %42, %4
  %35 = call i32 @get_random_bytes(i32* %14, i32 1)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %14, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %14, align 4
  %41 = icmp eq i32 %40, 255
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i1 [ true, %36 ], [ %41, %39 ]
  br i1 %43, label %34, label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.uwb_rccb*, %struct.uwb_rccb** %11, align 8
  %47 = getelementptr inbounds %struct.uwb_rccb, %struct.uwb_rccb* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.i1480*, %struct.i1480** %5, align 8
  %49 = getelementptr inbounds %struct.i1480, %struct.i1480* %48, i32 0, i32 0
  %50 = load i64 (%struct.i1480*, i8*, i64)*, i64 (%struct.i1480*, i8*, i64)** %49, align 8
  %51 = load %struct.i1480*, %struct.i1480** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i64 %50(%struct.i1480* %51, i8* %52, i64 %53)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ult i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %133

58:                                               ; preds = %44
  %59 = load %struct.i1480*, %struct.i1480** %5, align 8
  %60 = getelementptr inbounds %struct.i1480, %struct.i1480* %59, i32 0, i32 5
  %61 = load i32, i32* @HZ, align 4
  %62 = call i64 @wait_for_completion_interruptible_timeout(i32* %60, i32 %61)
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @ETIMEDOUT, align 4
  %67 = sub nsw i32 0, %66
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %9, align 8
  br label %133

69:                                               ; preds = %58
  %70 = load i64, i64* %9, align 8
  %71 = icmp ult i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %133

73:                                               ; preds = %69
  %74 = load %struct.i1480*, %struct.i1480** %5, align 8
  %75 = getelementptr inbounds %struct.i1480, %struct.i1480* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = icmp ult i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.i1480*, %struct.i1480** %5, align 8
  %82 = getelementptr inbounds %struct.i1480, %struct.i1480* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i32 (i32, i8*, i8*, i64, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %84, i64 %85)
  br label %133

87:                                               ; preds = %73
  %88 = load %struct.i1480*, %struct.i1480** %5, align 8
  %89 = load %struct.i1480*, %struct.i1480** %5, align 8
  %90 = getelementptr inbounds %struct.i1480, %struct.i1480* %89, i32 0, i32 2
  %91 = load %struct.uwb_rceb*, %struct.uwb_rceb** %90, align 8
  %92 = call i64 @i1480_rceb_check(%struct.i1480* %88, %struct.uwb_rceb* %91, i8* null, i32 0, i32 253, i32 34)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %87
  %95 = load %struct.i1480*, %struct.i1480** %5, align 8
  %96 = getelementptr inbounds %struct.i1480, %struct.i1480* %95, i32 0, i32 1
  %97 = load i64 (%struct.i1480*)*, i64 (%struct.i1480*)** %96, align 8
  %98 = load %struct.i1480*, %struct.i1480** %5, align 8
  %99 = call i64 %97(%struct.i1480* %98)
  store i64 %99, i64* %9, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp ult i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %133

103:                                              ; preds = %94
  %104 = load %struct.i1480*, %struct.i1480** %5, align 8
  %105 = getelementptr inbounds %struct.i1480, %struct.i1480* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %9, align 8
  br label %108

108:                                              ; preds = %103, %87
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %8, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %108
  %113 = load %struct.i1480*, %struct.i1480** %5, align 8
  %114 = getelementptr inbounds %struct.i1480, %struct.i1480* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* %8, align 8
  %119 = call i32 (i32, i8*, i8*, i64, ...) @dev_err(i32 %115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %116, i64 %117, i64 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %9, align 8
  br label %133

123:                                              ; preds = %108
  %124 = load %struct.i1480*, %struct.i1480** %5, align 8
  %125 = load %struct.i1480*, %struct.i1480** %5, align 8
  %126 = getelementptr inbounds %struct.i1480, %struct.i1480* %125, i32 0, i32 2
  %127 = load %struct.uwb_rceb*, %struct.uwb_rceb** %126, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i64 @i1480_rceb_check(%struct.i1480* %124, %struct.uwb_rceb* %127, i8* %128, i32 %129, i32 %130, i32 %131)
  store i64 %132, i64* %9, align 8
  br label %133

133:                                              ; preds = %123, %112, %102, %80, %72, %65, %57
  %134 = load i64, i64* %9, align 8
  ret i64 %134
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i64, ...) #1

declare dso_local i64 @i1480_rceb_check(%struct.i1480*, %struct.uwb_rceb*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
