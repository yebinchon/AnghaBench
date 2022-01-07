; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_irq_handler_check_irq1_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_irq_handler_check_irq1_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt9455_info = type { i32, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@RT9455_REG_IRQ1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to read IRQ1 register\0A\00", align 1
@RT9455_REG_MASK1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to read MASK1 register\0A\00", align 1
@F_TSDI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Thermal shutdown fault occurred\0A\00", align 1
@F_VINOVPI = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Overvoltage input occurred\0A\00", align 1
@F_BATAB = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Battery absence occurred\0A\00", align 1
@F_BATABM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to mask BATAB interrupt\0A\00", align 1
@RT9455_REG_MASK2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to read MASK2 register\0A\00", align 1
@F_CHTERMIM = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"Failed to unmask CHTERMI interrupt\0A\00", align 1
@F_CHRCHGIM = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [36 x i8] c"Failed to unmask CHRCHGI interrupt\0A\00", align 1
@system_power_efficient_wq = common dso_local global i32 0, align 4
@RT9455_BATT_PRESENCE_DELAY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt9455_info*, i32*, i32*)* @rt9455_irq_handler_check_irq1_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt9455_irq_handler_check_irq1_register(%struct.rt9455_info* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt9455_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rt9455_info* %0, %struct.rt9455_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.rt9455_info*, %struct.rt9455_info** %5, align 8
  %16 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.rt9455_info*, %struct.rt9455_info** %5, align 8
  %20 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RT9455_REG_IRQ1, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %8)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.device*, %struct.device** %11, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %4, align 4
  br label %163

30:                                               ; preds = %3
  %31 = load %struct.rt9455_info*, %struct.rt9455_info** %5, align 8
  %32 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RT9455_REG_MASK1, align 4
  %35 = call i32 @regmap_read(i32 %33, i32 %34, i32* %9)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.device*, %struct.device** %11, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %4, align 4
  br label %163

42:                                               ; preds = %30
  %43 = load i32, i32* %8, align 4
  %44 = load i64, i64* @F_TSDI, align 8
  %45 = call i32 @GET_MASK(i64 %44)
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.device*, %struct.device** %11, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %51

51:                                               ; preds = %48, %42
  %52 = load i32, i32* %8, align 4
  %53 = load i64, i64* @F_VINOVPI, align 8
  %54 = call i32 @GET_MASK(i64 %53)
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.device*, %struct.device** %11, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %60

60:                                               ; preds = %57, %51
  %61 = load i32, i32* %8, align 4
  %62 = load i64, i64* @F_BATAB, align 8
  %63 = call i32 @GET_MASK(i64 %62)
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %154

66:                                               ; preds = %60
  %67 = load %struct.device*, %struct.device** %11, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i64, i64* @F_BATABM, align 8
  %71 = call i32 @GET_MASK(i64 %70)
  %72 = and i32 %69, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %66
  %75 = load %struct.rt9455_info*, %struct.rt9455_info** %5, align 8
  %76 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @F_BATABM, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @regmap_field_write(i32 %80, i32 1)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %74
  %85 = load %struct.device*, %struct.device** %11, align 8
  %86 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %87 = load i32, i32* %14, align 4
  store i32 %87, i32* %4, align 4
  br label %163

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88, %66
  %90 = load %struct.rt9455_info*, %struct.rt9455_info** %5, align 8
  %91 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @RT9455_REG_MASK2, align 4
  %94 = call i32 @regmap_read(i32 %92, i32 %93, i32* %10)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load %struct.device*, %struct.device** %11, align 8
  %99 = call i32 @dev_err(%struct.device* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %4, align 4
  br label %163

101:                                              ; preds = %89
  %102 = load i32, i32* %10, align 4
  %103 = load i64, i64* @F_CHTERMIM, align 8
  %104 = call i32 @GET_MASK(i64 %103)
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %101
  %108 = load %struct.rt9455_info*, %struct.rt9455_info** %5, align 8
  %109 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @F_CHTERMIM, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @regmap_field_write(i32 %113, i32 0)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %107
  %118 = load %struct.device*, %struct.device** %11, align 8
  %119 = call i32 @dev_err(%struct.device* %118, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %4, align 4
  br label %163

121:                                              ; preds = %107
  br label %122

122:                                              ; preds = %121, %101
  %123 = load i32, i32* %10, align 4
  %124 = load i64, i64* @F_CHRCHGIM, align 8
  %125 = call i32 @GET_MASK(i64 %124)
  %126 = and i32 %123, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %122
  %129 = load %struct.rt9455_info*, %struct.rt9455_info** %5, align 8
  %130 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @F_CHRCHGIM, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @regmap_field_write(i32 %134, i32 0)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %128
  %139 = load %struct.device*, %struct.device** %11, align 8
  %140 = call i32 @dev_err(%struct.device* %139, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %141 = load i32, i32* %14, align 4
  store i32 %141, i32* %4, align 4
  br label %163

142:                                              ; preds = %128
  br label %143

143:                                              ; preds = %142, %122
  %144 = load %struct.rt9455_info*, %struct.rt9455_info** %5, align 8
  %145 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %144, i32 0, i32 1
  %146 = call i32 @cancel_delayed_work_sync(i32* %145)
  %147 = load i32, i32* @system_power_efficient_wq, align 4
  %148 = load %struct.rt9455_info*, %struct.rt9455_info** %5, align 8
  %149 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %148, i32 0, i32 0
  %150 = load i32, i32* @RT9455_BATT_PRESENCE_DELAY, align 4
  %151 = load i32, i32* @HZ, align 4
  %152 = mul nsw i32 %150, %151
  %153 = call i32 @queue_delayed_work(i32 %147, i32* %149, i32 %152)
  br label %154

154:                                              ; preds = %143, %60
  %155 = load i32, i32* %12, align 4
  %156 = load i32*, i32** %6, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i32, i32* %13, align 4
  %161 = load i32*, i32** %7, align 8
  store i32 %160, i32* %161, align 4
  br label %162

162:                                              ; preds = %159, %154
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %162, %138, %117, %97, %84, %38, %26
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @GET_MASK(i64) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
