; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mpc624.c_mpc624_ai_get_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mpc624.c_mpc624_ai_get_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64, %struct.mpc624_private* }
%struct.mpc624_private = type { i32 }
%struct.comedi_subdevice = type { i32 }

@MPC624_ADC = common dso_local global i64 0, align 8
@MPC624_ADSDI = common dso_local global i32 0, align 4
@MPC624_ADSCK = common dso_local global i32 0, align 4
@MPC624_ADSDO = common dso_local global i32 0, align 4
@MPC624_EOC_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"EOC bit is set!\00", align 1
@MPC624_DMY_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"DMY bit is set!\00", align 1
@MPC624_SGN_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @mpc624_ai_get_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc624_ai_get_sample(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.mpc624_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 2
  %12 = load %struct.mpc624_private*, %struct.mpc624_private** %11, align 8
  store %struct.mpc624_private* %12, %struct.mpc624_private** %5, align 8
  %13 = load %struct.mpc624_private*, %struct.mpc624_private** %5, align 8
  %14 = getelementptr inbounds %struct.mpc624_private, %struct.mpc624_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = call i32 @udelay(i32 1)
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %71, %2
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 32
  br i1 %19, label %20, label %74

20:                                               ; preds = %17
  %21 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MPC624_ADC, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i32 0, i64 %25)
  %27 = call i32 @udelay(i32 1)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @BIT(i32 31)
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* @MPC624_ADSDI, align 4
  br label %35

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MPC624_ADC, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb(i32 %37, i64 %42)
  %44 = call i32 @udelay(i32 1)
  %45 = load i32, i32* @MPC624_ADSCK, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %49 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MPC624_ADC, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @outb(i32 %47, i64 %52)
  %54 = call i32 @udelay(i32 1)
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 %55, 1
  store i32 %56, i32* %7, align 4
  %57 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MPC624_ADC, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @inb(i64 %61)
  %63 = load i32, i32* @MPC624_ADSDO, align 4
  %64 = and i32 %62, %63
  %65 = ashr i32 %64, 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = call i32 @udelay(i32 1)
  %69 = load i32, i32* %6, align 4
  %70 = shl i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %35
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %17

74:                                               ; preds = %17
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @MPC624_EOC_BIT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %81 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dev_dbg(i32 %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @MPC624_DMY_BIT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %91 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dev_dbg(i32 %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %89, %84
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @MPC624_SGN_BIT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* %7, align 4
  %101 = and i32 %100, 1073741823
  store i32 %101, i32* %7, align 4
  br label %118

102:                                              ; preds = %94
  %103 = load i32, i32* @MPC624_SGN_BIT, align 4
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = xor i32 %106, -1
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* @MPC624_EOC_BIT, align 4
  %111 = load i32, i32* @MPC624_DMY_BIT, align 4
  %112 = or i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %7, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = sub i32 536870912, %116
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %102, %99
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
