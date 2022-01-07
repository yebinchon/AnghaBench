; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_page_table_partition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_page_table_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_page_table = type { i32, i32, %struct.TYPE_4__, i8*, i8*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@PTE_FREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"entry %d is not free\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gasket_page_table_partition(%struct.gasket_page_table* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gasket_page_table*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gasket_page_table* %0, %struct.gasket_page_table** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %9 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %13 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ugt i8* %11, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %19 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %90

23:                                               ; preds = %2
  %24 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %25 = call i32 @gasket_page_table_garbage_collect_nolock(%struct.gasket_page_table* %24)
  %26 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %27 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %26, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @min(i8* %28, i8* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %64, %23
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %37 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ult i8* %35, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %32
  %42 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %43 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %42, i32 0, i32 6
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PTE_FREE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %41
  %53 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %54 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %59 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %90

63:                                               ; preds = %41
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %32

67:                                               ; preds = %32
  %68 = load i8*, i8** %5, align 8
  %69 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %70 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %72 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = inttoptr i64 %78 to i8*
  %80 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %81 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %84 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @writeq(i8* %82, i32 %85)
  %87 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %88 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %67, %52, %17
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gasket_page_table_garbage_collect_nolock(%struct.gasket_page_table*) #1

declare dso_local i32 @min(i8*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @writeq(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
