; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_mxs-ocotp.c_mxs_ocotp_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_mxs-ocotp.c_mxs_ocotp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_ocotp = type { i32, i64 }

@BM_OCOTP_CTRL_ERROR = common dso_local global i32 0, align 4
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@BM_OCOTP_CTRL_RD_BANK_OPEN = common dso_local global i32 0, align 4
@STMP_OFFSET_REG_SET = common dso_local global i64 0, align 8
@OCOTP_DATA_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @mxs_ocotp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_ocotp_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mxs_ocotp*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.mxs_ocotp*
  store %struct.mxs_ocotp* %14, %struct.mxs_ocotp** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %11, align 8
  %17 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %10, align 8
  %18 = getelementptr inbounds %struct.mxs_ocotp, %struct.mxs_ocotp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @clk_enable(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %98

25:                                               ; preds = %4
  %26 = load i32, i32* @BM_OCOTP_CTRL_ERROR, align 4
  %27 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %10, align 8
  %28 = getelementptr inbounds %struct.mxs_ocotp, %struct.mxs_ocotp* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %10, align 8
  %34 = call i32 @mxs_ocotp_wait(%struct.mxs_ocotp* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %92

38:                                               ; preds = %25
  %39 = load i32, i32* @BM_OCOTP_CTRL_RD_BANK_OPEN, align 4
  %40 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %10, align 8
  %41 = getelementptr inbounds %struct.mxs_ocotp, %struct.mxs_ocotp* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = call i32 @udelay(i32 1)
  %47 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %10, align 8
  %48 = call i32 @mxs_ocotp_wait(%struct.mxs_ocotp* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %84

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %78, %52
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @OCOTP_DATA_OFFSET, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = urem i32 %61, 16
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %56
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %11, align 8
  store i32 0, i32* %65, align 4
  br label %78

67:                                               ; preds = %60
  %68 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %10, align 8
  %69 = getelementptr inbounds %struct.mxs_ocotp, %struct.mxs_ocotp* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = call i64 @readl(i64 %73)
  %75 = trunc i64 %74 to i32
  %76 = load i32*, i32** %11, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %11, align 8
  store i32 %75, i32* %76, align 4
  br label %78

78:                                               ; preds = %67, %64
  %79 = load i64, i64* %9, align 8
  %80 = sub i64 %79, 4
  store i64 %80, i64* %9, align 8
  %81 = load i32, i32* %7, align 4
  %82 = add i32 %81, 4
  store i32 %82, i32* %7, align 4
  br label %53

83:                                               ; preds = %53
  br label %84

84:                                               ; preds = %83, %51
  %85 = load i32, i32* @BM_OCOTP_CTRL_RD_BANK_OPEN, align 4
  %86 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %10, align 8
  %87 = getelementptr inbounds %struct.mxs_ocotp, %struct.mxs_ocotp* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  br label %92

92:                                               ; preds = %84, %37
  %93 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %10, align 8
  %94 = getelementptr inbounds %struct.mxs_ocotp, %struct.mxs_ocotp* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @clk_disable(i32 %95)
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %92, %23
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mxs_ocotp_wait(%struct.mxs_ocotp*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
