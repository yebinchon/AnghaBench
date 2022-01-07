; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_routes.c_ni_count_valid_routes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_routes.c_ni_count_valid_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_route_tables = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ni_route_set* }
%struct.ni_route_set = type { i32, i32*, i32 }

@NI_RGOUT0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_count_valid_routes(%struct.ni_route_tables* %0) #0 {
  %2 = alloca %struct.ni_route_tables*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_route_set*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.ni_route_tables* %0, %struct.ni_route_tables** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %110, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ni_route_tables*, %struct.ni_route_tables** %2, align 8
  %13 = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %113

18:                                               ; preds = %10
  %19 = load %struct.ni_route_tables*, %struct.ni_route_tables** %2, align 8
  %20 = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.ni_route_set*, %struct.ni_route_set** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %23, i64 %25
  store %struct.ni_route_set* %26, %struct.ni_route_set** %5, align 8
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %106, %18
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.ni_route_set*, %struct.ni_route_set** %5, align 8
  %30 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %109

33:                                               ; preds = %27
  %34 = load %struct.ni_route_set*, %struct.ni_route_set** %5, align 8
  %35 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.ni_route_set*, %struct.ni_route_set** %5, align 8
  %42 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %8, align 4
  %44 = load %struct.ni_route_tables*, %struct.ni_route_tables** %2, align 8
  %45 = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @B(i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @B(i32 %50)
  %52 = call i64 @RVi(i32* %47, i32 %49, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %33
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %105

57:                                               ; preds = %33
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @channel_is_rtsi(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %104

61:                                               ; preds = %57
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @B(i32 %63)
  %65 = load i32, i32* @NI_RGOUT0, align 4
  %66 = call i32 @B(i32 %65)
  %67 = call i64 @RVi(i32* %62, i32 %64, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %101, label %69

69:                                               ; preds = %61
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @B(i32 %71)
  %73 = call i32 @NI_RTSI_BRD(i32 0)
  %74 = call i32 @B(i32 %73)
  %75 = call i64 @RVi(i32* %70, i32 %72, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %101, label %77

77:                                               ; preds = %69
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @B(i32 %79)
  %81 = call i32 @NI_RTSI_BRD(i32 1)
  %82 = call i32 @B(i32 %81)
  %83 = call i64 @RVi(i32* %78, i32 %80, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %77
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @B(i32 %87)
  %89 = call i32 @NI_RTSI_BRD(i32 2)
  %90 = call i32 @B(i32 %89)
  %91 = call i64 @RVi(i32* %86, i32 %88, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %85
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @B(i32 %95)
  %97 = call i32 @NI_RTSI_BRD(i32 3)
  %98 = call i32 @B(i32 %97)
  %99 = call i64 @RVi(i32* %94, i32 %96, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %93, %85, %77, %69, %61
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %101, %93, %57
  br label %105

105:                                              ; preds = %104, %54
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %27

109:                                              ; preds = %27
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %10

113:                                              ; preds = %10
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @RVi(i32*, i32, i32) #1

declare dso_local i32 @B(i32) #1

declare dso_local i64 @channel_is_rtsi(i32) #1

declare dso_local i32 @NI_RTSI_BRD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
