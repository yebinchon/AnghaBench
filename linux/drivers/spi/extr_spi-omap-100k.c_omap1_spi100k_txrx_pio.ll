; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap-100k.c_omap1_spi100k_txrx_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap-100k.c_omap1_spi100k_txrx_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.omap1_spi100k_cs* }
%struct.omap1_spi100k_cs = type { i32 }
%struct.spi_transfer = type { i32, i8**, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @omap1_spi100k_txrx_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap1_spi100k_txrx_pio(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.omap1_spi100k_cs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 1
  %17 = load %struct.omap1_spi100k_cs*, %struct.omap1_spi100k_cs** %16, align 8
  store %struct.omap1_spi100k_cs* %17, %struct.omap1_spi100k_cs** %5, align 8
  %18 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.omap1_spi100k_cs*, %struct.omap1_spi100k_cs** %5, align 8
  %23 = getelementptr inbounds %struct.omap1_spi100k_cs, %struct.omap1_spi100k_cs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sle i32 %25, 8
  br i1 %26, label %27, label %68

27:                                               ; preds = %2
  %28 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  store i8** %30, i8*** %9, align 8
  %31 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %31, i32 0, i32 2
  %33 = load i8**, i8*** %32, align 8
  store i8** %33, i8*** %10, align 8
  br label %34

34:                                               ; preds = %64, %27
  %35 = load i32, i32* %7, align 4
  %36 = sub i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %38 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %37, i32 0, i32 2
  %39 = load i8**, i8*** %38, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i8**, i8*** %10, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %47, i8*** %10, align 8
  %48 = load i8*, i8** %46, align 8
  %49 = call i32 @spi100k_write_data(i32 %44, i32 %45, i8* %48)
  br label %50

50:                                               ; preds = %41, %34
  %51 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %52 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = icmp ne i8** %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i8* @spi100k_read_data(i32 %58, i32 %59)
  %61 = load i8**, i8*** %9, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %9, align 8
  store i8* %60, i8** %61, align 8
  br label %63

63:                                               ; preds = %55, %50
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %34, label %67

67:                                               ; preds = %64
  br label %156

68:                                               ; preds = %2
  %69 = load i32, i32* %8, align 4
  %70 = icmp sle i32 %69, 16
  br i1 %70, label %71, label %112

71:                                               ; preds = %68
  %72 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %73 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %72, i32 0, i32 1
  %74 = load i8**, i8*** %73, align 8
  store i8** %74, i8*** %11, align 8
  %75 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %76 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %75, i32 0, i32 2
  %77 = load i8**, i8*** %76, align 8
  store i8** %77, i8*** %12, align 8
  br label %78

78:                                               ; preds = %108, %71
  %79 = load i32, i32* %7, align 4
  %80 = sub i32 %79, 2
  store i32 %80, i32* %7, align 4
  %81 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %82 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %81, i32 0, i32 2
  %83 = load i8**, i8*** %82, align 8
  %84 = icmp ne i8** %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %78
  %86 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %87 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i8**, i8*** %12, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i32 1
  store i8** %91, i8*** %12, align 8
  %92 = load i8*, i8** %90, align 8
  %93 = call i32 @spi100k_write_data(i32 %88, i32 %89, i8* %92)
  br label %94

94:                                               ; preds = %85, %78
  %95 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %96 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %95, i32 0, i32 1
  %97 = load i8**, i8*** %96, align 8
  %98 = icmp ne i8** %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %101 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i8* @spi100k_read_data(i32 %102, i32 %103)
  %105 = load i8**, i8*** %11, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i32 1
  store i8** %106, i8*** %11, align 8
  store i8* %104, i8** %105, align 8
  br label %107

107:                                              ; preds = %99, %94
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %78, label %111

111:                                              ; preds = %108
  br label %155

112:                                              ; preds = %68
  %113 = load i32, i32* %8, align 4
  %114 = icmp sle i32 %113, 32
  br i1 %114, label %115, label %154

115:                                              ; preds = %112
  %116 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %117 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %116, i32 0, i32 1
  %118 = load i8**, i8*** %117, align 8
  store i8** %118, i8*** %13, align 8
  %119 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %120 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %119, i32 0, i32 2
  %121 = load i8**, i8*** %120, align 8
  store i8** %121, i8*** %14, align 8
  br label %122

122:                                              ; preds = %150, %115
  %123 = load i32, i32* %7, align 4
  %124 = sub i32 %123, 4
  store i32 %124, i32* %7, align 4
  %125 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %126 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %125, i32 0, i32 2
  %127 = load i8**, i8*** %126, align 8
  %128 = icmp ne i8** %127, null
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %131 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i8**, i8*** %14, align 8
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @spi100k_write_data(i32 %132, i32 %133, i8* %135)
  br label %137

137:                                              ; preds = %129, %122
  %138 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %139 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %138, i32 0, i32 1
  %140 = load i8**, i8*** %139, align 8
  %141 = icmp ne i8** %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %144 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i8* @spi100k_read_data(i32 %145, i32 %146)
  %148 = load i8**, i8*** %13, align 8
  store i8* %147, i8** %148, align 8
  br label %149

149:                                              ; preds = %142, %137
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %122, label %153

153:                                              ; preds = %150
  br label %154

154:                                              ; preds = %153, %112
  br label %155

155:                                              ; preds = %154, %111
  br label %156

156:                                              ; preds = %155, %67
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %7, align 4
  %159 = sub i32 %157, %158
  ret i32 %159
}

declare dso_local i32 @spi100k_write_data(i32, i32, i8*) #1

declare dso_local i8* @spi100k_read_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
