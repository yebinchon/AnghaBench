; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_imx-ocotp-scu.c_imx_scu_ocotp_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_imx-ocotp-scu.c_imx_scu_ocotp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocotp_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IMX8QXP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @imx_scu_ocotp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_scu_ocotp_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ocotp_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.ocotp_priv*
  store %struct.ocotp_priv* %19, %struct.ocotp_priv** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = lshr i32 %20, 2
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %7, align 4
  %23 = urem i32 %22, 4
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* %9, align 8
  %26 = add i64 %24, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32 @round_up(i32 %27, i32 4)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = ashr i32 %29, 2
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %33 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sub nsw i32 %36, %37
  %39 = icmp sgt i32 %31, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %4
  %41 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %42 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %40, %4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kzalloc(i32 %49, i32 %50)
  store i8* %51, i8** %15, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %116

57:                                               ; preds = %48
  %58 = load i8*, i8** %15, align 8
  %59 = bitcast i8* %58 to i32*
  store i32* %59, i32** %14, align 8
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %101, %57
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %63, %64
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %104

67:                                               ; preds = %61
  %68 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %69 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @IMX8QXP, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %67
  %76 = load i32, i32* %16, align 4
  %77 = icmp sgt i32 %76, 271
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32, i32* %16, align 4
  %80 = icmp slt i32 %79, 544
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32*, i32** %14, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %14, align 8
  store i32 0, i32* %82, align 4
  br label %101

84:                                               ; preds = %78, %75
  br label %85

85:                                               ; preds = %84, %67
  %86 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %87 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %16, align 4
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @imx_sc_misc_otp_fuse_read(i32 %88, i32 %89, i32* %90)
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = load i8*, i8** %15, align 8
  %96 = call i32 @kfree(i8* %95)
  %97 = load i32, i32* %17, align 4
  store i32 %97, i32* %5, align 4
  br label %116

98:                                               ; preds = %85
  %99 = load i32*, i32** %14, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %14, align 8
  br label %101

101:                                              ; preds = %98, %81
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %16, align 4
  br label %61

104:                                              ; preds = %61
  %105 = load i8*, i8** %8, align 8
  %106 = load i8*, i8** %15, align 8
  %107 = bitcast i8* %106 to i32*
  %108 = load i32, i32* %7, align 4
  %109 = urem i32 %108, 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i64, i64* %9, align 8
  %113 = call i32 @memcpy(i8* %105, i32* %111, i64 %112)
  %114 = load i8*, i8** %15, align 8
  %115 = call i32 @kfree(i8* %114)
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %104, %94, %54
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @imx_sc_misc_otp_fuse_read(i32, i32, i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
