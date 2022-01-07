; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_routes.c_ni_get_valid_routes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_routes.c_ni_get_valid_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_route_tables = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ni_route_set* }
%struct.ni_route_set = type { i32, i32*, i32 }

@NI_RGOUT0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_get_valid_routes(%struct.ni_route_tables* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_route_tables*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ni_route_set*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.ni_route_tables* %0, %struct.ni_route_tables** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load %struct.ni_route_tables*, %struct.ni_route_tables** %5, align 8
  %17 = call i32 @ni_count_valid_routes(%struct.ni_route_tables* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %3
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %156

25:                                               ; preds = %20
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %156

29:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %151, %29
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.ni_route_tables*, %struct.ni_route_tables** %5, align 8
  %33 = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %31, %36
  br i1 %37, label %38, label %154

38:                                               ; preds = %30
  %39 = load %struct.ni_route_tables*, %struct.ni_route_tables** %5, align 8
  %40 = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load %struct.ni_route_set*, %struct.ni_route_set** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %43, i64 %45
  store %struct.ni_route_set* %46, %struct.ni_route_set** %10, align 8
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %147, %38
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.ni_route_set*, %struct.ni_route_set** %10, align 8
  %50 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %150

53:                                               ; preds = %47
  %54 = load %struct.ni_route_set*, %struct.ni_route_set** %10, align 8
  %55 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %12, align 4
  %61 = load %struct.ni_route_set*, %struct.ni_route_set** %10, align 8
  %62 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %64 = load %struct.ni_route_tables*, %struct.ni_route_tables** %5, align 8
  %65 = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %15, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @B(i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @B(i32 %70)
  %72 = call i64 @RVi(i32* %67, i32 %69, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %53
  store i32 1, i32* %14, align 4
  br label %121

75:                                               ; preds = %53
  %76 = load i32, i32* %13, align 4
  %77 = call i64 @channel_is_rtsi(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %120

79:                                               ; preds = %75
  %80 = load i32*, i32** %15, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @B(i32 %81)
  %83 = load i32, i32* @NI_RGOUT0, align 4
  %84 = call i32 @B(i32 %83)
  %85 = call i64 @RVi(i32* %80, i32 %82, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %119, label %87

87:                                               ; preds = %79
  %88 = load i32*, i32** %15, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @B(i32 %89)
  %91 = call i32 @NI_RTSI_BRD(i32 0)
  %92 = call i32 @B(i32 %91)
  %93 = call i64 @RVi(i32* %88, i32 %90, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %119, label %95

95:                                               ; preds = %87
  %96 = load i32*, i32** %15, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @B(i32 %97)
  %99 = call i32 @NI_RTSI_BRD(i32 1)
  %100 = call i32 @B(i32 %99)
  %101 = call i64 @RVi(i32* %96, i32 %98, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %95
  %104 = load i32*, i32** %15, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @B(i32 %105)
  %107 = call i32 @NI_RTSI_BRD(i32 2)
  %108 = call i32 @B(i32 %107)
  %109 = call i64 @RVi(i32* %104, i32 %106, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %103
  %112 = load i32*, i32** %15, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @B(i32 %113)
  %115 = call i32 @NI_RTSI_BRD(i32 3)
  %116 = call i32 @B(i32 %115)
  %117 = call i64 @RVi(i32* %112, i32 %114, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111, %103, %95, %87, %79
  store i32 1, i32* %14, align 4
  br label %120

120:                                              ; preds = %119, %111, %75
  br label %121

121:                                              ; preds = %120, %74
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %121
  %125 = load i32, i32* %12, align 4
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %8, align 4
  %128 = mul i32 2, %127
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  store i32 %125, i32* %130, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = mul i32 2, %133
  %135 = add i32 %134, 1
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  store i32 %131, i32* %137, align 4
  %138 = load i32, i32* %8, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %124, %121
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp uge i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %4, align 4
  br label %156

146:                                              ; preds = %140
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %47

150:                                              ; preds = %47
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %30

154:                                              ; preds = %30
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %154, %144, %28, %23
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @ni_count_valid_routes(%struct.ni_route_tables*) #1

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
