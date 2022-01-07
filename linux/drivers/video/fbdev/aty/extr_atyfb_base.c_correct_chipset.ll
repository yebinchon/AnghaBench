; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_correct_chipset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_correct_chipset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i32, i32, i32, i32, i8* }
%struct.atyfb_par = type { i64, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@aty_chips = common dso_local global %struct.TYPE_5__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@CNFG_CHIP_ID = common dso_local global i32 0, align 4
@CFG_CHIP_TYPE = common dso_local global i32 0, align 4
@CFG_CHIP_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s [0x%04x rev 0x%02x]\0A\00", align 1
@ATI_CHIP_264GTB = common dso_local global i8* null, align 8
@ATI_CHIP_264VT = common dso_local global i8* null, align 8
@ATI_CHIP_264VT3 = common dso_local global i8* null, align 8
@ATI_CHIP_264VTB = common dso_local global i8* null, align 8
@M64F_MAGIC_POSTDIV = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atyfb_par*)* @correct_chipset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @correct_chipset(%struct.atyfb_par* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atyfb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.atyfb_par* %0, %struct.atyfb_par** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aty_chips, align 8
  %10 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %9)
  %11 = trunc i64 %10 to i32
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %8, align 4
  br label %13

13:                                               ; preds = %29, %1
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %18 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aty_chips, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %19, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %32

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %8, align 4
  br label %13

32:                                               ; preds = %27, %13
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %107

38:                                               ; preds = %32
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aty_chips, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %7, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aty_chips, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %52 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aty_chips, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %61 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aty_chips, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %70 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aty_chips, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %79 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aty_chips, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 6
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %88 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* @CNFG_CHIP_ID, align 4
  %90 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %91 = call i32 @aty_ld_le32(i32 %89, %struct.atyfb_par* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @CFG_CHIP_TYPE, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @CFG_CHIP_REV, align 4
  %97 = and i32 %95, %96
  %98 = ashr i32 %97, 24
  store i32 %98, i32* %4, align 4
  %99 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %100 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  switch i64 %101, label %102 [
  ]

102:                                              ; preds = %38
  %103 = load i8*, i8** %7, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @PRINTKI(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %103, i32 %104, i32 %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %102, %35
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @aty_ld_le32(i32, %struct.atyfb_par*) #1

declare dso_local i32 @PRINTKI(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
