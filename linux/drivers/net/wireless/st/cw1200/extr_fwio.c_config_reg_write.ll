; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_fwio.c_config_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_fwio.c_config_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32 }

@ST90TDS_CONFIG_REG_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, i32)* @config_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_reg_write(%struct.cw1200_common* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %7 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %15 [
    i32 128, label %9
    i32 129, label %14
    i32 130, label %14
  ]

9:                                                ; preds = %2
  %10 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %11 = load i32, i32* @ST90TDS_CONFIG_REG_ID, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @cw1200_reg_write_16(%struct.cw1200_common* %10, i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  br label %20

14:                                               ; preds = %2, %2
  br label %15

15:                                               ; preds = %2, %14
  %16 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %17 = load i32, i32* @ST90TDS_CONFIG_REG_ID, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @cw1200_reg_write_32(%struct.cw1200_common* %16, i32 %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %15, %9
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @cw1200_reg_write_16(%struct.cw1200_common*, i32, i32) #1

declare dso_local i32 @cw1200_reg_write_32(%struct.cw1200_common*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
