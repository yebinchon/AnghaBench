; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_ssp_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_ssp_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32, i32, i32 (%struct.driver_data*)*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@SSSR = common dso_local global i32 0, align 4
@SSCR1 = common dso_local global i32 0, align 4
@SSCR1_TIE = common dso_local global i32 0, align 4
@SSSR_TFS = common dso_local global i32 0, align 4
@SSCR1_TINTE = common dso_local global i32 0, align 4
@SSSR_TINT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ssp_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssp_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.driver_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.driver_data*
  store %struct.driver_data* %11, %struct.driver_data** %6, align 8
  %12 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %13 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %16 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %15, i32 0, i32 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i64 @pm_runtime_suspended(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %91

23:                                               ; preds = %2
  %24 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %25 = load i32, i32* @SSSR, align 4
  %26 = call i32 @pxa2xx_spi_read(%struct.driver_data* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %91

31:                                               ; preds = %23
  %32 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %33 = load i32, i32* @SSCR1, align 4
  %34 = call i32 @pxa2xx_spi_read(%struct.driver_data* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @SSCR1_TIE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @SSSR_TFS, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %39, %31
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @SSCR1_TINTE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @SSSR_TINT, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @IRQ_NONE, align 4
  store i32 %60, i32* %3, align 4
  br label %91

61:                                               ; preds = %54
  %62 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %63 = load i32, i32* @SSCR1, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %66 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %64, %68
  %70 = call i32 @pxa2xx_spi_write(%struct.driver_data* %62, i32 %63, i32 %69)
  %71 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %72 = load i32, i32* @SSCR1, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @pxa2xx_spi_write(%struct.driver_data* %71, i32 %72, i32 %73)
  %75 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %76 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %61
  %82 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %83 = call i32 @handle_bad_msg(%struct.driver_data* %82)
  %84 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %84, i32* %3, align 4
  br label %91

85:                                               ; preds = %61
  %86 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %87 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %86, i32 0, i32 2
  %88 = load i32 (%struct.driver_data*)*, i32 (%struct.driver_data*)** %87, align 8
  %89 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %90 = call i32 %88(%struct.driver_data* %89)
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %85, %81, %59, %29, %21
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @pm_runtime_suspended(i32*) #1

declare dso_local i32 @pxa2xx_spi_read(%struct.driver_data*, i32) #1

declare dso_local i32 @pxa2xx_spi_write(%struct.driver_data*, i32, i32) #1

declare dso_local i32 @handle_bad_msg(%struct.driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
