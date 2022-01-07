; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c_wa_xfer_create_subset_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c_wa_xfer_create_subset_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scatterlist* (%struct.scatterlist*, i32, i32, i32*)* @wa_xfer_create_subset_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scatterlist* @wa_xfer_create_subset_sg(%struct.scatterlist* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca %struct.scatterlist*, align 8
  %16 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  store %struct.scatterlist* %17, %struct.scatterlist** %13, align 8
  br label %18

18:                                               ; preds = %39, %4
  %19 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %20 = icmp ne %struct.scatterlist* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ult i32 %22, %23
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  br i1 %26, label %27, label %40

27:                                               ; preds = %25
  %28 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %29 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = add i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %38 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %37)
  store %struct.scatterlist* %38, %struct.scatterlist** %13, align 8
  br label %39

39:                                               ; preds = %36, %27
  br label %18

40:                                               ; preds = %25
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %46 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sub i32 %48, %49
  %51 = sub i32 %47, %50
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %44, %40
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %11, align 4
  %55 = add i32 %53, %54
  %56 = zext i32 %55 to i64
  %57 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %58 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = call i32 @DIV_ROUND_UP(i64 %60, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = zext i32 %63 to i64
  %65 = mul i64 16, %64
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* @GFP_ATOMIC, align 4
  %68 = call %struct.scatterlist* @kmalloc(i32 %66, i32 %67)
  store %struct.scatterlist* %68, %struct.scatterlist** %9, align 8
  %69 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %70 = icmp ne %struct.scatterlist* %69, null
  br i1 %70, label %71, label %124

71:                                               ; preds = %52
  %72 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @sg_init_table(%struct.scatterlist* %72, i32 %73)
  %75 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %75, %struct.scatterlist** %14, align 8
  store %struct.scatterlist* %75, %struct.scatterlist** %15, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %88, %71
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %82 = icmp ne %struct.scatterlist* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %85 = icmp ne %struct.scatterlist* %84, null
  br label %86

86:                                               ; preds = %83, %80, %76
  %87 = phi i1 [ false, %80 ], [ false, %76 ], [ %85, %83 ]
  br i1 %87, label %88, label %119

88:                                               ; preds = %86
  %89 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %90 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sub i32 %91, %92
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %10, align 4
  %96 = sub i32 %94, %95
  %97 = call i32 @min(i32 %93, i32 %96)
  store i32 %97, i32* %16, align 4
  %98 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %99 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %100 = call i32 @sg_page(%struct.scatterlist* %99)
  %101 = load i32, i32* %16, align 4
  %102 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %103 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = zext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = call i32 @sg_set_page(%struct.scatterlist* %98, i32 %100, i32 %101, i64 %107)
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %10, align 4
  %111 = add i32 %110, %109
  store i32 %111, i32* %10, align 4
  %112 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  store %struct.scatterlist* %112, %struct.scatterlist** %15, align 8
  %113 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %114 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %113)
  store %struct.scatterlist* %114, %struct.scatterlist** %14, align 8
  %115 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %116 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %115)
  store %struct.scatterlist* %116, %struct.scatterlist** %13, align 8
  store i32 0, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %76

119:                                              ; preds = %86
  %120 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %121 = call i32 @sg_mark_end(%struct.scatterlist* %120)
  %122 = load i32, i32* %12, align 4
  %123 = load i32*, i32** %8, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %119, %52
  %125 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  ret %struct.scatterlist* %125
}

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local %struct.scatterlist* @kmalloc(i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i64) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @sg_mark_end(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
