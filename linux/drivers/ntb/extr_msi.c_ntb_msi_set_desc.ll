; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_msi.c_ntb_msi_set_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_msi.c_ntb_msi_set_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.msi_desc = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.ntb_msi_desc = type { i32, i64 }

@.str = private unnamed_addr constant [70 x i8] c"IRQ %d: MSI Address not within the memory window (%llx, [%llx %llx])\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_dev*, %struct.msi_desc*, %struct.ntb_msi_desc*)* @ntb_msi_set_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_msi_set_desc(%struct.ntb_dev* %0, %struct.msi_desc* %1, %struct.ntb_msi_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_dev*, align 8
  %6 = alloca %struct.msi_desc*, align 8
  %7 = alloca %struct.ntb_msi_desc*, align 8
  %8 = alloca i64, align 8
  store %struct.ntb_dev* %0, %struct.ntb_dev** %5, align 8
  store %struct.msi_desc* %1, %struct.msi_desc** %6, align 8
  store %struct.ntb_msi_desc* %2, %struct.ntb_msi_desc** %7, align 8
  %9 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %10 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %14 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = shl i32 %17, 32
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %12, %19
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %23 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %21, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %3
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %31 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %29, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %28, %3
  %37 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %38 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %37, i32 0, i32 1
  %39 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %40 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %44 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %49 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @dev_warn_once(i32* %38, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %42, i64 %47, i64 %52)
  %54 = load i32, i32* @EFAULT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %72

56:                                               ; preds = %28
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %59 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %57, %62
  %64 = load %struct.ntb_msi_desc*, %struct.ntb_msi_desc** %7, align 8
  %65 = getelementptr inbounds %struct.ntb_msi_desc, %struct.ntb_msi_desc* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %67 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ntb_msi_desc*, %struct.ntb_msi_desc** %7, align 8
  %71 = getelementptr inbounds %struct.ntb_msi_desc, %struct.ntb_msi_desc* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %56, %36
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @dev_warn_once(i32*, i8*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
