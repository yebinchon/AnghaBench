; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_find_dev_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_find_dev_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_internal_desc = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@GASKET_DEV_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Duplicate device %s\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Too many registered devices; max %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gasket_internal_desc*, i8*)* @gasket_find_dev_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gasket_find_dev_slot(%struct.gasket_internal_desc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gasket_internal_desc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.gasket_internal_desc* %0, %struct.gasket_internal_desc** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %4, align 8
  %8 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %45, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @GASKET_DEV_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %10
  %15 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %4, align 8
  %16 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %14
  %24 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %4, align 8
  %25 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strcmp(i32 %32, i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %23
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %4, align 8
  %40 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %84

44:                                               ; preds = %23, %14
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %10

48:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %64, %48
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @GASKET_DEV_MAX, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %4, align 8
  %55 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %56, i64 %58
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = icmp ne %struct.TYPE_2__* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  br label %67

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %49

67:                                               ; preds = %62, %49
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @GASKET_DEV_MAX, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i32, i32* @GASKET_DEV_MAX, align 4
  %73 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %4, align 8
  %75 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %84

79:                                               ; preds = %67
  %80 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %4, align 8
  %81 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %79, %71, %36
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
