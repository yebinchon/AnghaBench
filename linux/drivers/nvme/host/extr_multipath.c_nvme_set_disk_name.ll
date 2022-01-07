; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_set_disk_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_set_disk_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.nvme_ctrl = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@multipath = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"nvme%dn%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"nvme%dc%dn%d\00", align 1
@GENHD_FL_HIDDEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_set_disk_name(i8* %0, %struct.nvme_ns* %1, %struct.nvme_ctrl* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvme_ns*, align 8
  %7 = alloca %struct.nvme_ctrl*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.nvme_ns* %1, %struct.nvme_ns** %6, align 8
  store %struct.nvme_ctrl* %2, %struct.nvme_ctrl** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* @multipath, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %4
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %7, align 8
  %14 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %17 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %20)
  br label %61

22:                                               ; preds = %4
  %23 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %24 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %22
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %7, align 8
  %32 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %7, align 8
  %37 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %40 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38, i32 %43)
  %45 = load i32, i32* @GENHD_FL_HIDDEN, align 4
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  br label %60

47:                                               ; preds = %22
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %7, align 8
  %50 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %55 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %58)
  br label %60

60:                                               ; preds = %47, %29
  br label %61

61:                                               ; preds = %60, %11
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
