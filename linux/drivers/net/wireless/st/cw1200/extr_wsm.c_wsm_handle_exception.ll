; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_handle_exception.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_handle_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wsm_buf = type { i8*, i8*, i8* }

@wsm_handle_exception.reason_str = internal constant [4 x i8*] [i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [22 x i8] c"undefined instruction\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"prefetch abort\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"data abort\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Firmware exception: %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Firmware assert at %.*s, line %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"R%d: 0x%.8X, R%d: 0x%.8X, R%d: 0x%.8X, R%d: 0x%.8X,\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"R12: 0x%.8X, SP: 0x%.8X, LR: 0x%.8X, PC: 0x%.8X,\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"CPSR: 0x%.8X, SPSR: 0x%.8X\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"R1: \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"Firmware exception.\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Exception: \00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wsm_handle_exception(%struct.cw1200_common* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cw1200_common*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wsm_buf, align 8
  %9 = alloca i32, align 4
  %10 = alloca [18 x i32], align 16
  %11 = alloca [48 x i8], align 16
  %12 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %8, i32 0, i32 1
  store i8* %13, i8** %14, align 8
  %15 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %8, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %8, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %8, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = call i32 @WSM_GET32(%struct.wsm_buf* %8)
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %32, %3
  %23 = load i32, i32* %12, align 4
  %24 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 0
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = call i32 @WSM_GET32(%struct.wsm_buf* %8)
  %29 = load i32, i32* %12, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 %30
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %12, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %12, align 4
  br label %22

35:                                               ; preds = %22
  %36 = getelementptr inbounds [48 x i8], [48 x i8]* %11, i64 0, i64 0
  %37 = call i32 @WSM_GET(%struct.wsm_buf* %8, i8* %36, i32 48)
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %42 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i8*], [4 x i8*]* @wsm_handle_exception.reason_str, i64 0, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i32, i8*, ...) @wiphy_err(i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  br label %61

51:                                               ; preds = %35
  %52 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %53 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [48 x i8], [48 x i8]* %11, i64 0, i64 0
  %58 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, ...) @wiphy_err(i32 %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 48, i8* %57, i32 %59)
  br label %61

61:                                               ; preds = %51, %40
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %100, %61
  %63 = load i32, i32* %12, align 4
  %64 = icmp ult i32 %63, 12
  br i1 %64, label %65, label %103

65:                                               ; preds = %62
  %66 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %67 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %12, align 4
  %72 = add i32 %71, 0
  %73 = load i32, i32* %12, align 4
  %74 = add i32 %73, 0
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = add i32 %78, 1
  %80 = load i32, i32* %12, align 4
  %81 = add i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %12, align 4
  %86 = add i32 %85, 2
  %87 = load i32, i32* %12, align 4
  %88 = add i32 %87, 2
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %12, align 4
  %93 = add i32 %92, 3
  %94 = load i32, i32* %12, align 4
  %95 = add i32 %94, 3
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, ...) @wiphy_err(i32 %70, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %72, i32 %77, i32 %79, i32 %84, i32 %86, i32 %91, i32 %93, i32 %98)
  br label %100

100:                                              ; preds = %65
  %101 = load i32, i32* %12, align 4
  %102 = add i32 %101, 4
  store i32 %102, i32* %12, align 4
  br label %62

103:                                              ; preds = %62
  %104 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %105 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %12, align 4
  %110 = add i32 %109, 0
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %12, align 4
  %115 = add i32 %114, 1
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %12, align 4
  %120 = add i32 %119, 2
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %12, align 4
  %125 = add i32 %124, 3
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32, i8*, ...) @wiphy_err(i32 %108, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %113, i32 %118, i32 %123, i32 %128)
  %130 = load i32, i32* %12, align 4
  %131 = add i32 %130, 4
  store i32 %131, i32* %12, align 4
  %132 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %133 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %12, align 4
  %138 = add i32 %137, 0
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %12, align 4
  %143 = add i32 %142, 1
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i32, i8*, ...) @wiphy_err(i32 %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %141, i32 %146)
  %148 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %149 = getelementptr inbounds [48 x i8], [48 x i8]* %11, i64 0, i64 0
  %150 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %148, i8* %149, i64 48)
  store i32 0, i32* %4, align 4
  br label %164

151:                                              ; No predecessors!
  %152 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %153 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, ...) @wiphy_err(i32 %156, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %158 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %159 = load i8*, i8** %6, align 8
  %160 = load i64, i64* %7, align 8
  %161 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %158, i8* %159, i64 %160)
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %151, %103
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i32 @WSM_GET32(%struct.wsm_buf*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @WSM_GET(%struct.wsm_buf*, i8*, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*, ...) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
