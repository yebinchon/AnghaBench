; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c_find_slots.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c_find_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcs_group = type { i32, i32, i32, i32*, i32 }
%struct.tcs_request = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_TCS_SLOTS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcs_group*, %struct.tcs_request*, i32*, i32*)* @find_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_slots(%struct.tcs_group* %0, %struct.tcs_request* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcs_group*, align 8
  %7 = alloca %struct.tcs_request*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tcs_group* %0, %struct.tcs_group** %6, align 8
  store %struct.tcs_request* %1, %struct.tcs_request** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %14 = load %struct.tcs_request*, %struct.tcs_request** %7, align 8
  %15 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.tcs_request*, %struct.tcs_request** %7, align 8
  %18 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @find_match(%struct.tcs_group* %13, %struct.TYPE_2__* %16, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %63

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %53, %24
  %26 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %27 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MAX_TCS_SLOTS, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.tcs_request*, %struct.tcs_request** %7, align 8
  %32 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @bitmap_find_next_zero_area(i32 %28, i32 %29, i32 %30, i32 %33, i32 0)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %37 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %40 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = icmp sge i32 %35, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %25
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %116

47:                                               ; preds = %25
  %48 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %49 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.tcs_request*, %struct.tcs_request** %7, align 8
  %56 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %54, %57
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* %12, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %25, label %62

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %23
  %64 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %65 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.tcs_request*, %struct.tcs_request** %7, align 8
  %69 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @bitmap_set(i32 %66, i32 %67, i32 %70)
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %95, %63
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.tcs_request*, %struct.tcs_request** %7, align 8
  %75 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %72
  %79 = load %struct.tcs_request*, %struct.tcs_request** %7, align 8
  %80 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %88 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  store i32 %86, i32* %94, align 4
  br label %95

95:                                               ; preds = %78
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %72

98:                                               ; preds = %72
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %101 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sdiv i32 %99, %102
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %106 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %104, %107
  %109 = load i32*, i32** %8, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.tcs_group*, %struct.tcs_group** %6, align 8
  %112 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = srem i32 %110, %113
  %115 = load i32*, i32** %9, align 8
  store i32 %114, i32* %115, align 4
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %98, %44
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @find_match(%struct.tcs_group*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @bitmap_find_next_zero_area(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
