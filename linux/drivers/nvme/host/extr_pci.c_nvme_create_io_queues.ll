; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_create_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_create_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32, i32*, i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HCTX_TYPE_POLL = common dso_local global i64 0, align 8
@HCTX_TYPE_DEFAULT = common dso_local global i64 0, align 8
@HCTX_TYPE_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*)* @nvme_create_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_create_io_queues(%struct.nvme_dev* %0) #0 {
  %2 = alloca %struct.nvme_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvme_dev* %0, %struct.nvme_dev** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %9 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %30, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %15 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ule i32 %13, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %22 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @nvme_alloc_queue(%struct.nvme_dev* %19, i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %33

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %12

33:                                               ; preds = %26, %12
  %34 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %35 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %38 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub i32 %40, 1
  %42 = call i32 @min(i32 %36, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %67

45:                                               ; preds = %33
  %46 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %47 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @HCTX_TYPE_POLL, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %45
  %54 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %55 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %61 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @HCTX_TYPE_READ, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add i32 %59, %65
  store i32 %66, i32* %5, align 4
  br label %69

67:                                               ; preds = %45, %33
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %53
  %70 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %71 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %95, %69
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ule i32 %74, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %73
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ugt i32 %78, %79
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %7, align 4
  %82 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %83 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @nvme_create_queue(i32* %87, i32 %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %77
  br label %98

94:                                               ; preds = %77
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %3, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %73

98:                                               ; preds = %93, %73
  %99 = load i32, i32* %6, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %104

102:                                              ; preds = %98
  %103 = load i32, i32* %6, align 4
  br label %104

104:                                              ; preds = %102, %101
  %105 = phi i32 [ 0, %101 ], [ %103, %102 ]
  ret i32 %105
}

declare dso_local i64 @nvme_alloc_queue(%struct.nvme_dev*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nvme_create_queue(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
