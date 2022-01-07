; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1wm_data = type { i32, i32, i64, i64, i8*, i64 }

@DS1WM_INT_EN = common dso_local global i32 0, align 4
@DS1WM_INTEN_NOT_IAS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@DS1WM_INT = common dso_local global i32 0, align 4
@DS1WM_INT_PDR = common dso_local global i32 0, align 4
@DS1WM_INT_TSRE = common dso_local global i32 0, align 4
@DS1WM_INTEN_ETMT = common dso_local global i32 0, align 4
@DS1WM_INT_RBF = common dso_local global i32 0, align 4
@DS1WM_DATA = common dso_local global i32 0, align 4
@DS1WM_INTEN_ERBF = common dso_local global i32 0, align 4
@DS1WM_INT_PD = common dso_local global i32 0, align 4
@DS1WM_INTEN_EPD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ds1wm_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1wm_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ds1wm_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ds1wm_data*
  store %struct.ds1wm_data* %10, %struct.ds1wm_data** %6, align 8
  %11 = load %struct.ds1wm_data*, %struct.ds1wm_data** %6, align 8
  %12 = load i32, i32* @DS1WM_INT_EN, align 4
  %13 = call i8* @ds1wm_read_register(%struct.ds1wm_data* %11, i32 %12)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @DS1WM_INTEN_NOT_IAS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %108

21:                                               ; preds = %2
  %22 = load %struct.ds1wm_data*, %struct.ds1wm_data** %6, align 8
  %23 = load i32, i32* @DS1WM_INT_EN, align 4
  %24 = load %struct.ds1wm_data*, %struct.ds1wm_data** %6, align 8
  %25 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %22, i32 %23, i32 %26)
  %28 = load %struct.ds1wm_data*, %struct.ds1wm_data** %6, align 8
  %29 = load i32, i32* @DS1WM_INT, align 4
  %30 = call i8* @ds1wm_read_register(%struct.ds1wm_data* %28, i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @DS1WM_INT_PDR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 1
  %38 = load %struct.ds1wm_data*, %struct.ds1wm_data** %6, align 8
  %39 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @DS1WM_INT_TSRE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %21
  %45 = load %struct.ds1wm_data*, %struct.ds1wm_data** %6, align 8
  %46 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i32, i32* @DS1WM_INTEN_ETMT, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load %struct.ds1wm_data*, %struct.ds1wm_data** %6, align 8
  %55 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @complete(i64 %56)
  br label %58

58:                                               ; preds = %49, %44, %21
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @DS1WM_INT_RBF, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %58
  %64 = load %struct.ds1wm_data*, %struct.ds1wm_data** %6, align 8
  %65 = load i32, i32* @DS1WM_DATA, align 4
  %66 = call i8* @ds1wm_read_register(%struct.ds1wm_data* %64, i32 %65)
  %67 = load %struct.ds1wm_data*, %struct.ds1wm_data** %6, align 8
  %68 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* @DS1WM_INTEN_ERBF, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load %struct.ds1wm_data*, %struct.ds1wm_data** %6, align 8
  %74 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %63
  %78 = load %struct.ds1wm_data*, %struct.ds1wm_data** %6, align 8
  %79 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @complete(i64 %80)
  br label %82

82:                                               ; preds = %77, %63
  br label %83

83:                                               ; preds = %82, %58
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @DS1WM_INT_PD, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = load %struct.ds1wm_data*, %struct.ds1wm_data** %6, align 8
  %90 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load i32, i32* @DS1WM_INTEN_EPD, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %8, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %8, align 4
  %98 = load %struct.ds1wm_data*, %struct.ds1wm_data** %6, align 8
  %99 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @complete(i64 %100)
  br label %102

102:                                              ; preds = %93, %88, %83
  %103 = load %struct.ds1wm_data*, %struct.ds1wm_data** %6, align 8
  %104 = load i32, i32* @DS1WM_INT_EN, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %103, i32 %104, i32 %105)
  %107 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %102, %19
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i8* @ds1wm_read_register(%struct.ds1wm_data*, i32) #1

declare dso_local i32 @ds1wm_write_register(%struct.ds1wm_data*, i32, i32) #1

declare dso_local i32 @complete(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
