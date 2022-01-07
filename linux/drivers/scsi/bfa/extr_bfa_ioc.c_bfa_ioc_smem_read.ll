; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_smem_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_smem_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@BFA_FALSE = common dso_local global i64 0, align 8
@BFA_STATUS_FAILED = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_ioc_s*, i8*, i32, i32)* @bfa_ioc_smem_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioc_smem_read(%struct.bfa_ioc_s* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfa_ioc_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %15, align 8
  %18 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %6, align 8
  %19 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @PSS_SMEM_PGNUM(i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @PSS_SMEM_PGOFF(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @bfa_trc(%struct.bfa_ioc_s* %26, i32 %27)
  %29 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @bfa_trc(%struct.bfa_ioc_s* %29, i32 %30)
  %32 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @bfa_trc(%struct.bfa_ioc_s* %32, i32 %33)
  %35 = load i64, i64* @BFA_FALSE, align 8
  %36 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %6, align 8
  %37 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @bfa_ioc_sem_get(i32 %39)
  %41 = icmp eq i64 %35, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %4
  %43 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %6, align 8
  %44 = call i32 @bfa_trc(%struct.bfa_ioc_s* %43, i32 0)
  %45 = load i32, i32* @BFA_STATUS_FAILED, align 4
  store i32 %45, i32* %5, align 4
  br label %123

46:                                               ; preds = %4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %6, align 8
  %49 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @writel(i32 %47, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = udiv i64 %54, 4
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %14, align 4
  %57 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %6, align 8
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @bfa_trc(%struct.bfa_ioc_s* %57, i32 %58)
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %95, %46
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %60
  %65 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %6, align 8
  %66 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @bfa_mem_read(i32 %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @swab32(i32 %71)
  %73 = load i32*, i32** %15, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, 4
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @PSS_SMEM_PGOFF(i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %64
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %6, align 8
  %90 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @writel(i32 %88, i32 %92)
  br label %94

94:                                               ; preds = %85, %64
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %60

98:                                               ; preds = %60
  %99 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %6, align 8
  %100 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @PSS_SMEM_PGNUM(i32 %102, i32 0)
  %104 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %6, align 8
  %105 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @writel(i32 %103, i32 %107)
  %109 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %6, align 8
  %110 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @readl(i32 %112)
  %114 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %6, align 8
  %115 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @writel(i32 1, i32 %117)
  %119 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %6, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @bfa_trc(%struct.bfa_ioc_s* %119, i32 %120)
  %122 = load i32, i32* @BFA_STATUS_OK, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %98, %42
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @PSS_SMEM_PGNUM(i32, i32) #1

declare dso_local i32 @PSS_SMEM_PGOFF(i32) #1

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i32) #1

declare dso_local i64 @bfa_ioc_sem_get(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_mem_read(i32, i32) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
