; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2xxx_get_vpd_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2xxx_get_vpd_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2xxx_get_vpd_field(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qla_hw_data*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %10, align 8
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  store i32* %25, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %27 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @qla2xxx_is_vpd_valid(i32* %30, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %4
  store i32 0, i32* %5, align 4
  br label %103

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %80, %35
  %37 = load i32*, i32** %11, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = icmp ult i32* %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 120
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i1 [ false, %36 ], [ %43, %40 ]
  br i1 %45, label %46, label %83

46:                                               ; preds = %44
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 130
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  br label %58

54:                                               ; preds = %46
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i32 [ %53, %50 ], [ %57, %54 ]
  store i32 %59, i32* %13, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = call i32 @strncmp(i32* %60, i8* %61, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  br label %83

67:                                               ; preds = %58
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 144
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 145
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32, i32* %13, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %11, align 8
  br label %80

80:                                               ; preds = %75, %71, %67
  %81 = load i32*, i32** %11, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  store i32* %82, i32** %11, align 8
  br label %36

83:                                               ; preds = %66, %44
  %84 = load i32*, i32** %11, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = sub i64 0, %87
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = icmp ult i32* %84, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %83
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 120
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load i8*, i8** %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  %101 = call i32 @scnprintf(i8* %96, i64 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %98, i32* %100)
  store i32 %101, i32* %5, align 4
  br label %103

102:                                              ; preds = %91, %83
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %102, %95, %34
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2xxx_is_vpd_valid(i32*, i32*) #1

declare dso_local i32 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
