; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/sunxi/extr_sunxi_sram.c_sunxi_sram_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/sunxi/extr_sunxi_sram.c_sunxi_sram_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sunxi_sram_data = type { i32 }
%struct.sunxi_sram_desc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@sram_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sunxi_sram_release(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sunxi_sram_data*, align 8
  %5 = alloca %struct.sunxi_sram_desc*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = icmp ne %struct.device* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %34

16:                                               ; preds = %8
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.sunxi_sram_data* @sunxi_sram_of_parse(i32 %19, i32* null)
  store %struct.sunxi_sram_data* %20, %struct.sunxi_sram_data** %4, align 8
  %21 = load %struct.sunxi_sram_data*, %struct.sunxi_sram_data** %4, align 8
  %22 = call i64 @IS_ERR(%struct.sunxi_sram_data* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %34

27:                                               ; preds = %16
  %28 = load %struct.sunxi_sram_data*, %struct.sunxi_sram_data** %4, align 8
  %29 = call %struct.sunxi_sram_desc* @to_sram_desc(%struct.sunxi_sram_data* %28)
  store %struct.sunxi_sram_desc* %29, %struct.sunxi_sram_desc** %5, align 8
  %30 = call i32 @spin_lock(i32* @sram_lock)
  %31 = load %struct.sunxi_sram_desc*, %struct.sunxi_sram_desc** %5, align 8
  %32 = getelementptr inbounds %struct.sunxi_sram_desc, %struct.sunxi_sram_desc* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = call i32 @spin_unlock(i32* @sram_lock)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %27, %24, %13
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.sunxi_sram_data* @sunxi_sram_of_parse(i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.sunxi_sram_data*) #1

declare dso_local %struct.sunxi_sram_desc* @to_sram_desc(%struct.sunxi_sram_data*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
