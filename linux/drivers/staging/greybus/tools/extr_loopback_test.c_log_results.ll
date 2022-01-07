; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/tools/extr_loopback_test.c_log_results.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/tools/extr_loopback_test.c_log_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopback_test = type { i8*, i32, i32, i32, i32, i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.tm = type { i32 }

@MAX_SYSFS_PATH = common dso_local global i32 0, align 4
@CSV_MAX_LINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s_%d_%d.csv\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"unable to open %s for appendation\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"unable to write %d bytes to csv.\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"aggregate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loopback_test*)* @log_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_results(%struct.loopback_test* %0) #0 {
  %2 = alloca %struct.loopback_test*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tm, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.loopback_test* %0, %struct.loopback_test** %2, align 8
  %12 = load i32, i32* @MAX_SYSFS_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* @CSV_MAX_LINE, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %19 = call i32 @time(i32* null)
  store i32 %19, i32* %8, align 4
  %20 = call %struct.tm* @localtime(i32* %8)
  %21 = bitcast %struct.tm* %7 to i8*
  %22 = bitcast %struct.tm* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %24 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %1
  %28 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %29 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %27
  %33 = trunc i64 %13 to i32
  %34 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %35 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %38 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %41 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @snprintf(i8* %15, i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %39, i32 %42)
  %44 = load i32, i32* @O_WRONLY, align 4
  %45 = load i32, i32* @O_CREAT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @O_APPEND, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @open(i8* %15, i32 %48, i32 420)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %32
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %55 = call i32 (...) @abort() #5
  unreachable

56:                                               ; preds = %32
  br label %57

57:                                               ; preds = %56, %27, %1
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %110, %57
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %61 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %113

64:                                               ; preds = %58
  %65 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @device_enabled(%struct.loopback_test* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  br label %110

70:                                               ; preds = %64
  %71 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %72 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %73 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %72, i32 0, i32 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %80 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %79, i32 0, i32 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = trunc i64 %17 to i32
  %88 = call i32 @format_output(%struct.loopback_test* %71, i32* %78, i8* %86, i8* %18, i32 %87, %struct.tm* %7)
  store i32 %88, i32* %5, align 4
  %89 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %90 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %70
  %94 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %95 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @write(i32 %99, i8* %18, i32 %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i32, i32* @stderr, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %104, %98
  br label %109

109:                                              ; preds = %108, %93, %70
  br label %110

110:                                              ; preds = %109, %69
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %58

113:                                              ; preds = %58
  %114 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %115 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %114, i32 0, i32 7
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %145

118:                                              ; preds = %113
  %119 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %120 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %121 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %120, i32 0, i32 6
  %122 = trunc i64 %17 to i32
  %123 = call i32 @format_output(%struct.loopback_test* %119, i32* %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %18, i32 %122, %struct.tm* %7)
  store i32 %123, i32* %5, align 4
  %124 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %125 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %118
  %129 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %130 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @write(i32 %134, i8* %18, i32 %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i32, i32* @stderr, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i32 (i32, i8*, ...) @fprintf(i32 %140, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %139, %133
  br label %144

144:                                              ; preds = %143, %128, %118
  br label %145

145:                                              ; preds = %144, %113
  %146 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %147 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %146, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %152 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @close(i32 %156)
  br label %158

158:                                              ; preds = %155, %150, %145
  %159 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %159)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @time(i32*) #2

declare dso_local %struct.tm* @localtime(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #4

declare dso_local i32 @device_enabled(%struct.loopback_test*, i32) #2

declare dso_local i32 @format_output(%struct.loopback_test*, i32*, i8*, i8*, i32, %struct.tm*) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
