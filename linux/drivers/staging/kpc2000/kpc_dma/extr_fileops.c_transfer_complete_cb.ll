; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc_dma/extr_fileops.c_transfer_complete_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc_dma/extr_fileops.c_transfer_complete_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_cb_data = type { i32, i64, i32, %struct.aio_cb_data*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transfer_complete_cb(%struct.aio_cb_data* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.aio_cb_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aio_cb_data* %0, %struct.aio_cb_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %9 = icmp eq %struct.aio_cb_data* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %13 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %12, i32 0, i32 3
  %14 = load %struct.aio_cb_data*, %struct.aio_cb_data** %13, align 8
  %15 = icmp eq %struct.aio_cb_data* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %19 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %26 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %25, i32 0, i32 5
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = icmp eq %struct.TYPE_5__* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %32 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %31, i32 0, i32 5
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp eq %struct.TYPE_4__* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %63, %3
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %42 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %47 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %46, i32 0, i32 3
  %48 = load %struct.aio_cb_data*, %struct.aio_cb_data** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %48, i64 %50
  %52 = call i32 @PageReserved(%struct.aio_cb_data* byval(%struct.aio_cb_data) align 8 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %45
  %55 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %56 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %55, i32 0, i32 3
  %57 = load %struct.aio_cb_data*, %struct.aio_cb_data** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %57, i64 %59
  %61 = call i32 @set_page_dirty(%struct.aio_cb_data* byval(%struct.aio_cb_data) align 8 %60)
  br label %62

62:                                               ; preds = %54, %45
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %39

66:                                               ; preds = %39
  %67 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %68 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %67, i32 0, i32 5
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %74 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %78 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %82 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %81, i32 0, i32 5
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @dma_unmap_sg(i32* %72, i32* %76, i32 %80, i32 %85)
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %101, %66
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %90 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ult i32 %88, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %87
  %94 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %95 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %94, i32 0, i32 3
  %96 = load %struct.aio_cb_data*, %struct.aio_cb_data** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %96, i64 %98
  %100 = call i32 @put_page(%struct.aio_cb_data* byval(%struct.aio_cb_data) align 8 %99)
  br label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %7, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %87

104:                                              ; preds = %87
  %105 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %106 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %105, i32 0, i32 4
  %107 = call i32 @sg_free_table(%struct.TYPE_6__* %106)
  %108 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %109 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %108, i32 0, i32 3
  %110 = load %struct.aio_cb_data*, %struct.aio_cb_data** %109, align 8
  %111 = call i32 @kfree(%struct.aio_cb_data* %110)
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %114 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %116 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %104
  %120 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %121 = getelementptr inbounds %struct.aio_cb_data, %struct.aio_cb_data* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @complete(i64 %122)
  br label %127

124:                                              ; preds = %104
  %125 = load %struct.aio_cb_data*, %struct.aio_cb_data** %4, align 8
  %126 = call i32 @kfree(%struct.aio_cb_data* %125)
  br label %127

127:                                              ; preds = %124, %119
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageReserved(%struct.aio_cb_data* byval(%struct.aio_cb_data) align 8) #1

declare dso_local i32 @set_page_dirty(%struct.aio_cb_data* byval(%struct.aio_cb_data) align 8) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32*, i32, i32) #1

declare dso_local i32 @put_page(%struct.aio_cb_data* byval(%struct.aio_cb_data) align 8) #1

declare dso_local i32 @sg_free_table(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.aio_cb_data*) #1

declare dso_local i32 @complete(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
