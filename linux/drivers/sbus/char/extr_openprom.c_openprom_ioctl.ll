; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_openprom.c_openprom_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_openprom.c_openprom_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@FMODE_READ = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@options_node = common dso_local global i32* null, align 8
@FMODE_WRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @openprom_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @openprom_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %108 [
    i32 138, label %13
    i32 135, label %13
    i32 130, label %29
    i32 129, label %29
    i32 136, label %45
    i32 142, label %45
    i32 137, label %45
    i32 134, label %45
    i32 128, label %63
    i32 140, label %63
    i32 139, label %63
    i32 141, label %63
    i32 131, label %63
    i32 132, label %63
    i32 133, label %63
    i32 148, label %78
    i32 144, label %78
    i32 145, label %78
    i32 146, label %78
    i32 147, label %78
    i32 143, label %93
  ]

13:                                               ; preds = %3, %3
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FMODE_READ, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i64, i64* @EPERM, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %4, align 8
  br label %111

23:                                               ; preds = %13
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i64, i64* %7, align 8
  %27 = load i32*, i32** @options_node, align 8
  %28 = call i64 @openprom_sunos_ioctl(%struct.file* %24, i32 %25, i64 %26, i32* %27)
  store i64 %28, i64* %4, align 8
  br label %111

29:                                               ; preds = %3, %3
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FMODE_WRITE, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i64, i64* @EPERM, align 8
  %38 = sub nsw i64 0, %37
  store i64 %38, i64* %4, align 8
  br label %111

39:                                               ; preds = %29
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load i32*, i32** @options_node, align 8
  %44 = call i64 @openprom_sunos_ioctl(%struct.file* %40, i32 %41, i64 %42, i32* %43)
  store i64 %44, i64* %4, align 8
  br label %111

45:                                               ; preds = %3, %3, %3, %3
  %46 = load %struct.file*, %struct.file** %5, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @FMODE_READ, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i64, i64* @EPERM, align 8
  %54 = sub nsw i64 0, %53
  store i64 %54, i64* %4, align 8
  br label %111

55:                                               ; preds = %45
  %56 = load %struct.file*, %struct.file** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @openprom_sunos_ioctl(%struct.file* %56, i32 %57, i64 %58, i32* %61)
  store i64 %62, i64* %4, align 8
  br label %111

63:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  %64 = load %struct.file*, %struct.file** %5, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @FMODE_READ, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i64, i64* @EPERM, align 8
  %72 = sub nsw i64 0, %71
  store i64 %72, i64* %4, align 8
  br label %111

73:                                               ; preds = %63
  %74 = load %struct.file*, %struct.file** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i64, i64* %7, align 8
  %77 = call i64 @openprom_sunos_ioctl(%struct.file* %74, i32 %75, i64 %76, i32* null)
  store i64 %77, i64* %4, align 8
  br label %111

78:                                               ; preds = %3, %3, %3, %3, %3
  %79 = load %struct.file*, %struct.file** %5, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @FMODE_READ, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i64, i64* @EBADF, align 8
  %87 = sub nsw i64 0, %86
  store i64 %87, i64* %4, align 8
  br label %111

88:                                               ; preds = %78
  %89 = load %struct.file*, %struct.file** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i64, i64* %7, align 8
  %92 = call i64 @openprom_bsd_ioctl(%struct.file* %89, i32 %90, i64 %91)
  store i64 %92, i64* %4, align 8
  br label %111

93:                                               ; preds = %3
  %94 = load %struct.file*, %struct.file** %5, align 8
  %95 = getelementptr inbounds %struct.file, %struct.file* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @FMODE_WRITE, align 4
  %98 = and i32 %96, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i64, i64* @EBADF, align 8
  %102 = sub nsw i64 0, %101
  store i64 %102, i64* %4, align 8
  br label %111

103:                                              ; preds = %93
  %104 = load %struct.file*, %struct.file** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i64, i64* %7, align 8
  %107 = call i64 @openprom_bsd_ioctl(%struct.file* %104, i32 %105, i64 %106)
  store i64 %107, i64* %4, align 8
  br label %111

108:                                              ; preds = %3
  %109 = load i64, i64* @EINVAL, align 8
  %110 = sub nsw i64 0, %109
  store i64 %110, i64* %4, align 8
  br label %111

111:                                              ; preds = %108, %103, %100, %88, %85, %73, %70, %55, %52, %39, %36, %23, %20
  %112 = load i64, i64* %4, align 8
  ret i64 %112
}

declare dso_local i64 @openprom_sunos_ioctl(%struct.file*, i32, i64, i32*) #1

declare dso_local i64 @openprom_bsd_ioctl(%struct.file*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
