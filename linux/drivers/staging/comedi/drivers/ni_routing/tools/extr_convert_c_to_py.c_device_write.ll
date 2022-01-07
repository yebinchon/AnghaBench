; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/ni_routing/tools/extr_convert_c_to_py.c_device_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/ni_routing/tools/extr_convert_c_to_py.c_device_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_device_routes = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64* }

@.str = private unnamed_addr constant [44 x i8] c"  \22%s\22 : {\0A    # dest -> [src0, src1, ...]\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Invalid NI signal value [%u] for destination %s.[%u]\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"    %u : [\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Invalid NI signal value [%u] for source %s.[%u].[%u]\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%u,\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"],\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"  },\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_write(%struct.ni_device_routes* %0, i32* %1) #0 {
  %3 = alloca %struct.ni_device_routes*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ni_device_routes* %0, %struct.ni_device_routes** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.ni_device_routes*, %struct.ni_device_routes** %3, align 8
  %9 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %131, %2
  %13 = load %struct.ni_device_routes*, %struct.ni_device_routes** %3, align 8
  %14 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %136

22:                                               ; preds = %12
  %23 = load %struct.ni_device_routes*, %struct.ni_device_routes** %3, align 8
  %24 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @is_valid_ni_sig(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @stderr, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32*
  %37 = load %struct.ni_device_routes*, %struct.ni_device_routes** %3, align 8
  %38 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ni_device_routes*, %struct.ni_device_routes** %3, align 8
  %46 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %44, i8* %47, i32 %48)
  %50 = call i32 @exit(i32 1) #3
  unreachable

51:                                               ; preds = %22
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.ni_device_routes*, %struct.ni_device_routes** %3, align 8
  %54 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %114, %51
  %63 = load %struct.ni_device_routes*, %struct.ni_device_routes** %3, align 8
  %64 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %131

76:                                               ; preds = %62
  %77 = load %struct.ni_device_routes*, %struct.ni_device_routes** %3, align 8
  %78 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @is_valid_ni_sig(i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %114, label %91

91:                                               ; preds = %76
  %92 = load i32, i32* @stderr, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i32*
  %95 = load %struct.ni_device_routes*, %struct.ni_device_routes** %3, align 8
  %96 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.ni_device_routes*, %struct.ni_device_routes** %3, align 8
  %108 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 (i32*, i8*, ...) @fprintf(i32* %94, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i64 %106, i8* %109, i32 %110, i32 %111)
  %113 = call i32 @exit(i32 1) #3
  unreachable

114:                                              ; preds = %76
  %115 = load i32*, i32** %4, align 8
  %116 = load %struct.ni_device_routes*, %struct.ni_device_routes** %3, align 8
  %117 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = call i32 (i32*, i8*, ...) @fprintf(i32* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 %127)
  %129 = load i32, i32* %6, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %62

131:                                              ; preds = %62
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 (i32*, i8*, ...) @fprintf(i32* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32, i32* %5, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %5, align 4
  br label %12

136:                                              ; preds = %12
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 (i32*, i8*, ...) @fprintf(i32* %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @is_valid_ni_sig(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
