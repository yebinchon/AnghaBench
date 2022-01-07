; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus.c_cedrus_find_control_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus.c_cedrus_find_control_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cedrus_ctx = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cedrus_find_control_data(%struct.cedrus_ctx* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cedrus_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.cedrus_ctx* %0, %struct.cedrus_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %40, %2
  %8 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %10, i64 %12
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %7
  %17 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %16
  %29 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %31, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %3, align 8
  br label %44

39:                                               ; preds = %16
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %7

43:                                               ; preds = %7
  store i8* null, i8** %3, align 8
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
