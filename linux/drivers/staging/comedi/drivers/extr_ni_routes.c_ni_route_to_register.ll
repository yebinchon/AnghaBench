; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_routes.c_ni_route_to_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_routes.c_ni_route_to_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_route_tables = type { i32*, i32 }
%struct.ni_route_set = type { i32 }

@NI_RGOUT0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_route_to_register(i32 %0, i32 %1, %struct.ni_route_tables* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ni_route_tables*, align 8
  %8 = alloca %struct.ni_route_set*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.ni_route_tables* %2, %struct.ni_route_tables** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ni_route_tables*, %struct.ni_route_tables** %7, align 8
  %13 = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.ni_route_set* @ni_find_route_set(i32 %11, i32 %14)
  store %struct.ni_route_set* %15, %struct.ni_route_set** %8, align 8
  %16 = load %struct.ni_route_set*, %struct.ni_route_set** %8, align 8
  %17 = icmp ne %struct.ni_route_set* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %92

19:                                               ; preds = %3
  %20 = load %struct.ni_route_set*, %struct.ni_route_set** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ni_route_set_has_source(%struct.ni_route_set* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %92

25:                                               ; preds = %19
  %26 = load %struct.ni_route_tables*, %struct.ni_route_tables** %7, align 8
  %27 = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @B(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @B(i32 %32)
  %34 = call i32 @RVi(i32* %29, i32 %31, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %85, label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @channel_is_rtsi(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %85

41:                                               ; preds = %37
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @B(i32 %43)
  %45 = load i32, i32* @NI_RGOUT0, align 4
  %46 = call i32 @B(i32 %45)
  %47 = call i32 @RVi(i32* %42, i32 %44, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %84, label %50

50:                                               ; preds = %41
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @B(i32 %52)
  %54 = call i32 @NI_RTSI_BRD(i32 0)
  %55 = call i32 @B(i32 %54)
  %56 = call i32 @RVi(i32* %51, i32 %53, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %82, label %58

58:                                               ; preds = %50
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @B(i32 %60)
  %62 = call i32 @NI_RTSI_BRD(i32 1)
  %63 = call i32 @B(i32 %62)
  %64 = call i32 @RVi(i32* %59, i32 %61, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %58
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @B(i32 %68)
  %70 = call i32 @NI_RTSI_BRD(i32 2)
  %71 = call i32 @B(i32 %70)
  %72 = call i32 @RVi(i32* %67, i32 %69, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %66
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @B(i32 %76)
  %78 = call i32 @NI_RTSI_BRD(i32 3)
  %79 = call i32 @B(i32 %78)
  %80 = call i32 @RVi(i32* %75, i32 %77, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74, %66, %58, %50
  %83 = call i32 @BIT(i32 6)
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %82, %74, %41
  br label %85

85:                                               ; preds = %84, %37, %25
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  store i32 -1, i32* %4, align 4
  br label %92

89:                                               ; preds = %85
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @UNMARK(i32 %90)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %89, %88, %24, %18
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.ni_route_set* @ni_find_route_set(i32, i32) #1

declare dso_local i32 @ni_route_set_has_source(%struct.ni_route_set*, i32) #1

declare dso_local i32 @RVi(i32*, i32, i32) #1

declare dso_local i32 @B(i32) #1

declare dso_local i64 @channel_is_rtsi(i32) #1

declare dso_local i32 @NI_RTSI_BRD(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @UNMARK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
