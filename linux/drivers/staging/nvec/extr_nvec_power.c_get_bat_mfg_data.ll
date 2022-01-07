; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_power.c_get_bat_mfg_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_power.c_get_bat_mfg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvec_power = type { i32 }

@NVEC_BAT = common dso_local global i8 0, align 1
@SLOT_STATUS = common dso_local global i8 0, align 1
@bat_init = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvec_power*)* @get_bat_mfg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_bat_mfg_data(%struct.nvec_power* %0) #0 {
  %2 = alloca %struct.nvec_power*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i8], align 1
  store %struct.nvec_power* %0, %struct.nvec_power** %2, align 8
  %5 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %6 = load i8, i8* @NVEC_BAT, align 1
  store i8 %6, i8* %5, align 1
  %7 = getelementptr inbounds i8, i8* %5, i64 1
  %8 = load i8, i8* @SLOT_STATUS, align 1
  store i8 %8, i8* %7, align 1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i8*, i8** @bat_init, align 8
  %12 = call i32 @ARRAY_SIZE(i8* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load i8*, i8** @bat_init, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  store i8 %19, i8* %20, align 1
  %21 = load %struct.nvec_power*, %struct.nvec_power** %2, align 8
  %22 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %25 = call i32 @nvec_write_async(i32 %23, i8* %24, i32 2)
  br label %26

26:                                               ; preds = %14
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %9

29:                                               ; preds = %9
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @nvec_write_async(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
