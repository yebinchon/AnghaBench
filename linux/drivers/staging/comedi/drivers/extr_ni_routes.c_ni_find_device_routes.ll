; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_routes.c_ni_find_device_routes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_routes.c_ni_find_device_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32**, i32 }
%struct.ni_device_routes = type { i32 }
%struct.ni_route_tables = type { %struct.ni_device_routes*, i32* }

@ni_all_route_values = common dso_local global %struct.TYPE_2__** null, align 8
@ENODATA = common dso_local global i32 0, align 4
@ni_device_routes_list = common dso_local global %struct.ni_device_routes** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.ni_route_tables*)* @ni_find_device_routes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_find_device_routes(i8* %0, i8* %1, %struct.ni_route_tables* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ni_route_tables*, align 8
  %8 = alloca %struct.ni_device_routes*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ni_route_tables* %2, %struct.ni_route_tables** %7, align 8
  store %struct.ni_device_routes* null, %struct.ni_device_routes** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %43, %3
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ni_all_route_values, align 8
  %13 = load i32, i32* %10, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %46

18:                                               ; preds = %11
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ni_all_route_values, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strnlen(i8* %27, i32 30)
  %29 = call i64 @memcmp(i32 %25, i8* %26, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %18
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ni_all_route_values, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32* %41, i32** %9, align 8
  br label %46

42:                                               ; preds = %18
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %11

46:                                               ; preds = %31, %11
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @ENODATA, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %96

52:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %80, %52
  %54 = load %struct.ni_device_routes**, %struct.ni_device_routes*** @ni_device_routes_list, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ni_device_routes*, %struct.ni_device_routes** %54, i64 %56
  %58 = load %struct.ni_device_routes*, %struct.ni_device_routes** %57, align 8
  %59 = icmp ne %struct.ni_device_routes* %58, null
  br i1 %59, label %60, label %83

60:                                               ; preds = %53
  %61 = load %struct.ni_device_routes**, %struct.ni_device_routes*** @ni_device_routes_list, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ni_device_routes*, %struct.ni_device_routes** %61, i64 %63
  %65 = load %struct.ni_device_routes*, %struct.ni_device_routes** %64, align 8
  %66 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @strnlen(i8* %69, i32 30)
  %71 = call i64 @memcmp(i32 %67, i8* %68, i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %60
  %74 = load %struct.ni_device_routes**, %struct.ni_device_routes*** @ni_device_routes_list, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ni_device_routes*, %struct.ni_device_routes** %74, i64 %76
  %78 = load %struct.ni_device_routes*, %struct.ni_device_routes** %77, align 8
  store %struct.ni_device_routes* %78, %struct.ni_device_routes** %8, align 8
  br label %83

79:                                               ; preds = %60
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %53

83:                                               ; preds = %73, %53
  %84 = load %struct.ni_device_routes*, %struct.ni_device_routes** %8, align 8
  %85 = icmp ne %struct.ni_device_routes* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* @ENODATA, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %96

89:                                               ; preds = %83
  %90 = load i32*, i32** %9, align 8
  %91 = load %struct.ni_route_tables*, %struct.ni_route_tables** %7, align 8
  %92 = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %91, i32 0, i32 1
  store i32* %90, i32** %92, align 8
  %93 = load %struct.ni_device_routes*, %struct.ni_device_routes** %8, align 8
  %94 = load %struct.ni_route_tables*, %struct.ni_route_tables** %7, align 8
  %95 = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %94, i32 0, i32 0
  store %struct.ni_device_routes* %93, %struct.ni_device_routes** %95, align 8
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %89, %86, %49
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @strnlen(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
