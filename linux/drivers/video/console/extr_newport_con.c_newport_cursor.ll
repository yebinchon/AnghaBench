; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_newport_con.c_newport_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_newport_con.c_newport_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32 }

@npregs = common dso_local global i32 0, align 4
@VC2_IREG_CONTROL = common dso_local global i32 0, align 4
@VC2_CTRL_ECDISP = common dso_local global i16 0, align 2
@xcurs_correction = common dso_local global i32 0, align 4
@VC2_IREG_CURSX = common dso_local global i32 0, align 4
@VC2_IREG_CURSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @newport_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @newport_cursor(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %65 [
    i32 129, label %9
    i32 128, label %22
    i32 130, label %22
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @npregs, align 4
  %11 = load i32, i32* @VC2_IREG_CONTROL, align 4
  %12 = call zeroext i16 @newport_vc2_get(i32 %10, i32 %11)
  store i16 %12, i16* %5, align 2
  %13 = load i32, i32* @npregs, align 4
  %14 = load i32, i32* @VC2_IREG_CONTROL, align 4
  %15 = load i16, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* @VC2_CTRL_ECDISP, align 2
  %18 = zext i16 %17 to i32
  %19 = xor i32 %18, -1
  %20 = and i32 %16, %19
  %21 = call i32 @newport_vc2_set(i32 %13, i32 %14, i32 %20)
  br label %65

22:                                               ; preds = %2, %2
  %23 = load i32, i32* @npregs, align 4
  %24 = load i32, i32* @VC2_IREG_CONTROL, align 4
  %25 = call zeroext i16 @newport_vc2_get(i32 %23, i32 %24)
  store i16 %25, i16* %5, align 2
  %26 = load i32, i32* @npregs, align 4
  %27 = load i32, i32* @VC2_IREG_CONTROL, align 4
  %28 = load i16, i16* %5, align 2
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* @VC2_CTRL_ECDISP, align 2
  %31 = zext i16 %30 to i32
  %32 = or i32 %29, %31
  %33 = call i32 @newport_vc2_set(i32 %26, i32 %27, i32 %32)
  %34 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %35 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %44 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %42, %45
  %47 = shl i32 %46, 4
  %48 = add nsw i32 %47, 31
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %51 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = srem i32 %49, %52
  %54 = shl i32 %53, 3
  %55 = load i32, i32* @xcurs_correction, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @npregs, align 4
  %58 = load i32, i32* @VC2_IREG_CURSX, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @newport_vc2_set(i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* @npregs, align 4
  %62 = load i32, i32* @VC2_IREG_CURSY, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @newport_vc2_set(i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %22, %2, %9
  ret void
}

declare dso_local zeroext i16 @newport_vc2_get(i32, i32) #1

declare dso_local i32 @newport_vc2_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
