; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_imx_rproc.c_imx_rproc_da_to_sys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_imx_rproc.c_imx_rproc_da_to_sys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_rproc = type { i32, %struct.imx_rproc_dcfg* }
%struct.imx_rproc_dcfg = type { i32, %struct.imx_rproc_att* }
%struct.imx_rproc_att = type { i64, i64, i64 }

@.str = private unnamed_addr constant [44 x i8] c"Translation failed: da = 0x%llx len = 0x%x\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_rproc*, i64, i32, i64*)* @imx_rproc_da_to_sys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_rproc_da_to_sys(%struct.imx_rproc* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.imx_rproc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.imx_rproc_dcfg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.imx_rproc_att*, align 8
  %13 = alloca i32, align 4
  store %struct.imx_rproc* %0, %struct.imx_rproc** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %14 = load %struct.imx_rproc*, %struct.imx_rproc** %6, align 8
  %15 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %14, i32 0, i32 1
  %16 = load %struct.imx_rproc_dcfg*, %struct.imx_rproc_dcfg** %15, align 8
  store %struct.imx_rproc_dcfg* %16, %struct.imx_rproc_dcfg** %10, align 8
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %63, %4
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.imx_rproc_dcfg*, %struct.imx_rproc_dcfg** %10, align 8
  %20 = getelementptr inbounds %struct.imx_rproc_dcfg, %struct.imx_rproc_dcfg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %17
  %24 = load %struct.imx_rproc_dcfg*, %struct.imx_rproc_dcfg** %10, align 8
  %25 = getelementptr inbounds %struct.imx_rproc_dcfg, %struct.imx_rproc_dcfg* %24, i32 0, i32 1
  %26 = load %struct.imx_rproc_att*, %struct.imx_rproc_att** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.imx_rproc_att, %struct.imx_rproc_att* %26, i64 %28
  store %struct.imx_rproc_att* %29, %struct.imx_rproc_att** %12, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.imx_rproc_att*, %struct.imx_rproc_att** %12, align 8
  %32 = getelementptr inbounds %struct.imx_rproc_att, %struct.imx_rproc_att* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %23
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load %struct.imx_rproc_att*, %struct.imx_rproc_att** %12, align 8
  %41 = getelementptr inbounds %struct.imx_rproc_att, %struct.imx_rproc_att* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.imx_rproc_att*, %struct.imx_rproc_att** %12, align 8
  %44 = getelementptr inbounds %struct.imx_rproc_att, %struct.imx_rproc_att* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = icmp slt i64 %39, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %35
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.imx_rproc_att*, %struct.imx_rproc_att** %12, align 8
  %51 = getelementptr inbounds %struct.imx_rproc_att, %struct.imx_rproc_att* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %49, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %13, align 4
  %55 = load %struct.imx_rproc_att*, %struct.imx_rproc_att** %12, align 8
  %56 = getelementptr inbounds %struct.imx_rproc_att, %struct.imx_rproc_att* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load i64*, i64** %9, align 8
  store i64 %60, i64* %61, align 8
  store i32 0, i32* %5, align 4
  br label %75

62:                                               ; preds = %35, %23
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %17

66:                                               ; preds = %17
  %67 = load %struct.imx_rproc*, %struct.imx_rproc** %6, align 8
  %68 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @dev_warn(i32 %69, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %70, i32 %71)
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %66, %48
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @dev_warn(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
