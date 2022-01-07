; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_blacklist.c_blacklist_parse_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_blacklist.c_blacklist_parse_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@add = common dso_local global i64 0, align 8
@free = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@__MAX_CSSID = common dso_local global i32 0, align 4
@__MAX_SSID = common dso_local global i32 0, align 4
@__MAX_SUBCHANNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ipldev\00", align 1
@ipl_info = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@IPL_TYPE_CCW = common dso_local global i64 0, align 8
@IPL_TYPE_FCP = common dso_local global i64 0, align 8
@IPL_TYPE_FCP_DUMP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"condev\00", align 1
@console_devno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @blacklist_parse_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blacklist_parse_parameters(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %124, %80, %67, %3
  %18 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %15, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %125

20:                                               ; preds = %17
  store i32 0, i32* %13, align 4
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %16, align 8
  %22 = load i8*, i8** %15, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 33
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load i64, i64* %16, align 8
  %28 = load i64, i64* @add, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* @free, align 8
  store i64 %31, i64* %16, align 8
  br label %34

32:                                               ; preds = %26
  %33 = load i64, i64* @add, align 8
  store i64 %33, i64* %16, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i8*, i8** %15, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %15, align 8
  br label %37

37:                                               ; preds = %34, %20
  %38 = load i8*, i8** %15, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %42 = load i32, i32* @__MAX_CSSID, align 4
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @__MAX_SSID, align 4
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* @__MAX_SUBCHANNEL, align 4
  store i32 %44, i32* %12, align 4
  br label %104

45:                                               ; preds = %37
  %46 = load i8*, i8** %15, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ipl_info, i32 0, i32 0), align 8
  %51 = load i64, i64* @IPL_TYPE_CCW, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ipl_info, i32 0, i32 1, i32 1, i32 0, i32 0), align 8
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ipl_info, i32 0, i32 1, i32 1, i32 0, i32 1), align 4
  store i32 %55, i32* %11, align 4
  br label %69

56:                                               ; preds = %49
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ipl_info, i32 0, i32 0), align 8
  %58 = load i64, i64* @IPL_TYPE_FCP, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ipl_info, i32 0, i32 0), align 8
  %62 = load i64, i64* @IPL_TYPE_FCP_DUMP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %56
  store i32 0, i32* %7, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ipl_info, i32 0, i32 1, i32 0, i32 0, i32 0), align 8
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ipl_info, i32 0, i32 1, i32 0, i32 0, i32 1), align 4
  store i32 %66, i32* %11, align 4
  br label %68

67:                                               ; preds = %60
  br label %17

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68, %53
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %12, align 4
  br label %103

73:                                               ; preds = %45
  %74 = load i8*, i8** %15, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32, i32* @console_devno, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %17

81:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %82 = load i32, i32* @console_devno, align 4
  store i32 %82, i32* %12, align 4
  store i32 %82, i32* %11, align 4
  br label %102

83:                                               ; preds = %73
  %84 = call i8* @strsep(i8** %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @parse_busid(i8* %84, i32* %7, i32* %9, i32* %11, i32 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %83
  %90 = load i8*, i8** %15, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i8*, i8** %15, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @parse_busid(i8* %93, i32* %8, i32* %10, i32* %12, i32 %94)
  store i32 %95, i32* %13, align 4
  br label %100

96:                                               ; preds = %89
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %96, %92
  br label %101

101:                                              ; preds = %100, %83
  br label %102

102:                                              ; preds = %101, %81
  br label %103

103:                                              ; preds = %102, %69
  br label %104

104:                                              ; preds = %103, %41
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %104
  %108 = load i64, i64* %16, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @blacklist_range(i64 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %107
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %117, %107
  br label %124

121:                                              ; preds = %104
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %121, %120
  br label %17

125:                                              ; preds = %17
  %126 = load i32, i32* %14, align 4
  ret i32 %126
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @parse_busid(i8*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @blacklist_range(i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
