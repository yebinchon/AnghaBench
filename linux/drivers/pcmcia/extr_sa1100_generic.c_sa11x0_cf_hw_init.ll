; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa1100_generic.c_sa11x0_cf_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa1100_generic.c_sa11x0_cf_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { %struct.TYPE_8__*, %struct.TYPE_7__, i8*, i8*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"bus-enable\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"no Vcc regulator provided, ignoring Vcc controls\0A\00", align 1
@sa11x0_cf_gpio_names = common dso_local global i8** null, align 8
@GPIOD_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*)* @sa11x0_cf_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa11x0_cf_hw_init(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  %6 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %7 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %13 = call i8* @devm_gpiod_get(%struct.device* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %15 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %17 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %16, i32 0, i32 3
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @IS_ERR(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %23 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @PTR_ERR(i8* %24)
  store i32 %25, i32* %2, align 4
  br label %128

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %29 = call i8* @devm_gpiod_get_optional(%struct.device* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %31 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %33 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %39 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @PTR_ERR(i8* %40)
  store i32 %41, i32* %2, align 4
  br label %128

42:                                               ; preds = %26
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i8* @devm_regulator_get_optional(%struct.device* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %46 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %49 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @IS_ERR(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %42
  %55 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %56 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @PTR_ERR(i8* %58)
  store i32 %59, i32* %2, align 4
  br label %128

60:                                               ; preds = %42
  %61 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %62 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = call i32 @dev_warn(%struct.device* %67, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %60
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %124, %69
  %71 = load i32, i32* %5, align 4
  %72 = load i8**, i8*** @sa11x0_cf_gpio_names, align 8
  %73 = call i32 @ARRAY_SIZE(i8** %72)
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %127

75:                                               ; preds = %70
  %76 = load i8**, i8*** @sa11x0_cf_gpio_names, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %82 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i8* %80, i8** %87, align 8
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load i8**, i8*** @sa11x0_cf_gpio_names, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* @GPIOD_IN, align 4
  %95 = call i8* @devm_gpiod_get_optional(%struct.device* %88, i8* %93, i32 %94)
  %96 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %97 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  store i8* %95, i8** %102, align 8
  %103 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %104 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @IS_ERR(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %75
  %114 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %115 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @PTR_ERR(i8* %121)
  store i32 %122, i32* %2, align 4
  br label %128

123:                                              ; preds = %75
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %70

127:                                              ; preds = %70
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %113, %54, %37, %21
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i8* @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
