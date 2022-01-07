; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/ni_routing/tools/extr_convert_c_to_py.c_family_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/ni_routing/tools/extr_convert_c_to_py.c_family_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.family_route_values = type { i8* }

@.str = private unnamed_addr constant [54 x i8] c"  \22%s\22 : {\0A    # dest -> {src0:val0, src1:val1, ...}\0A\00", align 1
@NI_NAMES_BASE = common dso_local global i32 0, align 4
@NI_NUM_NAMES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"    %u : {\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Invalid register marking %s[%u][%u] = %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"      %u : \22%s(%u)\22,\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"    },\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"  },\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @family_write(%struct.family_route_values* %0, i32* %1) #0 {
  %3 = alloca %struct.family_route_values*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.family_route_values* %0, %struct.family_route_values** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.family_route_values*, %struct.family_route_values** %3, align 8
  %11 = getelementptr inbounds %struct.family_route_values, %struct.family_route_values* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32, i32* @NI_NAMES_BASE, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %114, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NI_NAMES_BASE, align 4
  %18 = load i32, i32* @NI_NUM_NAMES, align 4
  %19 = add i32 %17, %18
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %117

21:                                               ; preds = %15
  %22 = load i32, i32* @NI_NAMES_BASE, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %40, %21
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @NI_NAMES_BASE, align 4
  %26 = load i32, i32* @NI_NUM_NAMES, align 4
  %27 = add i32 %25, %26
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.family_route_values*, %struct.family_route_values** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @B(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @B(i32 %33)
  %35 = call i64 @RVij(%struct.family_route_values* %30, i32 %32, i32 %34)
  %36 = icmp eq i64 %35, 0
  br label %37

37:                                               ; preds = %29, %23
  %38 = phi i1 [ false, %23 ], [ %36, %29 ]
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %23

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @NI_NAMES_BASE, align 4
  %46 = load i32, i32* @NI_NUM_NAMES, align 4
  %47 = add i32 %45, %46
  %48 = icmp uge i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %114

50:                                               ; preds = %43
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @NI_NAMES_BASE, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %108, %50
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @NI_NAMES_BASE, align 4
  %58 = load i32, i32* @NI_NUM_NAMES, align 4
  %59 = add i32 %57, %58
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %111

61:                                               ; preds = %55
  %62 = load %struct.family_route_values*, %struct.family_route_values** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @B(i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @B(i32 %65)
  %67 = call i64 @RVij(%struct.family_route_values* %62, i32 %64, i32 %66)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %108

71:                                               ; preds = %61
  %72 = load i64, i64* %7, align 8
  %73 = call i64 @MARKED_V(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %100

76:                                               ; preds = %71
  %77 = load i64, i64* %7, align 8
  %78 = call i64 @MARKED_I(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %99

81:                                               ; preds = %76
  %82 = load i64, i64* %7, align 8
  %83 = call i64 @MARKED_U(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %98

86:                                               ; preds = %81
  %87 = load i32, i32* @stderr, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i32*
  %90 = load %struct.family_route_values*, %struct.family_route_values** %3, align 8
  %91 = getelementptr inbounds %struct.family_route_values, %struct.family_route_values* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i64, i64* %7, align 8
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %89, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %92, i32 %93, i32 %94, i64 %95)
  %97 = call i32 @exit(i32 1) #3
  unreachable

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %80
  br label %100

100:                                              ; preds = %99, %75
  br label %101

101:                                              ; preds = %100
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i8*, i8** %8, align 8
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @UNMARK(i64 %105)
  %107 = call i32 (i32*, i8*, ...) @fprintf(i32* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %103, i8* %104, i32 %106)
  br label %108

108:                                              ; preds = %101, %70
  %109 = load i32, i32* %6, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %55

111:                                              ; preds = %55
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 (i32*, i8*, ...) @fprintf(i32* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %49
  %115 = load i32, i32* %5, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %15

117:                                              ; preds = %15
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 (i32*, i8*, ...) @fprintf(i32* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @RVij(%struct.family_route_values*, i32, i32) #1

declare dso_local i32 @B(i32) #1

declare dso_local i64 @MARKED_V(i64) #1

declare dso_local i64 @MARKED_I(i64) #1

declare dso_local i64 @MARKED_U(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @UNMARK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
