; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_logging.c_scsi_format_opcode_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_logging.c_scsi_format_opcode_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VARIABLE_LENGTH_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"short variable length command, len=%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"opcode=0x%x\00", align 1
@VENDOR_SPECIFIC_CDB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" (vendor)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" (reserved)\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%s, sa=0x%x\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"opcode=0x%x, sa=0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*)* @scsi_format_opcode_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scsi_format_opcode_name(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @VARIABLE_LENGTH_CMD, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @scsi_varlen_cdb_length(i8* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 10
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %27, i64 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  store i64 %31, i64* %4, align 8
  br label %140

32:                                               ; preds = %21
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %36, 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 9
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %37, %41
  store i32 %42, i32* %8, align 4
  br label %49

43:                                               ; preds = %3
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 31
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %43, %32
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @scsi_opcode_sa_name(i32 %50, i32 %51, i8** %10, i8** %11)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %108, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %58, i64 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  store i64 %61, i64* %12, align 8
  br label %107

62:                                               ; preds = %54
  %63 = load i8*, i8** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %63, i64 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp uge i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @WARN_ON(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i64, i64* %12, align 8
  store i64 %74, i64* %4, align 8
  br label %140

75:                                               ; preds = %62
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @VENDOR_SPECIFIC_CDB, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load i8*, i8** %5, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* %12, align 8
  %85 = sub i64 %83, %84
  %86 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %82, i64 %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i64, i64* %12, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %12, align 8
  br label %106

89:                                               ; preds = %75
  %90 = load i32, i32* %9, align 4
  %91 = icmp sge i32 %90, 96
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %93, 126
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i8*, i8** %5, align 8
  %97 = load i64, i64* %12, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* %12, align 8
  %101 = sub i64 %99, %100
  %102 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %98, i64 %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %103 = load i64, i64* %12, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %12, align 8
  br label %105

105:                                              ; preds = %95, %92, %89
  br label %106

106:                                              ; preds = %105, %79
  br label %107

107:                                              ; preds = %106, %57
  br label %133

108:                                              ; preds = %49
  %109 = load i8*, i8** %11, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i8*, i8** %5, align 8
  %113 = load i64, i64* %6, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %112, i64 %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %114)
  store i64 %115, i64* %12, align 8
  br label %132

116:                                              ; preds = %108
  %117 = load i8*, i8** %10, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i8*, i8** %5, align 8
  %121 = load i64, i64* %6, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %120, i64 %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %122, i32 %123)
  store i64 %124, i64* %12, align 8
  br label %131

125:                                              ; preds = %116
  %126 = load i8*, i8** %5, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %126, i64 %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %128, i32 %129)
  store i64 %130, i64* %12, align 8
  br label %131

131:                                              ; preds = %125, %119
  br label %132

132:                                              ; preds = %131, %111
  br label %133

133:                                              ; preds = %132, %107
  %134 = load i64, i64* %12, align 8
  %135 = load i64, i64* %6, align 8
  %136 = icmp uge i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i64 @WARN_ON(i32 %137)
  %139 = load i64, i64* %12, align 8
  store i64 %139, i64* %4, align 8
  br label %140

140:                                              ; preds = %133, %73, %26
  %141 = load i64, i64* %4, align 8
  ret i64 %141
}

declare dso_local i32 @scsi_varlen_cdb_length(i8*) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @scsi_opcode_sa_name(i32, i32, i8**, i8**) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
