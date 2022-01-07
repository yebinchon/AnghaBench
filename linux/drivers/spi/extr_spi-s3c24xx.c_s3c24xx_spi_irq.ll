; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c24xx.c_s3c24xx_spi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c24xx.c_s3c24xx_spi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_spi = type { i32, i32, i32, i64, i8**, i64, i32 }

@S3C2410_SPSTA = common dso_local global i64 0, align 8
@S3C2410_SPSTA_DCOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"data-collision\0A\00", align 1
@S3C2410_SPSTA_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"spi not ready for tx?\0A\00", align 1
@S3C2410_SPRDAT = common dso_local global i64 0, align 8
@S3C2410_SPTDAT = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s3c24xx_spi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_spi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s3c24xx_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.s3c24xx_spi*
  store %struct.s3c24xx_spi* %9, %struct.s3c24xx_spi** %5, align 8
  %10 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %11 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @S3C2410_SPSTA, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i8* @readb(i64 %14)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %18 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @S3C2410_SPSTA_DCOL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %26 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %30 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %29, i32 0, i32 2
  %31 = call i32 @complete(i32* %30)
  br label %127

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @S3C2410_SPSTA_READY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %39 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %43 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %42, i32 0, i32 2
  %44 = call i32 @complete(i32* %43)
  br label %127

45:                                               ; preds = %32
  %46 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %47 = call i32 @s3c24xx_spi_usingfiq(%struct.s3c24xx_spi* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %94, label %49

49:                                               ; preds = %45
  %50 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %51 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %55 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %54, i32 0, i32 4
  %56 = load i8**, i8*** %55, align 8
  %57 = icmp ne i8** %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %49
  %59 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %60 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @S3C2410_SPRDAT, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i8* @readb(i64 %63)
  %65 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %66 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %65, i32 0, i32 4
  %67 = load i8**, i8*** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  store i8* %64, i8** %70, align 8
  br label %71

71:                                               ; preds = %58, %49
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %76 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ult i32 %74, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %71
  %80 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @hw_txbyte(%struct.s3c24xx_spi* %80, i32 %81)
  %83 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %84 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @S3C2410_SPTDAT, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writeb(i32 %82, i64 %87)
  br label %93

89:                                               ; preds = %71
  %90 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %91 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %90, i32 0, i32 2
  %92 = call i32 @complete(i32* %91)
  br label %93

93:                                               ; preds = %89, %79
  br label %126

94:                                               ; preds = %45
  %95 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %96 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %99 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %101 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %100, i32 0, i32 5
  store i64 0, i64* %101, align 8
  %102 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %103 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %102, i32 0, i32 4
  %104 = load i8**, i8*** %103, align 8
  %105 = icmp ne i8** %104, null
  br i1 %105, label %106, label %122

106:                                              ; preds = %94
  %107 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %108 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @S3C2410_SPRDAT, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i8* @readb(i64 %111)
  %113 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %114 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %113, i32 0, i32 4
  %115 = load i8**, i8*** %114, align 8
  %116 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %117 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub i32 %118, 1
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %115, i64 %120
  store i8* %112, i8** %121, align 8
  br label %122

122:                                              ; preds = %106, %94
  %123 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %124 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %123, i32 0, i32 2
  %125 = call i32 @complete(i32* %124)
  br label %126

126:                                              ; preds = %122, %93
  br label %127

127:                                              ; preds = %126, %37, %24
  %128 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %128
}

declare dso_local i8* @readb(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @s3c24xx_spi_usingfiq(%struct.s3c24xx_spi*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @hw_txbyte(%struct.s3c24xx_spi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
