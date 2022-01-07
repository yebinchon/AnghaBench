; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntdev_copy_batch = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@GNTST_okay = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gntdev_copy_batch*)* @gntdev_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gntdev_copy(%struct.gntdev_copy_batch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gntdev_copy_batch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.gntdev_copy_batch* %0, %struct.gntdev_copy_batch** %3, align 8
  %7 = load %struct.gntdev_copy_batch*, %struct.gntdev_copy_batch** %3, align 8
  %8 = getelementptr inbounds %struct.gntdev_copy_batch, %struct.gntdev_copy_batch* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load %struct.gntdev_copy_batch*, %struct.gntdev_copy_batch** %3, align 8
  %11 = getelementptr inbounds %struct.gntdev_copy_batch, %struct.gntdev_copy_batch* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @gnttab_batch_copy(%struct.TYPE_2__* %9, i32 %12)
  %14 = load %struct.gntdev_copy_batch*, %struct.gntdev_copy_batch** %3, align 8
  %15 = call i32 @gntdev_put_pages(%struct.gntdev_copy_batch* %14)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %69, %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.gntdev_copy_batch*, %struct.gntdev_copy_batch** %3, align 8
  %19 = getelementptr inbounds %struct.gntdev_copy_batch, %struct.gntdev_copy_batch* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %72

22:                                               ; preds = %16
  %23 = load %struct.gntdev_copy_batch*, %struct.gntdev_copy_batch** %3, align 8
  %24 = getelementptr inbounds %struct.gntdev_copy_batch, %struct.gntdev_copy_batch* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @GNTST_okay, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %69

35:                                               ; preds = %22
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.gntdev_copy_batch*, %struct.gntdev_copy_batch** %3, align 8
  %38 = getelementptr inbounds %struct.gntdev_copy_batch, %struct.gntdev_copy_batch* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @__get_user(i64 %36, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* @EFAULT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %75

49:                                               ; preds = %35
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @GNTST_okay, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %69

54:                                               ; preds = %49
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.gntdev_copy_batch*, %struct.gntdev_copy_batch** %3, align 8
  %57 = getelementptr inbounds %struct.gntdev_copy_batch, %struct.gntdev_copy_batch* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @__put_user(i64 %55, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i32, i32* @EFAULT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %75

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %53, %34
  %70 = load i32, i32* %4, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %16

72:                                               ; preds = %16
  %73 = load %struct.gntdev_copy_batch*, %struct.gntdev_copy_batch** %3, align 8
  %74 = getelementptr inbounds %struct.gntdev_copy_batch, %struct.gntdev_copy_batch* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %65, %46
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @gnttab_batch_copy(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @gntdev_put_pages(%struct.gntdev_copy_batch*) #1

declare dso_local i64 @__get_user(i64, i32) #1

declare dso_local i64 @__put_user(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
